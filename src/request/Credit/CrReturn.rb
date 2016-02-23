require("json")
require_relative "../Request"

class CrReturn < Request
	attr_accessor :credentials
	attr_accessor :application
	attr_accessor :reports
	attr_accessor :transaction
	attr_accessor :address
	attr_accessor :card
	attr_accessor :payPal
	attr_accessor :paymentAccount
	attr_accessor :bml
	attr_accessor :terminal
	attr_accessor :customBilling
	attr_accessor :enhancedData

    def initialize()
        super("payment", "credit", "return", "POST")
        
    end

    def to_json()
        hash = {}
        hash[:Credentials] = (credentials.respond_to?(:to_hash) ? credentials.to_hash : credentials) if @credentials
		hash[:Application] = (application.respond_to?(:to_hash) ? application.to_hash : application) if @application
		hash[:Reports] = (reports.respond_to?(:to_hash) ? reports.to_hash : reports) if @reports
		hash[:Transaction] = (transaction.respond_to?(:to_hash) ? transaction.to_hash : transaction) if @transaction
		hash[:Address] = (address.respond_to?(:to_hash) ? address.to_hash : address) if @address
		hash[:Card] = (card.respond_to?(:to_hash) ? card.to_hash : card) if @card
		hash[:PayPal] = (payPal.respond_to?(:to_hash) ? payPal.to_hash : payPal) if @payPal
		hash[:PaymentAccount] = (paymentAccount.respond_to?(:to_hash) ? paymentAccount.to_hash : paymentAccount) if @paymentAccount
		hash[:Bml] = (bml.respond_to?(:to_hash) ? bml.to_hash : bml) if @bml
		hash[:Terminal] = (terminal.respond_to?(:to_hash) ? terminal.to_hash : terminal) if @terminal
		hash[:CustomBilling] = (customBilling.respond_to?(:to_hash) ? customBilling.to_hash : customBilling) if @customBilling
		hash[:EnhancedData] = (enhancedData.respond_to?(:to_hash) ? enhancedData.to_hash : enhancedData) if @enhancedData
        hash.to_json().gsub(/\\/,"")
    end
end