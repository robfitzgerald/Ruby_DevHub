class AdvancedFraudChecks
    attr_accessor :threatMetrixSessionID
	attr_accessor :customAttribute1
	attr_accessor :customAttribute2
	attr_accessor :customAttribute3
	attr_accessor :customAttribute4
	attr_accessor :customAttribute5

    def to_hash()
        hash = {}
        hash[:ThreatMetrixSessionID] = (threatMetrixSessionID.respond_to?(:to_hash) ? threatMetrixSessionID.to_hash : threatMetrixSessionID) if @threatMetrixSessionID
		hash[:CustomAttribute1] = (customAttribute1.respond_to?(:to_hash) ? customAttribute1.to_hash : customAttribute1) if @customAttribute1
		hash[:CustomAttribute2] = (customAttribute2.respond_to?(:to_hash) ? customAttribute2.to_hash : customAttribute2) if @customAttribute2
		hash[:CustomAttribute3] = (customAttribute3.respond_to?(:to_hash) ? customAttribute3.to_hash : customAttribute3) if @customAttribute3
		hash[:CustomAttribute4] = (customAttribute4.respond_to?(:to_hash) ? customAttribute4.to_hash : customAttribute4) if @customAttribute4
		hash[:CustomAttribute5] = (customAttribute5.respond_to?(:to_hash) ? customAttribute5.to_hash : customAttribute5) if @customAttribute5
        hash
    end

	
end