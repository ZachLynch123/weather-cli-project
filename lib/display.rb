class Display


    def initialize(data)
        @code = data["cod"]
        @condition = data["weather"][0]["main"]
        @current_temp = data["main"]["temp"].to_i
        @feels_like = data["main"]["feels_like"].to_i
        @high = data["main"]["temp_max"].to_i
        @humidity = data["main"]["humidity"]
        @low = data["main"]["temp_min"].to_i
        @wind = data["wind"]["speed"].to_i
    end

    def results
        puts "\nCondition: #{@condition}"
        puts "Current temp: #{@current_temp}F"
        puts "Feels like: #{@feels_like}F"
        puts "The high for today: #{@high}"
        puts "The low for today: #{@low}"
        puts "Humidity: #{@humidity}%"
        puts "Wind speed: #{@wind} MPH"

    end


end

