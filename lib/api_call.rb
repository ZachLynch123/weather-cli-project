require 'net/http'
require 'open-uri'
require 'json'


class ApiCall


    def initialize(location)
        @location = location 
        @url = "https://api.openweathermap.org/data/2.5/weather?q=#{@location}&units=imperial&appid=f0a3c1953f52f47c3b3c68881c1c7ef8"
    end

    def get_response_body
        uri = URI.parse(@url)
        responce = Net::HTTP.get_response(uri)
        @res = responce.body
        return @res
    end

    def parse_json
        x = JSON.parse(self.get_response_body)
    end



end
