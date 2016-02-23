class PrimaryContact
    attr_accessor :firstName
	attr_accessor :lastName
	attr_accessor :email
	attr_accessor :phone

    def to_hash()
        hash = {}
        hash[:FirstName] = (firstName.respond_to?(:to_hash) ? firstName.to_hash : firstName) if @firstName
		hash[:LastName] = (lastName.respond_to?(:to_hash) ? lastName.to_hash : lastName) if @lastName
		hash[:Email] = (email.respond_to?(:to_hash) ? email.to_hash : email) if @email
		hash[:Phone] = (phone.respond_to?(:to_hash) ? phone.to_hash : phone) if @phone
        hash
    end

	
end