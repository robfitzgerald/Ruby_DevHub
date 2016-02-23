class FraudResult
    attr_accessor :avsResult
	attr_accessor :cardValidationResult
	attr_accessor :authenticationResult
	attr_accessor :advancedAVSResult
	attr_accessor :advancedFraudResults

    def to_hash()
        hash = {}
        hash[:AvsResult] = (avsResult.respond_to?(:to_hash) ? avsResult.to_hash : avsResult) if @avsResult
		hash[:CardValidationResult] = (cardValidationResult.respond_to?(:to_hash) ? cardValidationResult.to_hash : cardValidationResult) if @cardValidationResult
		hash[:AuthenticationResult] = (authenticationResult.respond_to?(:to_hash) ? authenticationResult.to_hash : authenticationResult) if @authenticationResult
		hash[:AdvancedAVSResult] = (advancedAVSResult.respond_to?(:to_hash) ? advancedAVSResult.to_hash : advancedAVSResult) if @advancedAVSResult
		hash[:AdvancedFraudResults] = (advancedFraudResults.respond_to?(:to_hash) ? advancedFraudResults.to_hash : advancedFraudResults) if @advancedFraudResults
        hash
    end

	
end