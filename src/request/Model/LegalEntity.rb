class LegalEntity
    attr_accessor :name
	attr_accessor :type
	attr_accessor :doingBusinessAs
	attr_accessor :taxID
	attr_accessor :phone
	attr_accessor :annualCreditCardSalesVolume
	attr_accessor :hasAcceptedCreditCards
	attr_accessor :yearsInBusiness

    def to_hash()
        hash = {}
        hash[:Name] = (name.respond_to?(:to_hash) ? name.to_hash : name) if @name
		hash[:Type] = (type.respond_to?(:to_hash) ? type.to_hash : type) if @type
		hash[:DoingBusinessAs] = (doingBusinessAs.respond_to?(:to_hash) ? doingBusinessAs.to_hash : doingBusinessAs) if @doingBusinessAs
		hash[:TaxID] = (taxID.respond_to?(:to_hash) ? taxID.to_hash : taxID) if @taxID
		hash[:Phone] = (phone.respond_to?(:to_hash) ? phone.to_hash : phone) if @phone
		hash[:AnnualCreditCardSalesVolume] = (annualCreditCardSalesVolume.respond_to?(:to_hash) ? annualCreditCardSalesVolume.to_hash : annualCreditCardSalesVolume) if @annualCreditCardSalesVolume
		hash[:HasAcceptedCreditCards] = (hasAcceptedCreditCards.respond_to?(:to_hash) ? hasAcceptedCreditCards.to_hash : hasAcceptedCreditCards) if @hasAcceptedCreditCards
		hash[:YearsInBusiness] = (yearsInBusiness.respond_to?(:to_hash) ? yearsInBusiness.to_hash : yearsInBusiness) if @yearsInBusiness
        hash
    end

	
end