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

require "net/ddex/xml/v20100712/ddexc/description"
require "net/ddex/xml/v20100712/ddexc/event_date"
require "net/ddex/xml/v20100712/ddexc/musical_work_id"
require "net/ddex/xml/v20100712/ddexc/reason"
require "net/ddex/xml/v20100712/ddexc/reference_title"
require "net/ddex/xml/v20100712/ddexc/resource_contained_resource_reference_list"
require "net/ddex/xml/v20100712/ddexc/resource_musical_work_reference_list"
require "net/ddex/xml/v20100712/ddexc/rights_agreement_id"
require "net/ddex/xml/v20100712/ddexc/title"
require "net/ddex/xml/v20100712/ddexc/video_cue_sheet_reference"
require "net/ddex/xml/v20100712/ddexc/video_details_by_territory"
require "net/ddex/xml/v20100712/ddexc/video_id"
require "net/ddex/xml/v20100712/ddexc/video_type"

module Net module Ddex module Xml module V2010 module DsrMain module V32  # :nodoc: all

class Net::Ddex::Xml::V2010::DsrMain::V32::Video < Element
  include ROXML


  xml_name "ns1:Video"

      xml_accessor :video_type, :as => Net::Ddex::Xml::V20100712::Ddexc::VideoType, :from => "VideoType", :required => false
      xml_accessor :artist_related?, :from => "IsArtistRelated", :required => false
      xml_accessor :video_ids, :as => [Net::Ddex::Xml::V20100712::Ddexc::VideoId], :from => "VideoId", :required => false
      xml_accessor :indirect_video_ids, :as => [Net::Ddex::Xml::V20100712::Ddexc::MusicalWorkId], :from => "IndirectVideoId", :required => false
      xml_accessor :resource_reference, :from => "ResourceReference", :required => true
      xml_accessor :reason_for_cue_sheet_absence, :as => Net::Ddex::Xml::V20100712::Ddexc::Reason, :from => "ReasonForCueSheetAbsence", :required => false
      xml_accessor :video_cue_sheet_references, :as => [Net::Ddex::Xml::V20100712::Ddexc::VideoCueSheetReference], :from => "VideoCueSheetReference", :required => false
      xml_accessor :reference_title, :as => Net::Ddex::Xml::V20100712::Ddexc::ReferenceTitle, :from => "ReferenceTitle", :required => true
      xml_accessor :titles, :as => [Net::Ddex::Xml::V20100712::Ddexc::Title], :from => "Title", :required => false
      xml_accessor :instrumentation_description, :as => Net::Ddex::Xml::V20100712::Ddexc::Description, :from => "InstrumentationDescription", :required => false
      xml_accessor :medley?, :from => "IsMedley", :required => false
      xml_accessor :potpourri?, :from => "IsPotpourri", :required => false
      xml_accessor :instrumental?, :from => "IsInstrumental", :required => false
      xml_accessor :background?, :from => "IsBackground", :required => false
      xml_accessor :hidden_resource?, :from => "IsHiddenResource", :required => false
      xml_accessor :bonus_resource?, :from => "IsBonusResource", :required => false
      xml_accessor :language_of_performance, :from => "LanguageOfPerformance", :required => false
      xml_accessor :duration, :from => "Duration", :required => true
      xml_accessor :duration_of_musical_content, :from => "DurationOfMusicalContent", :required => false
      xml_accessor :rights_agreement_id, :as => Net::Ddex::Xml::V20100712::Ddexc::RightsAgreementId, :from => "RightsAgreementId", :required => false
      xml_accessor :resource_musical_work_reference_list, :as => Net::Ddex::Xml::V20100712::Ddexc::ResourceMusicalWorkReferenceList, :from => "ResourceMusicalWorkReferenceList", :required => false
      xml_accessor :resource_contained_resource_reference_list, :as => Net::Ddex::Xml::V20100712::Ddexc::ResourceContainedResourceReferenceList, :from => "ResourceContainedResourceReferenceList", :required => false
      xml_accessor :creation_date, :as => Net::Ddex::Xml::V20100712::Ddexc::EventDate, :from => "CreationDate", :required => false
      xml_accessor :mastered_date, :as => Net::Ddex::Xml::V20100712::Ddexc::EventDate, :from => "MasteredDate", :required => false
      xml_accessor :video_details_by_territories, :as => [Net::Ddex::Xml::V20100712::Ddexc::VideoDetailsByTerritory], :from => "VideoDetailsByTerritory", :required => true
      xml_accessor :url, :from => "URL", :required => false
      xml_accessor :original_resource_release_date, :as => Net::Ddex::Xml::V20100712::Ddexc::EventDate, :from => "OriginalResourceReleaseDate", :required => false
      xml_accessor :original_language, :from => "OriginalLanguage", :required => false


  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode", :required => false
    
  

end

end end end end end end
