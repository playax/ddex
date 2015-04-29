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

require "net/ddex/xml/v2010/dsr_main/v32/detailed_deal"
require "net/ddex/xml/v2010/dsr_main/v32/sales_transaction_to_society"
require "net/ddex/xml/v20100712/ddexc/comment"
require "net/ddex/xml/v20100712/ddexc/duration_by_use_type"
require "net/ddex/xml/v20100712/ddexc/release_id"
require "net/ddex/xml/v20100712/ddexc/resource_id"
require "net/ddex/xml/v20100712/ddexc/resource_type"
require "net/ddex/xml/v20100712/ddexc/rights_agreement_id"

module Net module Ddex module Xml module V2010 module DsrMain module V32  # :nodoc: all

class Net::Ddex::Xml::V2010::DsrMain::V32::ReleaseTransactionsToSociety < Element
  include ROXML


  xml_name "ns1:ReleaseTransactionsToSociety"

      xml_accessor :resource_id, :as => Net::Ddex::Xml::V20100712::Ddexc::ResourceId, :from => "ResourceId", :required => false
      xml_accessor :resource_type, :as => Net::Ddex::Xml::V20100712::Ddexc::ResourceType, :from => "ResourceType", :required => false
      xml_accessor :release_ids, :as => [Net::Ddex::Xml::V20100712::Ddexc::ReleaseId], :from => "ReleaseId", :required => false
      xml_accessor :deal, :as => Net::Ddex::Xml::V2010::DsrMain::V32::DetailedDeal, :from => "Deal", :required => false
      xml_accessor :sales_transactions, :as => [Net::Ddex::Xml::V2010::DsrMain::V32::SalesTransactionToSociety], :from => "SalesTransaction", :required => true
      xml_accessor :rights_agreement_id, :as => Net::Ddex::Xml::V20100712::Ddexc::RightsAgreementId, :from => "RightsAgreementId", :required => false
      xml_accessor :comment, :as => Net::Ddex::Xml::V20100712::Ddexc::Comment, :from => "Comment", :required => false
      xml_accessor :duration_useds, :as => [Net::Ddex::Xml::V20100712::Ddexc::DurationByUseType], :from => "DurationUsed", :required => false


  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode", :required => false
    
  

end

end end end end end end
