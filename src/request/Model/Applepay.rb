class Applepay
    attr_accessor :data
	attr_accessor :header
	attr_accessor :signature
	attr_accessor :version

    def to_hash()
        hash = {}
        hash[:Data] = (data.respond_to?(:to_hash) ? data.to_hash : data) if @data
		hash[:Header] = (header.respond_to?(:to_hash) ? header.to_hash : header) if @header
		hash[:Signature] = (signature.respond_to?(:to_hash) ? signature.to_hash : signature) if @signature
		hash[:Version] = (version.respond_to?(:to_hash) ? version.to_hash : version) if @version
        hash
    end

	
end