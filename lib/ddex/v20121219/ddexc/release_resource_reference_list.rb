#
# DO NOT MODIFY
# Automatically generated by jaxb2ruby v0.0.1 (https://github.com/sshaw/jaxb2ruby)
#

require "roxml"
require "ddex/element"

require "ddex/v20121219/ddexc/release_resource_reference"

module DDEX module V20121219 module DDEXC

class ReleaseResourceReferenceList < Element
  include ROXML


  xml_name "ReleaseResourceReferenceList"

      
      xml_accessor :release_resource_references, :as => [DDEX::V20121219::DDEXC::ReleaseResourceReference], :from => "ReleaseResourceReference", :required => true



  
end

end end end