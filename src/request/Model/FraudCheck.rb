class FraudCheck
    attr_accessor :authenticationValue
	attr_accessor :authenticationTransactionID
	attr_accessor :customerIpAddress
	attr_accessor :authenticatedByMerchant

    def to_hash()
        hash = {}
        hash[:AuthenticationValue] = (authenticationValue.respond_to?(:to_hash) ? authenticationValue.to_hash : authenticationValue) if @authenticationValue
		hash[:AuthenticationTransactionID] = (authenticationTransactionID.respond_to?(:to_hash) ? authenticationTransactionID.to_hash : authenticationTransactionID) if @authenticationTransactionID
		hash[:CustomerIpAddress] = (customerIpAddress.respond_to?(:to_hash) ? customerIpAddress.to_hash : customerIpAddress) if @customerIpAddress
		hash[:AuthenticatedByMerchant] = (authenticatedByMerchant.respond_to?(:to_hash) ? authenticatedByMerchant.to_hash : authenticatedByMerchant) if @authenticatedByMerchant
        hash
    end

	
end