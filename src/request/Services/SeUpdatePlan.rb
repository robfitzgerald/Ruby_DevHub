require("json")
require_relative "../Request"

class SeUpdatePlan < Request
	attr_accessor :credentials
	attr_accessor :application
	attr_accessor :transaction
	attr_accessor :reports
	attr_accessor :scheduledTask

    def initialize()
        super("payment", "services", "updatePlan", "POST")
        
    end

    def to_json()
        hash = {}
        hash[:Credentials] = (credentials.respond_to?(:to_hash) ? credentials.to_hash : credentials) if @credentials
		hash[:Application] = (application.respond_to?(:to_hash) ? application.to_hash : application) if @application
		hash[:Transaction] = (transaction.respond_to?(:to_hash) ? transaction.to_hash : transaction) if @transaction
		hash[:Reports] = (reports.respond_to?(:to_hash) ? reports.to_hash : reports) if @reports
		hash[:ScheduledTask] = (scheduledTask.respond_to?(:to_hash) ? scheduledTask.to_hash : scheduledTask) if @scheduledTask
        hash.to_json().gsub(/\\/,"")
    end
end