class Header
    attr_accessor :applicationData
	attr_accessor :ephemeralPublicKey
	attr_accessor :publicKeyHash
	attr_accessor :transactionID

    def to_hash()
        hash = {}
        hash[:ApplicationData] = (applicationData.respond_to?(:to_hash) ? applicationData.to_hash : applicationData) if @applicationData
		hash[:EphemeralPublicKey] = (ephemeralPublicKey.respond_to?(:to_hash) ? ephemeralPublicKey.to_hash : ephemeralPublicKey) if @ephemeralPublicKey
		hash[:PublicKeyHash] = (publicKeyHash.respond_to?(:to_hash) ? publicKeyHash.to_hash : publicKeyHash) if @publicKeyHash
		hash[:TransactionID] = (transactionID.respond_to?(:to_hash) ? transactionID.to_hash : transactionID) if @transactionID
        hash
    end

	
end