class Card
    attr_accessor :type
	attr_accessor :cardNumber
	attr_accessor :expirationMonth
	attr_accessor :expirationYear
	attr_accessor :cVV
	attr_accessor :track1Data
	attr_accessor :track2Data
	attr_accessor :paypageRegistrationID
	attr_accessor :accountNumber

    def to_hash()
        hash = {}
        hash[:Type] = (type.respond_to?(:to_hash) ? type.to_hash : type) if @type
		hash[:CardNumber] = (cardNumber.respond_to?(:to_hash) ? cardNumber.to_hash : cardNumber) if @cardNumber
		hash[:ExpirationMonth] = (expirationMonth.respond_to?(:to_hash) ? expirationMonth.to_hash : expirationMonth) if @expirationMonth
		hash[:ExpirationYear] = (expirationYear.respond_to?(:to_hash) ? expirationYear.to_hash : expirationYear) if @expirationYear
		hash[:CVV] = (cVV.respond_to?(:to_hash) ? cVV.to_hash : cVV) if @cVV
		hash[:Track1Data] = (track1Data.respond_to?(:to_hash) ? track1Data.to_hash : track1Data) if @track1Data
		hash[:Track2Data] = (track2Data.respond_to?(:to_hash) ? track2Data.to_hash : track2Data) if @track2Data
		hash[:PaypageRegistrationID] = (paypageRegistrationID.respond_to?(:to_hash) ? paypageRegistrationID.to_hash : paypageRegistrationID) if @paypageRegistrationID
		hash[:AccountNumber] = (accountNumber.respond_to?(:to_hash) ? accountNumber.to_hash : accountNumber) if @accountNumber
        hash
    end

	class Type
        MC = "MC"
		VI = "VI"
		AX = "AX"
		DC = "DC"
		DI = "DI"
		PP = "PP"
		JC = "JC"
		BL = "BL"
		EC = "EC"
		GC = "GC"
		NONE = ""
    end
end