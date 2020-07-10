
require 'json'
require_relative 'api_call'


class WeatherData

    attr_accessor :location, :res
    @@all = []

    def initialize(location)
        @location = location
        @res = ""
    end

    def create_weather_objects
        @@all.each do |city|
            if city.location == @location
              puts "from old res"
                return city.res
            end
            raw_data = ApiCall.new(@location)
            @res = raw_data.get_response
            @@all << self 
            return @res


    end




    def parse_json
        JSON.parse(self.create_weather_objects)
    end



end
