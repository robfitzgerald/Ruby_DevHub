class DetailTax
    attr_accessor :taxIncludedInTotal
	attr_accessor :taxAmount
	attr_accessor :taxRate
	attr_accessor :taxTypeIdentifier
	attr_accessor :alternateTaxIdentifier

    def to_hash()
        hash = {}
        hash[:TaxIncludedInTotal] = (taxIncludedInTotal.respond_to?(:to_hash) ? taxIncludedInTotal.to_hash : taxIncludedInTotal) if @taxIncludedInTotal
		hash[:TaxAmount] = (taxAmount.respond_to?(:to_hash) ? taxAmount.to_hash : taxAmount) if @taxAmount
		hash[:TaxRate] = (taxRate.respond_to?(:to_hash) ? taxRate.to_hash : taxRate) if @taxRate
		hash[:TaxTypeIdentifier] = (taxTypeIdentifier.respond_to?(:to_hash) ? taxTypeIdentifier.to_hash : taxTypeIdentifier) if @taxTypeIdentifier
		hash[:AlternateTaxIdentifier] = (alternateTaxIdentifier.respond_to?(:to_hash) ? alternateTaxIdentifier.to_hash : alternateTaxIdentifier) if @alternateTaxIdentifier
        hash
    end

	class TaxTypeIdentifier
        UNKOWN = "00"
		NATL_SALES = "01"
		ST_SALES = "02"
		CTY_SALES = "03"
		LCL_SALES = "04"
		MUN_SALES = "05"
		OTHER = "06"
		VAT = "10"
		GST = "11"
		PST = "12"
		HST = "13"
		QST = "14"
		ROOM = "20"
		OCCUPANCY = "21"
		ENERGY = "22"
    end
end