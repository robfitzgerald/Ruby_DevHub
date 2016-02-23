class RecyclingRequest
    attr_accessor :recycleBy
	attr_accessor :recycleID

    def to_hash()
        hash = {}
        hash[:RecycleBy] = (recycleBy.respond_to?(:to_hash) ? recycleBy.to_hash : recycleBy) if @recycleBy
		hash[:RecycleID] = (recycleID.respond_to?(:to_hash) ? recycleID.to_hash : recycleID) if @recycleID
        hash
    end

	class RecycleBy
        MERCHANT = "Merchant"
		LITLE = "Litle"
		NONE = "None"
    end
end