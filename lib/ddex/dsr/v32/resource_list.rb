#
# Auto-generated by jaxb2ruby v0.0.1 on 2015-04-29 13:14:02 -0300
# https://github.com/sshaw/jaxb2ruby
#
#
# DO NOT MODIFY
# Automatically generated by jaxb2ruby v0.0.1 (https://github.com/sshaw/jaxb2ruby)
#

require "roxml"
require "ddex/element"

require "net/ddex/xml/v2010/dsr_main/v32/image"
require "net/ddex/xml/v2010/dsr_main/v32/midi"
require "net/ddex/xml/v2010/dsr_main/v32/sheet_music"
require "net/ddex/xml/v2010/dsr_main/v32/software"
require "net/ddex/xml/v2010/dsr_main/v32/sound_recording"
require "net/ddex/xml/v2010/dsr_main/v32/text"
require "net/ddex/xml/v2010/dsr_main/v32/user_defined_resource"
require "net/ddex/xml/v2010/dsr_main/v32/video"

module Net module Ddex module Xml module V2010 module DsrMain module V32  # :nodoc: all

class Net::Ddex::Xml::V2010::DsrMain::V32::ResourceList < Element
  include ROXML


  xml_name "ns1:ResourceList"

      xml_accessor :sound_recordings, :as => [Net::Ddex::Xml::V2010::DsrMain::V32::SoundRecording], :from => "SoundRecording", :required => false
      xml_accessor :midis, :as => [Net::Ddex::Xml::V2010::DsrMain::V32::MIDI], :from => "MIDI", :required => false
      xml_accessor :videos, :as => [Net::Ddex::Xml::V2010::DsrMain::V32::Video], :from => "Video", :required => false
      xml_accessor :images, :as => [Net::Ddex::Xml::V2010::DsrMain::V32::Image], :from => "Image", :required => false
      xml_accessor :texts, :as => [Net::Ddex::Xml::V2010::DsrMain::V32::Text], :from => "Text", :required => false
      xml_accessor :sheet_musics, :as => [Net::Ddex::Xml::V2010::DsrMain::V32::SheetMusic], :from => "SheetMusic", :required => false
      xml_accessor :softwares, :as => [Net::Ddex::Xml::V2010::DsrMain::V32::Software], :from => "Software", :required => false
      xml_accessor :user_defined_resources, :as => [Net::Ddex::Xml::V2010::DsrMain::V32::UserDefinedResource], :from => "UserDefinedResource", :required => false


  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode", :required => false
    
  

end

end end end end end end