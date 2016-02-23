require 'net/https'
require 'json'
require 'uri'
require_relative 'Config'

class Request

	attr_accessor :url
	attr_accessor :method
	attr_accessor :queryParams

	def initialize(category, proxy, endpoint, method)
		@url = "https://#{Config.baseEndpoint}/#{category}/sp2/#{proxy}/v#{Config.version}/#{endpoint}"
		@method = method
		@queryParams = {}
	end

	def send()
		requestBody = self.to_json()
		if(Config.printRequest) then
		    puts requestBody
		end

		if (Config.doNotSend) then
			return self.to_json()
		end

		queryParamString = ""
		if(!@queryParams.empty?) then
		    queryParamString = "?" + @queryParams.map{|k,v| "#{k}=#{v}"}.join("&")
		end
		uri = URI(@url+queryParamString)
		http = Net::HTTP.new(uri.host, uri.port, Config.proxyAddress, Config.proxyPort, Config.proxyUserName, Config.proxyPassword);
		http.use_ssl = true
		http.verify_mode = OpenSSL::SSL::VERIFY_NONE
		headers = {
		    "Authorization" => "VANTIV license=\"#{Config.license}\""
		}

		if(@method.eql? "GET")
		    response = http.get(uri.request_uri, headers)
		elsif (@method.eql? "POST")
		    headers["Content-Type"] = "application/json"
		    response = http.post(uri.request_uri, self.to_json(), headers)
		elsif (@method.eql? "PUT")
		    headers["Content-Type"] = "application/json"
		    response = http.put(uri.request_uri, self.to_json(), headers)
		elsif (@method.eql? "DELETE")
		    response = http.delete(uri.request_uri, headers)
		end

		if(Config.printResponse) then
		    puts response.body
		end

        return response.body

	end
end

