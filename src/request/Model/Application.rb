class Application
    attr_accessor :applicationID

    def to_hash()
        hash = {}
        hash[:ApplicationID] = (applicationID.respond_to?(:to_hash) ? applicationID.to_hash : applicationID) if @applicationID
        hash
    end

	
end