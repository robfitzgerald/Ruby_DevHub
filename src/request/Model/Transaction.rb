class Transaction
    attr_accessor :customerID
	attr_accessor :partialCapture
	attr_accessor :referenceNumber
	attr_accessor :authorizationDate
	attr_accessor :approvalNumber
	attr_accessor :transactionAmount
	attr_accessor :transactionID
	attr_accessor :convenienceFeeAmount
	attr_accessor :orderSource
	attr_accessor :taxType
	attr_accessor :partialApprovedFlag
	attr_accessor :fraudFilterOverride
	attr_accessor :surchargeFee
	attr_accessor :actionReason
	attr_accessor :verify

    def to_hash()
        hash = {}
        hash[:CustomerID] = (customerID.respond_to?(:to_hash) ? customerID.to_hash : customerID) if @customerID
		hash[:PartialCapture] = (partialCapture.respond_to?(:to_hash) ? partialCapture.to_hash : partialCapture) if @partialCapture
		hash[:ReferenceNumber] = (referenceNumber.respond_to?(:to_hash) ? referenceNumber.to_hash : referenceNumber) if @referenceNumber
		hash[:AuthorizationDate] = (authorizationDate.respond_to?(:to_hash) ? authorizationDate.to_hash : authorizationDate) if @authorizationDate
		hash[:ApprovalNumber] = (approvalNumber.respond_to?(:to_hash) ? approvalNumber.to_hash : approvalNumber) if @approvalNumber
		hash[:TransactionAmount] = (transactionAmount.respond_to?(:to_hash) ? transactionAmount.to_hash : transactionAmount) if @transactionAmount
		hash[:TransactionID] = (transactionID.respond_to?(:to_hash) ? transactionID.to_hash : transactionID) if @transactionID
		hash[:ConvenienceFeeAmount] = (convenienceFeeAmount.respond_to?(:to_hash) ? convenienceFeeAmount.to_hash : convenienceFeeAmount) if @convenienceFeeAmount
		hash[:OrderSource] = (orderSource.respond_to?(:to_hash) ? orderSource.to_hash : orderSource) if @orderSource
		hash[:TaxType] = (taxType.respond_to?(:to_hash) ? taxType.to_hash : taxType) if @taxType
		hash[:PartialApprovedFlag] = (partialApprovedFlag.respond_to?(:to_hash) ? partialApprovedFlag.to_hash : partialApprovedFlag) if @partialApprovedFlag
		hash[:FraudFilterOverride] = (fraudFilterOverride.respond_to?(:to_hash) ? fraudFilterOverride.to_hash : fraudFilterOverride) if @fraudFilterOverride
		hash[:SurchargeFee] = (surchargeFee.respond_to?(:to_hash) ? surchargeFee.to_hash : surchargeFee) if @surchargeFee
		hash[:ActionReason] = (actionReason.respond_to?(:to_hash) ? actionReason.to_hash : actionReason) if @actionReason
		hash[:Verify] = (verify.respond_to?(:to_hash) ? verify.to_hash : verify) if @verify
        hash
    end

	class OrderSource
        ECOMMERCE = "ecommerce"
		INSTALLMENT = "installment"
		MAIL_ORDER = "mailorder"
		RECURRING = "recurring"
		RETAIL = "retail"
		TELEPHONE = "telephone"
		AUTH_3DS = "3dsAuthenticated"
		ATTEMPTED_3DS = "3dsAttempted"
		RECURRING_TEL = "recurringtel"
		ECHECK_PPD = "echeckppd"
		APPLEPAY = "applepay"
    end
	class TaxType
        PAYMENT = "payment"
		FEE = "fee"
    end
end