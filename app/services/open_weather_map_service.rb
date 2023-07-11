
class OpenWeatherMapService
  API_KEY = '7edc36e3aefaab4871bc984653bbd3de'
 
  def self.fetch_weather_data
    response = HTTParty.get(https://api.openweathermap.org/data/3.0/onecall?lat=33.44&lon=-94.04&exclude=hourly,daily&appid=7edc36e3aefaab4871bc984653bbd3de)
    weather_data = JSON.parse(response.body)
    # Process and use the weather_data as needed

    temperature = weather_data['main']['temp']

    WeatherData.create(city: city, temperature: temperature)

  end
end