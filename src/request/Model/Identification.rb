class Identification
    attr_accessor :ssn
	attr_accessor :birthDate
	attr_accessor :customerRegistrationDate
	attr_accessor :customerType
	attr_accessor :incomeAmount
	attr_accessor :incomeCurrency
	attr_accessor :customerCheckingAccount
	attr_accessor :customerSavingsAccount
	attr_accessor :employerName
	attr_accessor :customerWorkTelephone
	attr_accessor :residenceStatus
	attr_accessor :yearsAtResidence
	attr_accessor :yearsAtEmployer

    def to_hash()
        hash = {}
        hash[:Ssn] = (ssn.respond_to?(:to_hash) ? ssn.to_hash : ssn) if @ssn
		hash[:BirthDate] = (birthDate.respond_to?(:to_hash) ? birthDate.to_hash : birthDate) if @birthDate
		hash[:CustomerRegistrationDate] = (customerRegistrationDate.respond_to?(:to_hash) ? customerRegistrationDate.to_hash : customerRegistrationDate) if @customerRegistrationDate
		hash[:CustomerType] = (customerType.respond_to?(:to_hash) ? customerType.to_hash : customerType) if @customerType
		hash[:IncomeAmount] = (incomeAmount.respond_to?(:to_hash) ? incomeAmount.to_hash : incomeAmount) if @incomeAmount
		hash[:IncomeCurrency] = (incomeCurrency.respond_to?(:to_hash) ? incomeCurrency.to_hash : incomeCurrency) if @incomeCurrency
		hash[:CustomerCheckingAccount] = (customerCheckingAccount.respond_to?(:to_hash) ? customerCheckingAccount.to_hash : customerCheckingAccount) if @customerCheckingAccount
		hash[:CustomerSavingsAccount] = (customerSavingsAccount.respond_to?(:to_hash) ? customerSavingsAccount.to_hash : customerSavingsAccount) if @customerSavingsAccount
		hash[:EmployerName] = (employerName.respond_to?(:to_hash) ? employerName.to_hash : employerName) if @employerName
		hash[:CustomerWorkTelephone] = (customerWorkTelephone.respond_to?(:to_hash) ? customerWorkTelephone.to_hash : customerWorkTelephone) if @customerWorkTelephone
		hash[:ResidenceStatus] = (residenceStatus.respond_to?(:to_hash) ? residenceStatus.to_hash : residenceStatus) if @residenceStatus
		hash[:YearsAtResidence] = (yearsAtResidence.respond_to?(:to_hash) ? yearsAtResidence.to_hash : yearsAtResidence) if @yearsAtResidence
		hash[:YearsAtEmployer] = (yearsAtEmployer.respond_to?(:to_hash) ? yearsAtEmployer.to_hash : yearsAtEmployer) if @yearsAtEmployer
        hash
    end

	class CustomerType
        NEW = "New"
		EXISTING = "Existing"
    end
	class IncomeCurrency
        AUD = "AUD"
		CAD = "CAD"
		CHF = "CHF"
		DKK = "DKK"
		EUR = "EUR"
		GBP = "GBP"
		HKD = "HKD"
		JPY = "JPY"
		NOK = "NOK"
		NZD = "NZD"
		SEK = "SEK"
		SGD = "SGD"
		USD = "USD"
    end
	class ResidenceStatus
        OWN = "Own"
		RENT = "Rent"
		OTHER = "Other"
    end
end