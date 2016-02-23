require("json")
require_relative "../Request"

class BoRetrieveMccList < Request
	

    def initialize()
        super("boarding", "services", "retrieveMccList", "GET")
        
    end

    def to_json()
        hash = {}
        
        hash.to_json().gsub(/\\/,"")
    end
end