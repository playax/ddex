require "active_support/core_ext/module/attribute_accessors"
require "nokogiri"

module DDEX
  module DSR
    autoload :V32,  "ddex/dsr/v32"

    ROOT_ELEMENT = "SalesReportToSocietyMessage".freeze
    VERSION_ATTR = "MessageSchemaVersionId".freeze

    DEFAULT_CONFIG  = {
      "V32" => {
        :schema => "http://ddex.net/xml/2010/dsr-main/32/dsr-main.xsd",
        :version => "3.2",
        :message_schema_version_id => "dsr/32"
      }
    }.freeze

    mattr_reader :config
    @@config = DEFAULT_CONFIG

    def self.supported_versions
      config.values.map { |cfg| cfg[:version].dup }.sort
    end

    def self.supports?(version)
      version = version.downcase.strip
      config.any? { |name,cfg| name == version || cfg[:version] == version || cfg[:message_schema_version_id] == version }
    end

    # options[:validate] ???
    def self.read(xml, options = nil)
      options ||= {}
      raise ArgumentError, "options must be a Hash" unless options.is_a?(Hash)

      doc   = parse(xml, options)
      ver   = options[:version] || doc.root[VERSION_ATTR]
      klass = load_version(ver)

      begin
        klass.from_xml(doc)
      rescue NoMethodError => e         # Yes, fo real... this is from ROXML
        raise unless e.name == :root    # It's legit
        raise XMLLoadError, "XML is not well-formed"
      # This is a subclass of Exception(!) so we must name it
      rescue ROXML::RequiredElementMissing => e
        raise XMLLoadError, "missing required element: #{e}"
      end
    end

    def self.write(object, options = nil)
      raise ArgumentError, "not a DDEX object" unless object.is_a?(DDEX::Element)

      options ||= {}
      raise ArgumentError, "options must be a Hash" unless options.is_a?(Hash)

      xmlopts = options.reject { |k, _| k == :schema }

      node = object.to_xml
      return node.to_xml(xmlopts) unless object.respond_to?(:message_schema_version_id) # Is it the root element?

      schema = schema_location(object, options[:schema])
      if schema
        node.add_namespace_definition(XML_SCHEMA_INSTANCE_PREFIX, XML_SCHEMA_INSTANCE_NS)
        node[XML_SCHEMA_INSTANCE_ATTR] = schema
      end

      doc = Nokogiri::XML::Document.new
      doc.root = node
      doc.to_xml(xmlopts)
    end

    private
    def self.schema_location(object, schema)
      # extract version from namespace e.g., DDEX::DSR::V32::SalesReportToSocietyMessage
      ver = object.class.name.split("::")[-2]
      return unless schema or config.include?(ver)

      # Check if it's "NS schema"
      if schema && schema.strip.include?(" ")
        schema
      else
        sprintf "%s %s", object.class.ns[1], schema || config[ver][:schema]
      end
    end

    def self.parse(xml, options)
      xml = File.read(xml) if xml.is_a?(String) and xml !~ /\A\s*<[?\w]/
      Nokogiri::XML(xml, nil, options[:encoding]) { |cfg| cfg.strict }
    # ArgumentError means there was a problem with types, expected an int, got a str
    rescue IOError, SystemCallError, ArgumentError => e
      raise XMLLoadError, "cannot load XML: #{e}"
    rescue Nokogiri::XML::SyntaxError => e
      raise XMLLoadError, "XML parsing error: #{e}"
    end

    def self.raise_unknown_version(version)
      message = "DSR version %s" % (version ? "'#{version}'" : "attribute missing")
      raise UnknownVersionError, message
    end

    def self.load_version(version)
      raise_unknown_version(version) if version.nil?

      # Some normalization
      v = version.strip.gsub(%r{//+}, "/").gsub(%r{\A/|/\Z}, "")
      klass, _ = config.find { |name, cfg| cfg[:message_schema_version_id] == v }
      raise_unknown_version(version) unless klass

      # >= 2.0 allows for one call
      DDEX::DSR.const_get(klass).const_get(ROOT_ELEMENT)
    rescue LoadError, NameError => e
      raise_unknown_version(version)
    end
  end
end
