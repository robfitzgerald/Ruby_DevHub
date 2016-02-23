require_relative 'request/Config'
require_relative 'request/SampleRequests'
require_relative 'request/Utilities'

def main

    #------------------------CONFIGURE THE API------------------------#

    # Config::license = "Enter your Vantiv license here"  # !!! REQUIRED !!!

    ### - The rest are all optional...

    # Config::baseEndpoint = "apis.cert.vantiv.com" //this is the default
    # Config::version = 1 //this is the default value

    ### - If your company has a proxy, set the proxy object and if it uses authentication, base64 encode your username and password
    # Config::proxyAddress = "example.example.com"
    # Config::proxyPort = "8080"
    # Config::proxyUserName = "abc"
    # Config::proxyPassword = "pass"

    ### - For debugging
    # Config::printRequest = true
    # Config::printResponse = true
    # Config::doNotSend = true  # if set to true, request.send() will return the request string and will not send the transaction

    #^^^^^^^^^^^^^^^^^^^^^^^^CONFIGURE THE API^^^^^^^^^^^^^^^^^^^^^^^^#

    ### Uncomment the sample transaction below that you would like to test

    ### CREDIT
    # sampleCreditAuthorization()
    # sampleCreditAuthorizationCompletion()
    # sampleCreditCaptureGivenAuth()
    # sampleCreditCredit()
    # sampleCreditForce()
    # sampleCreditReturn()
    # sampleCreditReversal()
    # sampleCreditSale()
    # sampleCreditVoid()

    ### DEBIT
    # sampleCheckCredit()
    # sampleCheckReturn()
    # sampleCheckSale()
    # sampleCheckVerification()
    # sampleCheckVoid()

    ### SERVICES
    # sampleCreatePlan()
    # sampleFraudCheck()
    # samplePaymentAccountCreate()
    # sampleScheduledTaskDelete()
    # sampleScheduledTaskUpdate()
    # samplePaymentAccountUpdate()
    # sampleUpdatePlan()

    ### BOARDING
    # sampleRetrieveMccList()
    # sampleCreateLegalEntity()
    # sampleCreateSubMerchant()
    # sampleRetrieveLegalEntity()
    # sampleRetrieveSubMerchant()
    # sampleUpdateLegalEntity()
    # sampleUpdateSubMerchant()
end

def sampleCreditAuthorization()
    authorization = SampleRequests.sampleCreditAuthorization()
    response = authorization.send()
    return response
end

def sampleCreditAuthorizationCompletion()
    authorization = SampleRequests.sampleCreditAuthorization()
    response = authorization.send()
    transactionID = Utilities.getTransactionID(response)

    if(transactionID!=nil) then
        authorizationCompletion = SampleRequests.sampleCreditAuthorizationCompletion(transactionID)
        response = authorizationCompletion.send()
        return response
    end
    puts "Authorization failed. Cannot perform Authorization Completion transaction"
    return null
end

def sampleCreditCaptureGivenAuth()
    captureGivenAuth = SampleRequests.sampleCreditCaptureGivenAuth()
    response = captureGivenAuth.send()
    return response
end

def sampleCreditCredit()
    sale = SampleRequests.sampleCreditSale()
    response = sale.send()
    transactionID = Utilities.getTransactionID(response)

    if(transactionID!=nil) then
        credit = SampleRequests.sampleCreditCredit(transactionID)
        response = credit.send()
        return response
    end
    puts "Sale failed. Cannot perform Credit transaction"
    return null
end

def sampleCreditForce()
    force = SampleRequests.sampleCreditForce()
    response = force.send()
    return response
end

def sampleCreditReturn()
    return_ = SampleRequests.sampleCreditReturn()
    response = return_.send()
    return response
end

def sampleCreditReversal()
    authorization = SampleRequests.sampleCreditAuthorization()
    response = authorization.send()
    transactionID = Utilities.getTransactionID(response)

    if(transactionID!=nil) then
        reversal = SampleRequests.sampleCreditReversal(transactionID)
        response = reversal.send()
        return response
    end
    puts "Authorization failed. Cannot perform Reversal transaction"
    return null
end

