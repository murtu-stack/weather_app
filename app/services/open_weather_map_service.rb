

class OpenWeatherMapService
  API_KEY = '7edc36e3aefaab4871bc984653bbd3de'
  CITY = 'London'

  def self.fetch_weather_data
    response = HTTParty.get("http://api.openweathermap.org/data/2.5/weather?q=#{CITY}&appid=#{API_KEY}")
    weather_data = JSON.parse(response.body)
    # Process and use the weather_data as needed

    temperature = weather_data['main']['temp']

    WeatherData.create(city: city, temperature: temperature)

  end
end