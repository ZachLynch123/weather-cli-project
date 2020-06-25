require_relative 'weather_data'
require_relative 'display'

#TODO: make a function to check for repeat
#TODO: make a class based function in display in order to save previously searched cities
#TODO: don't make API calls on previosuly searched cities

repeat = true
city = ""
choice = ""

def get_city
    city = gets.chomp
    formatted_city = city.split(" ")
    return formatted_city.join
end

def get_weather_data
    puts "Enter a city:"
    city = get_city
    weather_data = WeatherData.new(city)
    display_output = Display.new(weather_data.parse_json)
    display_output.results
end

while repeat
    get_weather_data
end







