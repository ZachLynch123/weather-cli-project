require_relative 'weather_data'
require_relative 'display'

def get_city
    city = gets.chomp
    formatted_city = city.split(" ")
    return formatted_city.join
end

while repeat do 
    city = ""
    choice = ""
    puts "enter a city"
    weather_data = WeatherData.new(get_city)
    display_output = Display.new(weather_data.parse_json)
    display_output.results
end







