Dir["request/Model/*.rb"].each{|file| require_relative file[8,file.length]}
Dir["request/Credit/*.rb"].each{|file| require_relative file[8,file.length]}
Dir["request/Check/*.rb"].each{|file| require_relative file[8,file.length]}
Dir["request/Services/*.rb"].each{|file| require_relative file[8,file.length]}
Dir["request/Boarding/*.rb"].each{|file| require_relative file[8,file.length]}

class SampleRequests

    def self.sampleCreditAuthorization()
        authorization = CrAuthorization.new()

        credentials = Credentials.new();
		credentials.acceptorID = "1147003";
        authorization.credentials = credentials;

		reports = Reports.new();
		reports.reportGroup = "1243";
        authorization.reports = reports;

		transaction = Transaction.new();
		transaction.referenceNumber = "1";
		transaction.transactionAmount = "10.00";
		transaction.orderSource = Transaction::OrderSource::ECOMMERCE;
        authorization.transaction = transaction;

		card = Card.new();
		card.cardNumber = "4457010000000009";
		card.expirationMonth = "01";
		card.expirationYear = "16";
		card.cVV = "349";
		card.type = Card::Type::VI;
        authorization.card = card;

		application = Application.new();
		application.applicationID = "1234";
        authorization.application = application;

        authorization
    end

	def self.sampleCreditReversal(transactionID)
        reversal = CrReversal.new()

        credentials = Credentials.new();
		credentials.acceptorID = "1147003";
        reversal.credentials = credentials;

		reports = Reports.new();
		reports.reportGroup = "1243";
        reversal.reports = reports;

		transaction = Transaction.new();
		transaction.transactionID = transactionID;
        reversal.transaction = transaction;

		application = Application.new();
		application.applicationID = "1234";
        reversal.application = application;

        reversal
    end

	def self.sampleCreditAuthorizationCompletion(transactionID)
        authorizationCompletion = CrAuthorizationCompletion.new()

        credentials = Credentials.new();
		credentials.acceptorID = "1147003";
        authorizationCompletion.credentials = credentials;

		reports = Reports.new();
		reports.reportGroup = "1243";
        authorizationCompletion.reports = reports;

		transaction = Transaction.new();
		transaction.transactionID = transactionID;
        authorizationCompletion.transaction = transaction;

		application = Application.new();
		application.applicationID = "1234";
        authorizationCompletion.application = application;

        authorizationCompletion
    end

	def self.sampleCreditCaptureGivenAuth()
        captureGivenAuth = CrCaptureGivenAuth.new()

        credentials = Credentials.new();
		credentials.acceptorID = "1147003";
        captureGivenAuth.credentials = credentials;

		reports = Reports.new();
		reports.reportGroup = "1243";
        captureGivenAuth.reports = reports;

		transaction = Transaction.new();
		transaction.referenceNumber = "1";
		transaction.transactionAmount = "100.10";
		transaction.authorizationDate = "1111-11-11";
		transaction.approvalNumber = "1234";
		transaction.orderSource = Transaction::OrderSource::ECOMMERCE;
        captureGivenAuth.transaction = transaction;

		card = Card.new();
		card.cardNumber = "4457010000000009";
		card.expirationMonth = "01";
		card.expirationYear = "16";
		card.cVV = "349";
		card.type = Card::Type::VI;
        captureGivenAuth.card = card;

		application = Application.new();
		application.applicationID = "1234";
        captureGivenAuth.application = application;

        captureGivenAuth
    end

	def self.sampleCreditCredit(transactionID)
        credit = CrCredit.new()

        credentials = Credentials.new();
		credentials.acceptorID = "1147003";
        credit.credentials = credentials;

		reports = Reports.new();
		reports.reportGroup = "1243";
        credit.reports = reports;

		transaction = Transaction.new();
		transaction.transactionID = transactionID;
        credit.transaction = transaction;

		application = Application.new();
		application.applicationID = "1234";
        credit.application = application;

        credit
    end

	def self.sampleCreditForce()
        force = CrForce.new()

        credentials = Credentials.new();
		credentials.acceptorID = "1147003";
        force.credentials = credentials;

		reports = Reports.new();
		reports.reportGroup = "1243";
        force.reports = reports;

		transaction = Transaction.new();
		transaction.referenceNumber = "1";
		transaction.transactionAmount = "100.10";
		transaction.orderSource = Transaction::OrderSource::ECOMMERCE;
        force.transaction = transaction;

		card = Card.new();
		card.cardNumber = "4457010000000009";
		card.expirationMonth = "01";
		card.expirationYear = "16";
		card.cVV = "349";
		card.type = Card::Type::VI;
        force.card = card;

		application = Application.new();
		application.applicationID = "1234";
        force.application = application;

        force
    end

	def self.sampleCreditReturn()
        return_ = CrReturn.new()

        credentials = Credentials.new();
		credentials.acceptorID = "1147003";
        return_.credentials = credentials;

		reports = Reports.new();
		reports.reportGroup = "1243";
        return_.reports = reports;

		transaction = Transaction.new();
		transaction.referenceNumber = "123";
		transaction.transactionAmount = "10.00";
		transaction.orderSource = Transaction::OrderSource::ECOMMERCE;
        return_.transaction = transaction;

		card = Card.new();
		card.cardNumber = "4457010000000009";
		card.expirationMonth = "01";
		card.expirationYear = "16";
		card.cVV = "349";
		card.type = Card::Type::VI;
        return_.card = card;

		application = Application.new();
		application.applicationID = "1234";
        return_.application = application;

        return_
    end

	def self.sampleCreditSale()
        sale = CrSale.new()

        credentials = Credentials.new();
		credentials.acceptorID = "1147003";
        sale.credentials = credentials;

		reports = Reports.new();
		reports.reportGroup = "1243";
        sale.reports = reports;

		transaction = Transaction.new();
		transaction.referenceNumber = "1";
		transaction.transactionAmount = "100.10";
		transaction.orderSource = Transaction::OrderSource::ECOMMERCE;
        sale.transaction = transaction;

		card = Card.new();
		card.cardNumber = "4457010000000009";
		card.expirationMonth = "01";
		card.expirationYear = "16";
		card.cVV = "349";
		card.type = Card::Type::VI;
        sale.card = card;

		application = Application.new();
		application.applicationID = "1234";
        sale.application = application;

        sale
    end

	def self.sampleCreditVoid(transactionID)
        void_ = CrVoid.new()

        credentials = Credentials.new();
		credentials.acceptorID = "1147003";
        void_.credentials = credentials;

		reports = Reports.new();
		reports.reportGroup = "1243";
        void_.reports = reports;

		transaction = Transaction.new();
		transaction.transactionID = transactionID;
        void_.transaction = transaction;

		application = Application.new();
		application.applicationID = "1234";
        void_.application = application;

        void_
    end


	def self.sampleCheckCredit(transactionID)
        credit = ChCredit.new()

        credentials = Credentials.new();
		credentials.acceptorID = "1147003";
        credit.credentials = credentials;

		transaction = Transaction.new();
		transaction.transactionID = transactionID;
        credit.transaction = transaction;

		reports = Reports.new();
		reports.reportGroup = "1243";
        credit.reports = reports;

		application = Application.new();
		application.applicationID = "1234";
        credit.application = application;

        credit
    end

	def self.sampleCheckReturn()
        return_ = ChReturn.new()

        credentials = Credentials.new();
		credentials.acceptorID = "1147003";
        return_.credentials = credentials;

		transaction = Transaction.new();
		transaction.referenceNumber = "708388073320126000";
		transaction.transactionAmount = "12.56";
		transaction.orderSource = Transaction::OrderSource::ECOMMERCE;
        return_.transaction = transaction;

		demandDepositAccount = DemandDepositAccount.new();
		demandDepositAccount.dDAAccountType = "Checking";
		demandDepositAccount.accountNumber = "234";
		demandDepositAccount.routingNumber = "123234345";
		demandDepositAccount.checkNumber = "456";
		demandDepositAccount.cCDPaymentInformation = "567";
        return_.demandDepositAccount = demandDepositAccount;

		address = Address.new();
		address.billingName = "John Smith";
		address.billingAddress1 = "1 Main St.";
		address.billingCity = "Burlington";
		address.billingState = "MA";
		address.billingZipcode = "01803-3747";
		address.billingEmail = "jdoe@litle.com";
		address.billingPhone = "978-551-0040";
		address.billingCountry = Address::BillingCountry::USA;
        return_.address = address;

		reports = Reports.new();
		reports.reportGroup = "1243";
        return_.reports = reports;

		application = Application.new();
		application.applicationID = "1234";
        return_.application = application;

        return_
    end

	def self.sampleCheckSale()
        sale = ChSale.new()

        credentials = Credentials.new();
		credentials.acceptorID = "1147003";
        sale.credentials = credentials;

		transaction = Transaction.new();
		transaction.referenceNumber = "1";
		transaction.transactionAmount = "100.10";
		transaction.orderSource = Transaction::OrderSource::ECOMMERCE;
        sale.transaction = transaction;

		address = Address.new();
		address.billingName = "John Smith";
		address.billingAddress1 = "1 Main St.";
		address.billingCity = "Burlington";
		address.billingState = "MA";
		address.billingZipcode = "01803-3747";
		address.billingEmail = "jdoe@litle.com";
		address.billingPhone = "978-551-0040";
		address.billingCountry = Address::BillingCountry::USA;
        sale.address = address;

		demandDepositAccount = DemandDepositAccount.new();
		demandDepositAccount.routingNumber = "123234345";
		demandDepositAccount.dDAAccountType = "Checking";
		demandDepositAccount.checkNumber = "456";
        sale.demandDepositAccount = demandDepositAccount;

		paymentAccount = PaymentAccount.new();
		paymentAccount.paymentAccountID = "1232343454565";
        sale.paymentAccount = paymentAccount;

		reports = Reports.new();
		reports.reportGroup = "1243";
        sale.reports = reports;

		application = Application.new();
		application.applicationID = "1234";
        sale.application = application;

        sale
    end

	def self.sampleCheckVerification()
        verification = ChVerification.new()

        credentials = Credentials.new();
		credentials.acceptorID = "1147003";
        verification.credentials = credentials;

		transaction = Transaction.new();
		transaction.referenceNumber = "1";
		transaction.transactionAmount = "100.10";
		transaction.orderSource = Transaction::OrderSource::ECOMMERCE;
        verification.transaction = transaction;

		address = Address.new();
		address.billingName = "John Smith";
		address.billingAddress1 = "1 Main St.";
		address.billingCity = "Burlington";
		address.billingState = "MA";
		address.billingZipcode = "01803-3747";
		address.billingEmail = "jdoe@litle.com";
		address.billingPhone = "978-551-0040";
		address.billingCountry = Address::BillingCountry::USA;
        verification.address = address;

		demandDepositAccount = DemandDepositAccount.new();
		demandDepositAccount.dDAAccountType = "Checking";
		demandDepositAccount.accountNumber = "234";
		demandDepositAccount.routingNumber = "123234345";
		demandDepositAccount.checkNumber = "456";
		demandDepositAccount.cCDPaymentInformation = "567";
        verification.demandDepositAccount = demandDepositAccount;

		reports = Reports.new();
		reports.reportGroup = "1243";
        verification.reports = reports;

		application = Application.new();
		application.applicationID = "1234";
        verification.application = application;

        verification
    end

	def self.sampleCheckVoid(transactionID)
        void_ = ChVoid.new()

        credentials = Credentials.new();
		credentials.acceptorID = "1147003";
        void_.credentials = credentials;

		transaction = Transaction.new();
		transaction.transactionID = transactionID;
        void_.transaction = transaction;

		reports = Reports.new();
		reports.reportGroup = "1243";
        void_.reports = reports;

		application = Application.new();
		application.applicationID = "1234";
        void_.application = application;

        void_
    end


	def self.sampleServicesCreatePlan()
        createPlan = SeCreatePlan.new()

        credentials = Credentials.new();
		credentials.acceptorID = "1147003";
        createPlan.credentials = credentials;

		scheduledTask = ScheduledTask.new();
		scheduledTask.active = "true";
		scheduledTask.scheduledTaskID = "12";
		scheduledTask.name = "NewPlan";
		scheduledTask.description = "Created New Plan";
		scheduledTask.runFrequency = "WEEKLY";
		scheduledTask.amount = "12.00";
		scheduledTask.runCycles = "5";
		scheduledTask.trialRunCycles = "7";
		scheduledTask.trialRunFrequency = "DAY";
        createPlan.scheduledTask = scheduledTask;

        createPlan
    end

	def self.sampleServicesFraudCheck()
        fraudCheck = SeFraudCheck.new()

        credentials = Credentials.new();
		credentials.acceptorID = "1147003";
        fraudCheck.credentials = credentials;

		reports = Reports.new();
		reports.reportGroup = "1243";
        fraudCheck.reports = reports;

		advancedFraudChecks = AdvancedFraudChecks.new();
		advancedFraudChecks.threatMetrixSessionID = "123";
        fraudCheck.advancedFraudChecks = advancedFraudChecks;

		application = Application.new();
		application.applicationID = "1234";
        fraudCheck.application = application;

        fraudCheck
    end

	def self.sampleServicesPaymentAccountCreate()
        paymentAccountCreate = SePaymentAccountCreate.new()

        credentials = Credentials.new();
		credentials.acceptorID = "1147003";
        paymentAccountCreate.credentials = credentials;

		reports = Reports.new();
		reports.reportGroup = "1243";
        paymentAccountCreate.reports = reports;

		card = Card.new();
		card.accountNumber = "5454545454545454";
        paymentAccountCreate.card = card;

		application = Application.new();
		application.applicationID = "1234";
        paymentAccountCreate.application = application;

        paymentAccountCreate
    end

	def self.sampleServicesScheduledTaskDelete()
        scheduledTaskDelete = SeScheduledTaskDelete.new()

        credentials = Credentials.new();
		credentials.acceptorID = "1147003";
        scheduledTaskDelete.credentials = credentials;

		scheduledTask = ScheduledTask.new();
		scheduledTask.subscriptionID = "12432463563564";
        scheduledTaskDelete.scheduledTask = scheduledTask;

        scheduledTaskDelete
    end

	def self.sampleServicesScheduledTaskUpdate()
        scheduledTaskUpdate = SeScheduledTaskUpdate.new()

        credentials = Credentials.new();
		credentials.acceptorID = "1147003";
        scheduledTaskUpdate.credentials = credentials;

		scheduledTask = ScheduledTask.new();
		scheduledTask.subscriptionID = "12432463563564";
		scheduledTask.billingDate = "2019-10-21";
        scheduledTaskUpdate.scheduledTask = scheduledTask;

        scheduledTaskUpdate
    end

	def self.sampleServicesPaymentAccountUpdate()
        paymentAccountUpdate = SePaymentAccountUpdate.new()

        credentials = Credentials.new();
		credentials.acceptorID = "1147003";
        paymentAccountUpdate.credentials = credentials;

		reports = Reports.new();
		reports.reportGroup = "1243";
        paymentAccountUpdate.reports = reports;

		card = Card.new();
		card.cVV = "123";
        paymentAccountUpdate.card = card;

		application = Application.new();
		application.applicationID = "1234";
        paymentAccountUpdate.application = application;

		paymentAccount = PaymentAccount.new();
		paymentAccount.paymentAccountID = "1112000188575454";
        paymentAccountUpdate.paymentAccount = paymentAccount;

        paymentAccountUpdate
    end

	def self.sampleServicesUpdatePlan()
        updatePlan = SeUpdatePlan.new()

        credentials = Credentials.new();
		credentials.acceptorID = "1147003";
        updatePlan.credentials = credentials;

		scheduledTask = ScheduledTask.new();
		scheduledTask.active = "false";
		scheduledTask.scheduledTaskID = "12";
        updatePlan.scheduledTask = scheduledTask;

        updatePlan
    end


	def self.sampleBoardingRetrieveMccList()
        retrieveMccList = BoRetrieveMccList.new()

        

        retrieveMccList
    end

	def self.sampleBoardingCreateLegalEntity()
        createLegalEntity = BoCreateLegalEntity.new()

        legalEntity = LegalEntity.new();
		legalEntity.name = "Legal Entity Name";
		legalEntity.type = "CORPORATION";
		legalEntity.taxID = "12345";
		legalEntity.annualCreditCardSalesVolume = "80000000";
		legalEntity.hasAcceptedCreditCards = "true";
		legalEntity.yearsInBusiness = "12";
        createLegalEntity.legalEntity = legalEntity;

		address = Address.new();
		address.address1 = "Street Address 1";
		address.address2 = "Street Address 2";
		address.city = "City";
		address.state = "MA";
		address.zip = "01730";
		address.country = "USA";
        createLegalEntity.address = address;

		principal = Principal.new();
		principal.title = "Chief Financial Officer";
		principal.firstName = "p first";
		principal.lastName = "p last";
		principal.email = "emailAddress";
		principal.sSN = "123459876";
		principal.contactPhone = "7817659800";
		principal.dateOfBirth = "1980-10-12";
		principal.driversLicense = "892327409832";
		principal.driversLicenseState = "MA";
		principalAddress = Address.new();
		principalAddress.address1 = "Street Address 1";
		principalAddress.address2 = "Street Address 2";
		principalAddress.city = "Boston";
		principalAddress.state = "MA";
		principalAddress.zip = "01890";
		principalAddress.country = "USA";
        principal.address = principalAddress;
        createLegalEntity.principal = principal;

        createLegalEntity
    end

	def self.sampleBoardingCreateSubMerchant()
        createSubMerchant = BoCreateSubMerchant.new("82915251623280808")

        merchant = Merchant.new();
		merchant.name = "Merchant Name";
		merchant.uRL = "http://merchantUrl";
		merchant.customerServiceNumber = "8407809000";
		merchant.hardCodedBillingDescriptor = "billing Descriptor";
		merchant.maxTransactionAmount = "8400";
		merchant.categoryCode = "5074";
		merchant.bankRoutingNumber = "011103093";
		merchant.bankAccountNumber = "84012312415";
		merchant.pSPMerchantID = "123456";
		merchant.settlementCurrency = "USD";
		merchant.fraudEnabled = "true";
        createSubMerchant.merchant = merchant;

		address = Address.new();
		address.address1 = "Street Address 1";
		address.address2 = "Street Address 2";
		address.city = "City";
		address.state = "MA";
		address.zip = "01730";
		address.country = "USA";
        createSubMerchant.address = address;

		primaryContact = PrimaryContact.new();
		primaryContact.firstName = "John";
		primaryContact.lastName = "Doe";
		primaryContact.phone = "9785552222";
		primaryContact.email = "John.Doe@company.com";
        createSubMerchant.primaryContact = primaryContact;

        createSubMerchant
    end

	def self.sampleBoardingRetrieveLegalEntity()
        retrieveLegalEntity = BoRetrieveLegalEntity.new("82915251623280808")

        

        retrieveLegalEntity
    end

	def self.sampleBoardingRetrieveSubMerchant()
        retrieveSubMerchant = BoRetrieveSubMerchant.new("82915251623280808", "82915269567038420")

        

        retrieveSubMerchant
    end

	def self.sampleBoardingUpdateLegalEntity()
        updateLegalEntity = BoUpdateLegalEntity.new("82915251623280808")

        address = Address.new();
		address.address1 = "Street Address 1";
		address.address2 = "Street Address 2";
		address.city = "City";
		address.state = "MA";
		address.zip = "01730";
		address.country = "USA";
        updateLegalEntity.address = address;

        updateLegalEntity
    end

	def self.sampleBoardingUpdateSubMerchant()
        updateSubMerchant = BoUpdateSubMerchant.new("82915251623280808", "82915269567038420")

        merchant = Merchant.new();
		merchant.fraudEnabled = "true";
        updateSubMerchant.merchant = merchant;

        updateSubMerchant
    end

end