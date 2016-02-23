require("json")
require_relative "../Request"

class ChReturn < Request
	attr_accessor :credentials
	attr_accessor :application
	attr_accessor :reports
	attr_accessor :transaction
	attr_accessor :address
	attr_accessor :customBilling
	attr_accessor :demandDepositAccount
	attr_accessor :paymentAccount

    def initialize()
        super("payment", "check", "return", "POST")
        
    end

    def to_json()
        hash = {}
        hash[:Credentials] = (credentials.respond_to?(:to_hash) ? credentials.to_hash : credentials) if @credentials
		hash[:Application] = (application.respond_to?(:to_hash) ? application.to_hash : application) if @application
		hash[:Reports] = (reports.respond_to?(:to_hash) ? reports.to_hash : reports) if @reports
		hash[:Transaction] = (transaction.respond_to?(:to_hash) ? transaction.to_hash : transaction) if @transaction
		hash[:Address] = (address.respond_to?(:to_hash) ? address.to_hash : address) if @address
		hash[:CustomBilling] = (customBilling.respond_to?(:to_hash) ? customBilling.to_hash : customBilling) if @customBilling
		hash[:DemandDepositAccount] = (demandDepositAccount.respond_to?(:to_hash) ? demandDepositAccount.to_hash : demandDepositAccount) if @demandDepositAccount
		hash[:PaymentAccount] = (paymentAccount.respond_to?(:to_hash) ? paymentAccount.to_hash : paymentAccount) if @paymentAccount
        hash.to_json().gsub(/\\/,"")
    end
end