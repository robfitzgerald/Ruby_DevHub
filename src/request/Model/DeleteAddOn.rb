class DeleteAddOn
    attr_accessor :addOnCode

    def to_hash()
        hash = {}
        hash[:AddOnCode] = (addOnCode.respond_to?(:to_hash) ? addOnCode.to_hash : addOnCode) if @addOnCode
        hash
    end

	
end