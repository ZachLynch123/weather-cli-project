require 'net/http'
require 'open-uri'
require 'json'


class WeatherData

    attr_accessor :location, :res
    @@all = []

    def initialize(location)
        @location = location 
        @url = "https://api.openweathermap.org/data/2.5/weather?q=#{@location}&units=imperial&appid=f0a3c1953f52f47c3b3c68881c1c7ef8"
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
        
        uri = URI.parse(@url)
        responce = Net::HTTP.get_response(uri)
        @res = responce.body
        @@all << self
        return @res
    end

    def parse_json
        x = JSON.parse(self.get_response_body)
        
    end



end