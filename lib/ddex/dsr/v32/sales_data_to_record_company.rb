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

require "net/ddex/xml/v2010/dsr_main/v32/sales_data_grouping_to_record_company"

module Net module Ddex module Xml module V2010 module DsrMain module V32  # :nodoc: all

class Net::Ddex::Xml::V2010::DsrMain::V32::SalesDataToRecordCompany < Element
  include ROXML


  xml_name "ns1:SalesDataToRecordCompany"

      xml_accessor :sales_data_grouping, :as => Net::Ddex::Xml::V2010::DsrMain::V32::SalesDataGroupingToRecordCompany, :from => "SalesDataGrouping", :required => false
      xml_accessor :number_of_consumer_sales_gross, :as => Integer, :from => "NumberOfConsumerSalesGross", :required => true
      xml_accessor :number_of_unit_adjustments, :as => Integer, :from => "NumberOfUnitAdjustments", :required => false
      xml_accessor :number_of_free_units_to_consumers, :as => Integer, :from => "NumberOfFreeUnitsToConsumers", :required => true
      xml_accessor :number_of_unit_adjustments_to_free_units, :as => Integer, :from => "NumberOfUnitAdjustmentsToFreeUnits", :required => false


  

end

end end end end end end
