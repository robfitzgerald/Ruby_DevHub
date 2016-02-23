require("json")
require_relative "../Request"

class BoCreateLegalEntity < Request
	attr_accessor :credentials
	attr_accessor :legalEntity
	attr_accessor :address
	attr_accessor :principal
	attr_accessor :principalArray

    def initialize()
        super("boarding", "services", "createLegalEntity", "POST")
        
    end

    def to_json()
        hash = {}
        hash[:Credentials] = (credentials.respond_to?(:to_hash) ? credentials.to_hash : credentials) if @credentials
		hash[:LegalEntity] = (legalEntity.respond_to?(:to_hash) ? legalEntity.to_hash : legalEntity) if @legalEntity
		hash[:Address] = (address.respond_to?(:to_hash) ? address.to_hash : address) if @address
		hash[:Principal] = (principal.respond_to?(:to_hash) ? principal.to_hash : principal) if @principal
		hash[:Principal] = (principal.respond_to?(:to_hash) ? principal.to_hash : principal) if @principal
        hash.to_json().gsub(/\\/,"")
    end
end