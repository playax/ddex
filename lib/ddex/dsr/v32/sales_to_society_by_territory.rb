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

require "net/ddex/xml/v2010/dsr_main/v32/deal_for_societies"
require "net/ddex/xml/v2010/dsr_main/v32/release_transactions_to_society"
require "net/ddex/xml/v20100712/ddexc/amount_by_use_and_distribution_channel_type"
require "net/ddex/xml/v20100712/ddexc/amount_per_collection"
require "net/ddex/xml/v20100712/ddexc/number_of_subscribers"
require "net/ddex/xml/v20100712/ddexc/tax_rate"

module Net module Ddex module Xml module V2010 module DsrMain module V32  # :nodoc: all

class Net::Ddex::Xml::V2010::DsrMain::V32::SalesToSocietyByTerritory < Element
  include ROXML


  xml_name "ns1:SalesToSocietyByTerritory"

      xml_accessor :territory_codes, :as => [], :from => "TerritoryCode", :required => true
      xml_accessor :tax_rates, :as => [Net::Ddex::Xml::V20100712::Ddexc::TaxRate], :from => "TaxRate", :required => false
      xml_accessor :deal, :as => Net::Ddex::Xml::V2010::DsrMain::V32::DealForSocieties, :from => "Deal", :required => false
      xml_accessor :release_transactions, :as => [Net::Ddex::Xml::V2010::DsrMain::V32::ReleaseTransactionsToSociety], :from => "ReleaseTransactions", :required => true
      xml_accessor :number_of_subscribers, :as => Net::Ddex::Xml::V20100712::Ddexc::NumberOfSubscribers, :from => "NumberOfSubscribers", :required => false
      xml_accessor :dsp_gross_revenue, :as => Net::Ddex::Xml::V20100712::Ddexc::AmountByUseAndDistributionChannelType, :from => "DspGrossRevenue", :required => false
      xml_accessor :dsp_net_revenue, :as => Net::Ddex::Xml::V20100712::Ddexc::AmountByUseAndDistributionChannelType, :from => "DspNetRevenue", :required => false
      xml_accessor :dsp_deductions_amount, :as => Net::Ddex::Xml::V20100712::Ddexc::AmountByUseAndDistributionChannelType, :from => "DspDeductionsAmount", :required => false
      xml_accessor :percentage_net_revenue_share, :as => Net::Ddex::Xml::V20100712::Ddexc::AmountByUseAndDistributionChannelType, :from => "PercentageNetRevenueShare", :required => false
      xml_accessor :minimum_amount_per_customer, :as => Float, :from => "MinimumAmountPerCustomer", :required => false
      xml_accessor :minimum_amount_per_collections, :as => [Net::Ddex::Xml::V20100712::Ddexc::AmountPerCollection], :from => "MinimumAmountPerCollection", :required => false
      xml_accessor :maximum_amount_per_collections, :as => [Net::Ddex::Xml::V20100712::Ddexc::AmountPerCollection], :from => "MaximumAmountPerCollection", :required => false
      xml_accessor :total_wholesale_price_per_unit, :as => Float, :from => "TotalWholesalePricePerUnit", :required => false
      xml_accessor :total_wholesale_price_per_unit_in_currency_of_accounting, :as => Float, :from => "TotalWholesalePricePerUnitInCurrencyOfAccounting", :required => false
      xml_accessor :total_amount_payable_in_currency_of_accounting, :as => Float, :from => "TotalAmountPayableInCurrencyOfAccounting", :required => false
      xml_accessor :currency_exchange_rate, :as => Float, :from => "CurrencyExchangeRate", :required => false


  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode", :required => false
    
  

end

end end end end end end