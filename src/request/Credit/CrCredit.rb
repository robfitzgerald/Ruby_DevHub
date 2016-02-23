require("json")
require_relative "../Request"

class CrCredit < Request
	attr_accessor :credentials
	attr_accessor :application
	attr_accessor :reports
	attr_accessor :transaction
	attr_accessor :payPal
	attr_accessor :terminal
	attr_accessor :customBilling
	attr_accessor :enhancedData

    def initialize()
        super("payment", "credit", "credit", "POST")
        
    end

    def to_json()
        hash = {}
        hash[:Credentials] = (credentials.respond_to?(:to_hash) ? credentials.to_hash : credentials) if @credentials
		hash[:Application] = (application.respond_to?(:to_hash) ? application.to_hash : application) if @application
		hash[:Reports] = (reports.respond_to?(:to_hash) ? reports.to_hash : reports) if @reports
		hash[:Transaction] = (transaction.respond_to?(:to_hash) ? transaction.to_hash : transaction) if @transaction
		hash[:PayPal] = (payPal.respond_to?(:to_hash) ? payPal.to_hash : payPal) if @payPal
		hash[:Terminal] = (terminal.respond_to?(:to_hash) ? terminal.to_hash : terminal) if @terminal
		hash[:CustomBilling] = (customBilling.respond_to?(:to_hash) ? customBilling.to_hash : customBilling) if @customBilling
		hash[:EnhancedData] = (enhancedData.respond_to?(:to_hash) ? enhancedData.to_hash : enhancedData) if @enhancedData
        hash.to_json().gsub(/\\/,"")
    end
end