def sampleCreditSale()
    sale = SampleRequests.sampleCreditSale()
    response = sale.send()
    return response
end

def sampleCreditVoid()
    sale = SampleRequests.sampleCreditSale()
    response = sale.send()
    transactionID = Utilities.getTransactionID(response)

    if(transactionID!=nil) then
        void_ = SampleRequests.sampleCreditVoid(transactionID)
        response = void_.send()
        return response
    end
    puts "Sale failed. Cannot perform Void transaction"
    return null
end


def sampleCheckCredit()
    sale = SampleRequests.sampleCheckSale()
    response = sale.send()
    transactionID = Utilities.getTransactionID(response)

    if(transactionID!=nil) then
        credit = SampleRequests.sampleCheckCredit(transactionID)
        response = credit.send()
        return response
    end
    puts "Sale failed. Cannot perform Credit transaction"
    return null
end

def sampleCheckReturn()
    return_ = SampleRequests.sampleCheckReturn()
    response = return_.send()
    return response
end

def sampleCheckSale()
    sale = SampleRequests.sampleCheckSale()
    response = sale.send()
    return response
end

def sampleCheckVerification()
    verification = SampleRequests.sampleCheckVerification()
    response = verification.send()
    return response
end

def sampleCheckVoid()
    sale = SampleRequests.sampleCheckSale()
    response = sale.send()
    transactionID = Utilities.getTransactionID(response)

    if(transactionID!=nil) then
        void_ = SampleRequests.sampleCheckVoid(transactionID)
        response = void_.send()
        return response
    end
    puts "Sale failed. Cannot perform Void transaction"
    return null
end


def sampleCreatePlan()
    createPlan = SampleRequests.sampleServicesCreatePlan()
    String response = createPlan.send()
    return response
end

def sampleFraudCheck()
    fraudCheck = SampleRequests.sampleServicesFraudCheck()
    String response = fraudCheck.send()
    return response
end

def samplePaymentAccountCreate()
    paymentAccountCreate = SampleRequests.sampleServicesPaymentAccountCreate()
    String response = paymentAccountCreate.send()
    return response
end

def sampleScheduledTaskDelete()
    scheduledTaskDelete = SampleRequests.sampleServicesScheduledTaskDelete()
    String response = scheduledTaskDelete.send()
    return response
end

def sampleScheduledTaskUpdate()
    scheduledTaskUpdate = SampleRequests.sampleServicesScheduledTaskUpdate()
    String response = scheduledTaskUpdate.send()
    return response
end

def samplePaymentAccountUpdate()
    paymentAccountUpdate = SampleRequests.sampleServicesPaymentAccountUpdate()
    String response = paymentAccountUpdate.send()
    return response
end

def sampleUpdatePlan()
    updatePlan = SampleRequests.sampleServicesUpdatePlan()
    String response = updatePlan.send()
    return response
end


def sampleRetrieveMccList()
    retrieveMccList = SampleRequests.sampleBoardingRetrieveMccList()
    String response = retrieveMccList.send()
    return response
end

def sampleCreateLegalEntity()
    createLegalEntity = SampleRequests.sampleBoardingCreateLegalEntity()
    String response = createLegalEntity.send()
    return response
end

def sampleCreateSubMerchant()
    createSubMerchant = SampleRequests.sampleBoardingCreateSubMerchant()
    String response = createSubMerchant.send()
    return response
end

def sampleRetrieveLegalEntity()
    retrieveLegalEntity = SampleRequests.sampleBoardingRetrieveLegalEntity()
    String response = retrieveLegalEntity.send()
    return response
end

def sampleRetrieveSubMerchant()
    retrieveSubMerchant = SampleRequests.sampleBoardingRetrieveSubMerchant()
    String response = retrieveSubMerchant.send()
    return response
end

def sampleUpdateLegalEntity()
    updateLegalEntity = SampleRequests.sampleBoardingUpdateLegalEntity()
    String response = updateLegalEntity.send()
    return response
end

def sampleUpdateSubMerchant()
    updateSubMerchant = SampleRequests.sampleBoardingUpdateSubMerchant()
    String response = updateSubMerchant.send()
    return response
end

main()