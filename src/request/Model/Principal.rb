class Principal
    attr_accessor :title
	attr_accessor :firstName
	attr_accessor :lastName
	attr_accessor :email
	attr_accessor :sSN
	attr_accessor :contactPhone
	attr_accessor :dateOfBirth
	attr_accessor :driversLicense
	attr_accessor :driversLicenseState
	attr_accessor :address
	attr_accessor :backgroundCheckFields

    def to_hash()
        hash = {}
        hash[:Title] = (title.respond_to?(:to_hash) ? title.to_hash : title) if @title
		hash[:FirstName] = (firstName.respond_to?(:to_hash) ? firstName.to_hash : firstName) if @firstName
		hash[:LastName] = (lastName.respond_to?(:to_hash) ? lastName.to_hash : lastName) if @lastName
		hash[:Email] = (email.respond_to?(:to_hash) ? email.to_hash : email) if @email
		hash[:SSN] = (sSN.respond_to?(:to_hash) ? sSN.to_hash : sSN) if @sSN
		hash[:ContactPhone] = (contactPhone.respond_to?(:to_hash) ? contactPhone.to_hash : contactPhone) if @contactPhone
		hash[:DateOfBirth] = (dateOfBirth.respond_to?(:to_hash) ? dateOfBirth.to_hash : dateOfBirth) if @dateOfBirth
		hash[:DriversLicense] = (driversLicense.respond_to?(:to_hash) ? driversLicense.to_hash : driversLicense) if @driversLicense
		hash[:DriversLicenseState] = (driversLicenseState.respond_to?(:to_hash) ? driversLicenseState.to_hash : driversLicenseState) if @driversLicenseState
		hash[:Address] = (address.respond_to?(:to_hash) ? address.to_hash : address) if @address
		hash[:BackgroundCheckFields] = (backgroundCheckFields.respond_to?(:to_hash) ? backgroundCheckFields.to_hash : backgroundCheckFields) if @backgroundCheckFields
        hash
    end

	
end