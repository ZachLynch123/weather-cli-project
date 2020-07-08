require_relative 'weather_data'
require_relative 'display'

repeat = true
city = ""
choice = ""

def get_city
    city = gets.chomp
    formatted_city = city.split(" ")
    return formatted_city.join
end

def get_weather_data
    puts "Enter a city, press CTRL+C to exit program:"
    city = get_city
    weather_data = WeatherData.new(city)
    display_output = Display.new(weather_data.parse_json)
    display_output.results
end

while repeat
    get_weather_data
end







