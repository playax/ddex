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

require "net/ddex/xml/v20100712/ddexc/distribution_channel_descriptor"
require "net/ddex/xml/v20100712/ddexc/dsp"
require "net/ddex/xml/v20100712/ddexc/rights_agreement_id"

module Net module Ddex module Xml module V2010 module DsrMain module V32  # :nodoc: all

class Net::Ddex::Xml::V2010::DsrMain::V32::DspDetailsForSociety < Net::Ddex::Xml::V20100712::Ddexc::DSP
  include ROXML


  xml_name "ns1:DspDetailsForSociety"

      xml_accessor :distribution_channel_descriptor, :as => Net::Ddex::Xml::V20100712::Ddexc::DistributionChannelDescriptor, :from => "DistributionChannelDescriptor", :required => false
      xml_accessor :rights_agreement_id, :as => Net::Ddex::Xml::V20100712::Ddexc::RightsAgreementId, :from => "RightsAgreementId", :required => false


  

end

end end end end end end
