#
# DO NOT MODIFY
# Automatically generated by jaxb2ruby v0.0.1 (https://github.com/sshaw/jaxb2ruby)
#

require "roxml"
require "ddex/element"

require "ddex/v20120404/ddexc/proprietary_id"

module DDEX module V20120404 module DDEXC  # :nodoc: all

class RightsAgreementId < Element
  include ROXML


  xml_name "RightsAgreementId"

      xml_accessor :mwlis, :as => [], :from => "MWLI", :required => false
      xml_accessor :proprietary_ids, :as => [DDEX::V20120404::DDEXC::ProprietaryId], :from => "ProprietaryId", :required => false


  

end

end end end
