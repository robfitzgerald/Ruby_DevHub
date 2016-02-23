class EnhancedData
    attr_accessor :purchaseOrder
	attr_accessor :taxAmount
	attr_accessor :deliveryType
	attr_accessor :taxExempt
	attr_accessor :discountAmount
	attr_accessor :freightAmount
	attr_accessor :dutyAmount
	attr_accessor :shipFromPostalCode
	attr_accessor :destinationPostalCode
	attr_accessor :destinationCountryCode
	attr_accessor :invoiceReferenceNumber
	attr_accessor :orderDate
	attr_accessor :detailTax
	attr_accessor :lineItem

    def to_hash()
        hash = {}
        hash[:PurchaseOrder] = (purchaseOrder.respond_to?(:to_hash) ? purchaseOrder.to_hash : purchaseOrder) if @purchaseOrder
		hash[:TaxAmount] = (taxAmount.respond_to?(:to_hash) ? taxAmount.to_hash : taxAmount) if @taxAmount
		hash[:DeliveryType] = (deliveryType.respond_to?(:to_hash) ? deliveryType.to_hash : deliveryType) if @deliveryType
		hash[:TaxExempt] = (taxExempt.respond_to?(:to_hash) ? taxExempt.to_hash : taxExempt) if @taxExempt
		hash[:DiscountAmount] = (discountAmount.respond_to?(:to_hash) ? discountAmount.to_hash : discountAmount) if @discountAmount
		hash[:FreightAmount] = (freightAmount.respond_to?(:to_hash) ? freightAmount.to_hash : freightAmount) if @freightAmount
		hash[:DutyAmount] = (dutyAmount.respond_to?(:to_hash) ? dutyAmount.to_hash : dutyAmount) if @dutyAmount
		hash[:ShipFromPostalCode] = (shipFromPostalCode.respond_to?(:to_hash) ? shipFromPostalCode.to_hash : shipFromPostalCode) if @shipFromPostalCode
		hash[:DestinationPostalCode] = (destinationPostalCode.respond_to?(:to_hash) ? destinationPostalCode.to_hash : destinationPostalCode) if @destinationPostalCode
		hash[:DestinationCountryCode] = (destinationCountryCode.respond_to?(:to_hash) ? destinationCountryCode.to_hash : destinationCountryCode) if @destinationCountryCode
		hash[:InvoiceReferenceNumber] = (invoiceReferenceNumber.respond_to?(:to_hash) ? invoiceReferenceNumber.to_hash : invoiceReferenceNumber) if @invoiceReferenceNumber
		hash[:OrderDate] = (orderDate.respond_to?(:to_hash) ? orderDate.to_hash : orderDate) if @orderDate
		hash[:DetailTax] = (detailTax.respond_to?(:to_hash) ? detailTax.to_hash : detailTax) if @detailTax
		hash[:LineItem] = (lineItem.respond_to?(:to_hash) ? lineItem.to_hash : lineItem) if @lineItem
        hash
    end

	class DeliveryType
        CNC = "CNC"
		DIG = "DIG"
		PHY = "PHY"
		SVC = "SVC"
		TBD = "TBD"
    end
end