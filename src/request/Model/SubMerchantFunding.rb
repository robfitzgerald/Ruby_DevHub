class SubMerchantFunding
    attr_accessor :enabled
	attr_accessor :feeProfile
	attr_accessor :fundingSubmerchantID

    def to_hash()
        hash = {}
        hash[:Enabled] = (enabled.respond_to?(:to_hash) ? enabled.to_hash : enabled) if @enabled
		hash[:FeeProfile] = (feeProfile.respond_to?(:to_hash) ? feeProfile.to_hash : feeProfile) if @feeProfile
		hash[:FundingSubmerchantID] = (fundingSubmerchantID.respond_to?(:to_hash) ? fundingSubmerchantID.to_hash : fundingSubmerchantID) if @fundingSubmerchantID
        hash
    end

	
end