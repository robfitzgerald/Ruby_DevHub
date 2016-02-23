class DeleteDiscount
    attr_accessor :discountCode

    def to_hash()
        hash = {}
        hash[:DiscountCode] = (discountCode.respond_to?(:to_hash) ? discountCode.to_hash : discountCode) if @discountCode
        hash
    end

	
end