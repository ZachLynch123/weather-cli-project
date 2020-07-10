require 'net/http'
require 'open-uri'


class ApiCall

    attr_accessor :location, :res
  
    @@all = []

    def initialize(location)
        @location = location 
        @url = "https://api.openweathermap.org/data/2.5/weather?q=#{@location}&units=imperial&appid=f0a3c1953f52f47c3b3c68881c1c7ef8"
        @res = ""
    end

    def get_response
        uri = URI.parse(@url)
        responce = Net::HTTP.get_response(uri)
        @res = responce.body
        @@all << self
        return @res
    end



end
