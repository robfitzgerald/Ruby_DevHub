require("json")
require_relative "../Request"

class BoRetrieveSubMerchant < Request
	

    def initialize(entityID, subMerchantID)
        super("boarding", "services", "retrieveSubMerchant", "GET")
        @queryParams[:entityID] = entityID
		@queryParams[:subMerchantID] = subMerchantID
    end

    def to_json()
        hash = {}
        
        hash.to_json().gsub(/\\/,"")
    end
end