class DemandDepositAccount
    attr_accessor :dDAAccountType
	attr_accessor :accountNumber
	attr_accessor :routingNumber
	attr_accessor :checkNumber
	attr_accessor :cCDPaymentInformation

    def to_hash()
        hash = {}
        hash[:DDAAccountType] = (dDAAccountType.respond_to?(:to_hash) ? dDAAccountType.to_hash : dDAAccountType) if @dDAAccountType
		hash[:AccountNumber] = (accountNumber.respond_to?(:to_hash) ? accountNumber.to_hash : accountNumber) if @accountNumber
		hash[:RoutingNumber] = (routingNumber.respond_to?(:to_hash) ? routingNumber.to_hash : routingNumber) if @routingNumber
		hash[:CheckNumber] = (checkNumber.respond_to?(:to_hash) ? checkNumber.to_hash : checkNumber) if @checkNumber
		hash[:CCDPaymentInformation] = (cCDPaymentInformation.respond_to?(:to_hash) ? cCDPaymentInformation.to_hash : cCDPaymentInformation) if @cCDPaymentInformation
        hash
    end

	
end