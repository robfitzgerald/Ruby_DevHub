class Credentials
    attr_accessor :acceptorID

    def to_hash()
        hash = {}
        hash[:AcceptorID] = (acceptorID.respond_to?(:to_hash) ? acceptorID.to_hash : acceptorID) if @acceptorID
        hash
    end

	
end