class Config
	@license = ""
	@baseEndpoint = "apis.cert.vantiv.com";
	@version = 1;
	@proxyAddress = nil;
	@proxyPort = nil;
	@proxyUserName = nil;
	@proxyPassword = nil;
	
	# debugging assistance
	@printRequest = false;
	@printResponse = false;
	@doNotSend = false;

	class << self
	    attr_accessor :license
	    attr_accessor :baseEndpoint
	    attr_accessor :version
	    attr_accessor :proxyAddress
	    attr_accessor :proxyPort
	    attr_accessor :proxyUserName
	    attr_accessor :proxyPassword

	    attr_accessor :printRequest
	    attr_accessor :printResponse
	    attr_accessor :doNotSend
	end
end
