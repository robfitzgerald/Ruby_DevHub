class LineItem
    attr_accessor :itemSequenceNumber
	attr_accessor :itemDescription
	attr_accessor :productCode
	attr_accessor :lineItemCount
	attr_accessor :unitOfMeasure
	attr_accessor :taxAmount
	attr_accessor :lineItemTotalAmount
	attr_accessor :lineItemTotalWithTax
	attr_accessor :lineItemDiscountAmount
	attr_accessor :itemCommodityCode
	attr_accessor :unitCost
	attr_accessor :detailTax

    def to_hash()
        hash = {}
        hash[:ItemSequenceNumber] = (itemSequenceNumber.respond_to?(:to_hash) ? itemSequenceNumber.to_hash : itemSequenceNumber) if @itemSequenceNumber
		hash[:ItemDescription] = (itemDescription.respond_to?(:to_hash) ? itemDescription.to_hash : itemDescription) if @itemDescription
		hash[:ProductCode] = (productCode.respond_to?(:to_hash) ? productCode.to_hash : productCode) if @productCode
		hash[:LineItemCount] = (lineItemCount.respond_to?(:to_hash) ? lineItemCount.to_hash : lineItemCount) if @lineItemCount
		hash[:UnitOfMeasure] = (unitOfMeasure.respond_to?(:to_hash) ? unitOfMeasure.to_hash : unitOfMeasure) if @unitOfMeasure
		hash[:TaxAmount] = (taxAmount.respond_to?(:to_hash) ? taxAmount.to_hash : taxAmount) if @taxAmount
		hash[:LineItemTotalAmount] = (lineItemTotalAmount.respond_to?(:to_hash) ? lineItemTotalAmount.to_hash : lineItemTotalAmount) if @lineItemTotalAmount
		hash[:LineItemTotalWithTax] = (lineItemTotalWithTax.respond_to?(:to_hash) ? lineItemTotalWithTax.to_hash : lineItemTotalWithTax) if @lineItemTotalWithTax
		hash[:LineItemDiscountAmount] = (lineItemDiscountAmount.respond_to?(:to_hash) ? lineItemDiscountAmount.to_hash : lineItemDiscountAmount) if @lineItemDiscountAmount
		hash[:ItemCommodityCode] = (itemCommodityCode.respond_to?(:to_hash) ? itemCommodityCode.to_hash : itemCommodityCode) if @itemCommodityCode
		hash[:UnitCost] = (unitCost.respond_to?(:to_hash) ? unitCost.to_hash : unitCost) if @unitCost
		hash[:DetailTax] = (detailTax.respond_to?(:to_hash) ? detailTax.to_hash : detailTax) if @detailTax
        hash
    end

	
end