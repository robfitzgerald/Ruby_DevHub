require("json")
require_relative "../Request"

class SeScheduledTaskUpdate < Request
	attr_accessor :credentials
	attr_accessor :application
	attr_accessor :transaction
	attr_accessor :reports
	attr_accessor :card
	attr_accessor :paymentAccount
	attr_accessor :scheduledTask
	attr_accessor :address

    def initialize()
        super("payment", "services", "scheduledTaskUpdate", "POST")
        
    end

    def to_json()
        hash = {}
        hash[:Credentials] = (credentials.respond_to?(:to_hash) ? credentials.to_hash : credentials) if @credentials
		hash[:Application] = (application.respond_to?(:to_hash) ? application.to_hash : application) if @application
		hash[:Transaction] = (transaction.respond_to?(:to_hash) ? transaction.to_hash : transaction) if @transaction
		hash[:Reports] = (reports.respond_to?(:to_hash) ? reports.to_hash : reports) if @reports
		hash[:Card] = (card.respond_to?(:to_hash) ? card.to_hash : card) if @card
		hash[:PaymentAccount] = (paymentAccount.respond_to?(:to_hash) ? paymentAccount.to_hash : paymentAccount) if @paymentAccount
		hash[:ScheduledTask] = (scheduledTask.respond_to?(:to_hash) ? scheduledTask.to_hash : scheduledTask) if @scheduledTask
		hash[:Address] = (address.respond_to?(:to_hash) ? address.to_hash : address) if @address
        hash.to_json().gsub(/\\/,"")
    end
end