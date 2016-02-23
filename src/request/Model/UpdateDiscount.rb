class UpdateDiscount
    attr_accessor :discountCode
	attr_accessor :name
	attr_accessor :amount
	attr_accessor :startDate
	attr_accessor :endDate

    def to_hash()
        hash = {}
        hash[:DiscountCode] = (discountCode.respond_to?(:to_hash) ? discountCode.to_hash : discountCode) if @discountCode
		hash[:Name] = (name.respond_to?(:to_hash) ? name.to_hash : name) if @name
		hash[:Amount] = (amount.respond_to?(:to_hash) ? amount.to_hash : amount) if @amount
		hash[:StartDate] = (startDate.respond_to?(:to_hash) ? startDate.to_hash : startDate) if @startDate
		hash[:EndDate] = (endDate.respond_to?(:to_hash) ? endDate.to_hash : endDate) if @endDate
        hash
    end

	
end