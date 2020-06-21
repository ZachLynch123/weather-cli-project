require 'net/http'
require 'open-uri'
require 'json'


# one class will be UserInput, that gets the name of the city the user wants to see

# class 2 will be GetRequester that gets the data of the selected city and parses

#class 3 will be DisplayData that formats and displays data for user to see

class WeatherData

    URL = 'api.openweathermap.org/data/2.5/weather?q=Lasvegas&appid=3e1f0b01ca98c6df658b5b65c8a1654a'

    attr_accessor :location

    def initialize(location)
        @location = location 
        @url = "https://api.openweathermap.org/data/2.5/weather?q=#{@location}&units=imperial&appid=f0a3c1953f52f47c3b3c68881c1c7ef8"
    end


    def get_response_body
        uri = URI.parse(@url)
        responce = Net::HTTP.get_response(uri)
        responce.body
    end

    def parse_json
        x = JSON.parse(self.get_response_body)
        
    end



end
