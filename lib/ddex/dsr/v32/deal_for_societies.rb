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
require "net/ddex/xml/v2010/dsr_main/v32/summary_deal"

module Net module Ddex module Xml module V2010 module DsrMain module V32  # :nodoc: all

class Net::Ddex::Xml::V2010::DsrMain::V32::DealForSocieties < Element
  include ROXML


  xml_name "ns1:DealForSocieties"

      xml_accessor :summary_deal, :as => Net::Ddex::Xml::V2010::DsrMain::V32::SummaryDeal, :from => "SummaryDeal", :required => false
      xml_accessor :detailed_deal, :as => Net::Ddex::Xml::V2010::DsrMain::V32::DetailedDeal, :from => "DetailedDeal", :required => false


  

end

end end end end end end
