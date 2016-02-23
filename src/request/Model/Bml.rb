class Bml
    attr_accessor :merchantID
	attr_accessor :productType
	attr_accessor :termsAndConditions
	attr_accessor :preApprovalNumber
	attr_accessor :virtualAuthenticationKeyPresenceIndicator
	attr_accessor :virtualAuthenticationKeyData
	attr_accessor :itemCategoryCode

    def to_hash()
        hash = {}
        hash[:MerchantID] = (merchantID.respond_to?(:to_hash) ? merchantID.to_hash : merchantID) if @merchantID
		hash[:ProductType] = (productType.respond_to?(:to_hash) ? productType.to_hash : productType) if @productType
		hash[:TermsAndConditions] = (termsAndConditions.respond_to?(:to_hash) ? termsAndConditions.to_hash : termsAndConditions) if @termsAndConditions
		hash[:PreApprovalNumber] = (preApprovalNumber.respond_to?(:to_hash) ? preApprovalNumber.to_hash : preApprovalNumber) if @preApprovalNumber
		hash[:VirtualAuthenticationKeyPresenceIndicator] = (virtualAuthenticationKeyPresenceIndicator.respond_to?(:to_hash) ? virtualAuthenticationKeyPresenceIndicator.to_hash : virtualAuthenticationKeyPresenceIndicator) if @virtualAuthenticationKeyPresenceIndicator
		hash[:VirtualAuthenticationKeyData] = (virtualAuthenticationKeyData.respond_to?(:to_hash) ? virtualAuthenticationKeyData.to_hash : virtualAuthenticationKeyData) if @virtualAuthenticationKeyData
		hash[:ItemCategoryCode] = (itemCategoryCode.respond_to?(:to_hash) ? itemCategoryCode.to_hash : itemCategoryCode) if @itemCategoryCode
        hash
    end

	
end