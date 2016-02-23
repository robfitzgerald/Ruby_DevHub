class BackgroundCheckFields
    attr_accessor :name
	attr_accessor :type
	attr_accessor :taxID
	attr_accessor :firstName
	attr_accessor :lastName
	attr_accessor :sSN
	attr_accessor :dateOfBirth
	attr_accessor :driversLicense
	attr_accessor :driversLicenseState

    def to_hash()
        hash = {}
        hash[:Name] = (name.respond_to?(:to_hash) ? name.to_hash : name) if @name
		hash[:Type] = (type.respond_to?(:to_hash) ? type.to_hash : type) if @type
		hash[:TaxID] = (taxID.respond_to?(:to_hash) ? taxID.to_hash : taxID) if @taxID
		hash[:FirstName] = (firstName.respond_to?(:to_hash) ? firstName.to_hash : firstName) if @firstName
		hash[:LastName] = (lastName.respond_to?(:to_hash) ? lastName.to_hash : lastName) if @lastName
		hash[:SSN] = (sSN.respond_to?(:to_hash) ? sSN.to_hash : sSN) if @sSN
		hash[:DateOfBirth] = (dateOfBirth.respond_to?(:to_hash) ? dateOfBirth.to_hash : dateOfBirth) if @dateOfBirth
		hash[:DriversLicense] = (driversLicense.respond_to?(:to_hash) ? driversLicense.to_hash : driversLicense) if @driversLicense
		hash[:DriversLicenseState] = (driversLicenseState.respond_to?(:to_hash) ? driversLicenseState.to_hash : driversLicenseState) if @driversLicenseState
        hash
    end

	
end