class Merchant
    attr_accessor :name
	attr_accessor :amexMid
	attr_accessor :discoverConveyedMid
	attr_accessor :uRL
	attr_accessor :customerServiceNumber
	attr_accessor :hardCodedBillingDescriptor
	attr_accessor :maxTransactionAmount
	attr_accessor :purchaseCurrency
	attr_accessor :categoryCode
	attr_accessor :bankRoutingNumber
	attr_accessor :bankAccountNumber
	attr_accessor :pSPMerchantID
	attr_accessor :disable
	attr_accessor :createCredentials
	attr_accessor :settlementCurrency
	attr_accessor :fraudEnabled

    def to_hash()
        hash = {}
        hash[:Name] = (name.respond_to?(:to_hash) ? name.to_hash : name) if @name
		hash[:AmexMid] = (amexMid.respond_to?(:to_hash) ? amexMid.to_hash : amexMid) if @amexMid
		hash[:DiscoverConveyedMid] = (discoverConveyedMid.respond_to?(:to_hash) ? discoverConveyedMid.to_hash : discoverConveyedMid) if @discoverConveyedMid
		hash[:URL] = (uRL.respond_to?(:to_hash) ? uRL.to_hash : uRL) if @uRL
		hash[:CustomerServiceNumber] = (customerServiceNumber.respond_to?(:to_hash) ? customerServiceNumber.to_hash : customerServiceNumber) if @customerServiceNumber
		hash[:HardCodedBillingDescriptor] = (hardCodedBillingDescriptor.respond_to?(:to_hash) ? hardCodedBillingDescriptor.to_hash : hardCodedBillingDescriptor) if @hardCodedBillingDescriptor
		hash[:MaxTransactionAmount] = (maxTransactionAmount.respond_to?(:to_hash) ? maxTransactionAmount.to_hash : maxTransactionAmount) if @maxTransactionAmount
		hash[:PurchaseCurrency] = (purchaseCurrency.respond_to?(:to_hash) ? purchaseCurrency.to_hash : purchaseCurrency) if @purchaseCurrency
		hash[:CategoryCode] = (categoryCode.respond_to?(:to_hash) ? categoryCode.to_hash : categoryCode) if @categoryCode
		hash[:BankRoutingNumber] = (bankRoutingNumber.respond_to?(:to_hash) ? bankRoutingNumber.to_hash : bankRoutingNumber) if @bankRoutingNumber
		hash[:BankAccountNumber] = (bankAccountNumber.respond_to?(:to_hash) ? bankAccountNumber.to_hash : bankAccountNumber) if @bankAccountNumber
		hash[:PSPMerchantID] = (pSPMerchantID.respond_to?(:to_hash) ? pSPMerchantID.to_hash : pSPMerchantID) if @pSPMerchantID
		hash[:Disable] = (disable.respond_to?(:to_hash) ? disable.to_hash : disable) if @disable
		hash[:CreateCredentials] = (createCredentials.respond_to?(:to_hash) ? createCredentials.to_hash : createCredentials) if @createCredentials
		hash[:SettlementCurrency] = (settlementCurrency.respond_to?(:to_hash) ? settlementCurrency.to_hash : settlementCurrency) if @settlementCurrency
		hash[:FraudEnabled] = (fraudEnabled.respond_to?(:to_hash) ? fraudEnabled.to_hash : fraudEnabled) if @fraudEnabled
        hash
    end

	
end