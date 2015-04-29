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

require "net/ddex/xml/v2010/dsr_main/v32/invoice_item"
require "net/ddex/xml/v2010/dsr_main/v32/total_royalty_amount"
require "net/ddex/xml/v20100712/ddexc/contained_release_summary"
require "net/ddex/xml/v20100712/ddexc/message_header"
require "net/ddex/xml/v20100712/ddexc/proprietary_id"

module Net module Ddex module Xml module V2010 module DsrMain module V32  # :nodoc: all

class Net::Ddex::Xml::V2010::DsrMain::V32::InvoiceMessage < Element
  include ROXML

    setns "ns1", "http://ddex.net/xml/2010/dsr-main/32"

  xml_name "ns1:InvoiceMessage"

      xml_accessor :message_header, :as => Net::Ddex::Xml::V20100712::Ddexc::MessageHeader, :from => "MessageHeader", :required => true
      xml_accessor :invoice_id, :as => Net::Ddex::Xml::V20100712::Ddexc::ProprietaryId, :from => "InvoiceId", :required => true
      xml_accessor :contained_release_summaries, :as => [Net::Ddex::Xml::V20100712::Ddexc::ContainedReleaseSummary], :from => "ContainedReleaseSummary", :required => false
      xml_accessor :currency, :from => "Currency", :required => true
      xml_accessor :invoice_items, :as => [Net::Ddex::Xml::V2010::DsrMain::V32::InvoiceItem], :from => "InvoiceItem", :required => true
      xml_accessor :total_royalty_amounts, :as => [Net::Ddex::Xml::V2010::DsrMain::V32::TotalRoyaltyAmount], :from => "TotalRoyaltyAmount", :required => false


  

end

end end end end end end