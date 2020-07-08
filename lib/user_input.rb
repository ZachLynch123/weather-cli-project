require_relative 'weather_data'
require_relative 'display'

repeat = true
city = ""

def get_city
    city = gets.chomp
    formatted_city = city.split(" ")
    return formatted_city.join
end

def get_weather_data
    puts "Enter a city:"
    city = get_city
    weather_data = WeatherData.new(city)
    if weather_data.parse_json["cod"] == 200
      display_output = Display.new(weather_data.parse_json)
      display_output.results
    else
      puts "not found"
    end
end

while repeat
    get_weather_data
end







