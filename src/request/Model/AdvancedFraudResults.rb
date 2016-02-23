class AdvancedFraudResults
    attr_accessor :deviceReviewStatus
	attr_accessor :deviceReputationScore
	attr_accessor :triggeredRule

    def to_hash()
        hash = {}
        hash[:DeviceReviewStatus] = (deviceReviewStatus.respond_to?(:to_hash) ? deviceReviewStatus.to_hash : deviceReviewStatus) if @deviceReviewStatus
		hash[:DeviceReputationScore] = (deviceReputationScore.respond_to?(:to_hash) ? deviceReputationScore.to_hash : deviceReputationScore) if @deviceReputationScore
		hash[:TriggeredRule] = (triggeredRule.respond_to?(:to_hash) ? triggeredRule.to_hash : triggeredRule) if @triggeredRule
        hash
    end

	
end