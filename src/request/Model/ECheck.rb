class ECheck
    attr_accessor :enabled
	attr_accessor :companyName
	attr_accessor :billingDescriptor

    def to_hash()
        hash = {}
        hash[:Enabled] = (enabled.respond_to?(:to_hash) ? enabled.to_hash : enabled) if @enabled
		hash[:CompanyName] = (companyName.respond_to?(:to_hash) ? companyName.to_hash : companyName) if @companyName
		hash[:BillingDescriptor] = (billingDescriptor.respond_to?(:to_hash) ? billingDescriptor.to_hash : billingDescriptor) if @billingDescriptor
        hash
    end

	
end