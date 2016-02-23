require("json")
require_relative "../Request"

class BoUpdateSubMerchant < Request
	attr_accessor :credentials
	attr_accessor :merchant
	attr_accessor :address
	attr_accessor :primaryContact
	attr_accessor :eCheck
	attr_accessor :subMerchantFunding

    def initialize(entityID, subMerchantID)
        super("boarding", "services", "updateSubMerchant", "PUT")
        @queryParams[:entityID] = entityID
		@queryParams[:subMerchantID] = subMerchantID
    end

    def to_json()
        hash = {}
        hash[:Credentials] = (credentials.respond_to?(:to_hash) ? credentials.to_hash : credentials) if @credentials
		hash[:Merchant] = (merchant.respond_to?(:to_hash) ? merchant.to_hash : merchant) if @merchant
		hash[:Address] = (address.respond_to?(:to_hash) ? address.to_hash : address) if @address
		hash[:PrimaryContact] = (primaryContact.respond_to?(:to_hash) ? primaryContact.to_hash : primaryContact) if @primaryContact
		hash[:ECheck] = (eCheck.respond_to?(:to_hash) ? eCheck.to_hash : eCheck) if @eCheck
		hash[:SubMerchantFunding] = (subMerchantFunding.respond_to?(:to_hash) ? subMerchantFunding.to_hash : subMerchantFunding) if @subMerchantFunding
        hash.to_json().gsub(/\\/,"")
    end
end