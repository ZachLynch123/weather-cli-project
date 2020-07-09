
require 'json'


class WeatherData

    @@all = []

    def initialize(res)
        @res = res
    end



    def parse_json
        JSON.parse(@res)
    end



end
