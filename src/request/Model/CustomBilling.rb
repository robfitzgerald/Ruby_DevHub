class CustomBilling
    attr_accessor :phoneNumber
	attr_accessor :descriptor
	attr_accessor :url
	attr_accessor :city

    def to_hash()
        hash = {}
        hash[:PhoneNumber] = (phoneNumber.respond_to?(:to_hash) ? phoneNumber.to_hash : phoneNumber) if @phoneNumber
		hash[:Descriptor] = (descriptor.respond_to?(:to_hash) ? descriptor.to_hash : descriptor) if @descriptor
		hash[:Url] = (url.respond_to?(:to_hash) ? url.to_hash : url) if @url
		hash[:City] = (city.respond_to?(:to_hash) ? city.to_hash : city) if @city
        hash
    end

	
end