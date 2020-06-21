class Display

    attr_reader :condition, :low, :high, :wind, :name, :current_temp, :code, :feels_like, :humidity

    def initialize(data)
        @code = data["cod"]
        @condition = data["weather"][0]["main"]
        @current_temp = data["main"]["temp"]
        @feels_like = data["main"]["feels_like"]
        @high = data["main"]["temp_max"]
        @humidity = data["main"]["humidity"]
        @low = data["main"]["temp_min"]
        @wind = data["wind"]["speed"]
    end





end



test_data = {"coord"=>{"lon"=>-104.6, "lat"=>24.06}, "weather"=>[{"id"=>801, "main"=>"Clouds", "description"=>"few clouds", "icon"=>"02d"}], "base"=>"stations", "main"=>{"temp"=>77.49, "feels_like"=>74.88, "temp_min"=>77, "temp_max"=>78.01, "pressure"=>1025, "humidity"=>38}, "visibility"=>19312, "wind"=>{"speed"=>4.7, "deg"=>320}, "clouds"=>{"all"=>20}, "dt"=>1592765213, "sys"=>{"type"=>1, "id"=>7113, "country"=>"MX", "sunrise"=>1592741495, "sunset"=>1592790539}, "timezone"=>-18000, "id"=>4011743, "name"=>"LasVegas", "cod"=>200}


x = Display.new(test_data)

puts x.current_temp