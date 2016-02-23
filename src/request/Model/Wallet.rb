class Wallet
    attr_accessor :walletSourceType
	attr_accessor :walletSourceTypeID

    def to_hash()
        hash = {}
        hash[:WalletSourceType] = (walletSourceType.respond_to?(:to_hash) ? walletSourceType.to_hash : walletSourceType) if @walletSourceType
		hash[:WalletSourceTypeID] = (walletSourceTypeID.respond_to?(:to_hash) ? walletSourceTypeID.to_hash : walletSourceTypeID) if @walletSourceTypeID
        hash
    end

	
end