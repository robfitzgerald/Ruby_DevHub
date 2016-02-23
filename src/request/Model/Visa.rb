class Visa
    attr_accessor :debtRepayment

    def to_hash()
        hash = {}
        hash[:DebtRepayment] = (debtRepayment.respond_to?(:to_hash) ? debtRepayment.to_hash : debtRepayment) if @debtRepayment
        hash
    end

	
end