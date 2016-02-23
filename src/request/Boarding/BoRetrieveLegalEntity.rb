require("json")
require_relative "../Request"

class BoRetrieveLegalEntity < Request
	

    def initialize(entityID)
        super("boarding", "services", "retrieveLegalEntity", "GET")
        @queryParams[:entityID] = entityID
    end

    def to_json()
        hash = {}
        
        hash.to_json().gsub(/\\/,"")
    end
end