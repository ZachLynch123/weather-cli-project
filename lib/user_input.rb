require_relative 'weather_data'
repeat = true

def get_city
    city = gets.chomp
    city
end

while repeat do 
    city = ""
    puts "enter a city"
    weather_data = WeatherData.new(get_city)
    weather_data.parse_json
    repeat = false
end







