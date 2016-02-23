class Terminal
    attr_accessor :capability
	attr_accessor :entryMode
	attr_accessor :cardholderID
	attr_accessor :terminalID
	attr_accessor :capabilityOfCatTerminal

    def to_hash()
        hash = {}
        hash[:Capability] = (capability.respond_to?(:to_hash) ? capability.to_hash : capability) if @capability
		hash[:EntryMode] = (entryMode.respond_to?(:to_hash) ? entryMode.to_hash : entryMode) if @entryMode
		hash[:CardholderID] = (cardholderID.respond_to?(:to_hash) ? cardholderID.to_hash : cardholderID) if @cardholderID
		hash[:TerminalID] = (terminalID.respond_to?(:to_hash) ? terminalID.to_hash : terminalID) if @terminalID
		hash[:CapabilityOfCatTerminal] = (capabilityOfCatTerminal.respond_to?(:to_hash) ? capabilityOfCatTerminal.to_hash : capabilityOfCatTerminal) if @capabilityOfCatTerminal
        hash
    end

	class Capability
        NOT_USED = "notused"
		MAG_STRIPE = "magstripe"
		KEYED_ONLY = "keyedonly"
    end
	class EntryMode
        NOT_USED = "notused"
		KEYED = "keyed"
		TRACK1 = "track1"
		TRACK2 = "track2"
		COMPLETE_READ = "completeread"
    end
	class CardholderID
        SIGNATURE = "signature"
		PIN = "pin"
		NO_PIN = "nopin"
		DIRECT_MARKET = "directmarket"
    end
	class CapabilityOfCatTerminal
        SELF_SERVICE = "self service"
    end
end