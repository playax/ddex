#
# DO NOT MODIFY
# Automatically generated by jaxb2ruby v0.0.1 (https://github.com/sshaw/jaxb2ruby)
#

require "roxml"
require "ddex/element"

require "ddex/ern/v35/preview_details"
require "ddex/v20120719/ddexc/container_format"
require "ddex/v20120719/ddexc/description"
require "ddex/v20120719/ddexc/drm_platform_type"
require "ddex/v20120719/ddexc/file"
require "ddex/v20120719/ddexc/fingerprint"
require "ddex/v20120719/ddexc/fulfillment_date"
require "ddex/v20120719/ddexc/fulfillment_date"
require "ddex/v20120719/ddexc/sheet_music_codec_type"

module DDEX module ERN module V35

class TechnicalSheetMusicDetails < Element
  include ROXML


  xml_name "TechnicalSheetMusicDetails"

      xml_accessor :technical_resource_details_reference, :from => "TechnicalResourceDetailsReference", :required => true

      xml_accessor :drm_platform_type, :as => DDEX::V20120719::DDEXC::DrmPlatformType, :from => "DrmPlatformType", :required => false

      xml_accessor :container_format, :as => DDEX::V20120719::DDEXC::ContainerFormat, :from => "ContainerFormat", :required => false

      xml_accessor :sheet_music_codec_type, :as => DDEX::V20120719::DDEXC::SheetMusicCodecType, :from => "SheetMusicCodecType", :required => false

      xml_accessor :preview?, :from => "IsPreview", :required => false

      xml_accessor :preview_details, :as => DDEX::ERN::V35::PreviewDetails, :from => "PreviewDetails", :required => false

      xml_accessor :fulfillment_date, :as => DDEX::V20120719::DDEXC::FulfillmentDate, :from => "FulfillmentDate", :required => false

      xml_accessor :consumer_fulfillment_date, :as => DDEX::V20120719::DDEXC::FulfillmentDate, :from => "ConsumerFulfillmentDate", :required => false

      
      xml_accessor :files, :as => [DDEX::V20120719::DDEXC::File], :from => "File", :required => false

      
      xml_accessor :file_availability_descriptions, :as => [DDEX::V20120719::DDEXC::Description], :from => "FileAvailabilityDescription", :required => false

      
      xml_accessor :fingerprints, :as => [DDEX::V20120719::DDEXC::Fingerprint], :from => "Fingerprint", :required => false



  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode", :required => false
    
  
end

end end end