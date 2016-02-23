class PayPal
    attr_accessor :payerID
	attr_accessor :token
	attr_accessor :transactionID
	attr_accessor :payPalOrderComplete
	attr_accessor :payPalNotes

    def to_hash()
        hash = {}
        hash[:PayerID] = (payerID.respond_to?(:to_hash) ? payerID.to_hash : payerID) if @payerID
		hash[:Token] = (token.respond_to?(:to_hash) ? token.to_hash : token) if @token
		hash[:TransactionID] = (transactionID.respond_to?(:to_hash) ? transactionID.to_hash : transactionID) if @transactionID
		hash[:PayPalOrderComplete] = (payPalOrderComplete.respond_to?(:to_hash) ? payPalOrderComplete.to_hash : payPalOrderComplete) if @payPalOrderComplete
		hash[:PayPalNotes] = (payPalNotes.respond_to?(:to_hash) ? payPalNotes.to_hash : payPalNotes) if @payPalNotes
        hash
    end

	
end