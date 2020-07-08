require 'net/http'
require 'open-uri'
require 'json'
require_relative 'api_call'


class WeatherData

    @@all = []

    def initialize(location)
        @location = location 
        @res = ""
        
        
    end

    def get_response_body
        # if the city already exists in all, display that response instead of making new API call
        @@all.each do |city|
            if city.location == @location
              puts "from old res"
                return city.res
            end
        end
        
        requests = ApiCall.new(@location)
        @res = requests.get_response_body
        @@all << self
        return @res
    end

    def parse_json
        JSON.parse(self.get_response_body)
    end



end
