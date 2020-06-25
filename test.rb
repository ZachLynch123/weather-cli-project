require 'net/http'
require 'open-uri'
require 'json'


# one class will be UserInput, that gets the name of the city the user wants to see and pass it to the requester

# class 2 will be weather data that gets the data of the selected city and parses json for the display 

#class 3 will be DisplayData that formats and displays data for user to see

class GetRequester

    URL = 'api.openweathermap.org/data/2.5/weather?q=Lasvegas&appid=3e1f0b01ca98c6df658b5b65c8a1654a'

    def initialize(url)
        @url = url

    end


    def get_response_body
        uri = URI.parse(@url)
        responce = Net::HTTP.get_response(uri)
        responce.body
    end

    def parse_json
        x = JSON.parse(self.get_response_body)
        puts x

    end



end
s = "helloworld!"

x = s.split(" ")
puts x.join