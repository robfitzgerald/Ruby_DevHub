class PaymentAccount
    attr_accessor :paymentAccountID

    def to_hash()
        hash = {}
        hash[:PaymentAccountID] = (paymentAccountID.respond_to?(:to_hash) ? paymentAccountID.to_hash : paymentAccountID) if @paymentAccountID
        hash
    end

	
end