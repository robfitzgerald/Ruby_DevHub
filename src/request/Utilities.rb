class Utilities
	class << self
	    # Extracts the transactionID from a response object
	    def getTransactionID(response)
	        if(response.is_a? String)
	            response = JSON.parse(response)
	        end
		    litleOnlineResponse = response["litleOnlineResponse"];
		    if(litleOnlineResponse!=nil)
			    response = litleOnlineResponse.select{|key,value| /^[^@]/ === key}
			    response = response[response.keys[0]]
			    transactionID = response["TransactionID"]
			    if(transactionID!=nil)
			        return transactionID
			    end
		    end
		    return nil;
	    end
	end
end

