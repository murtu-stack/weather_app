
class OpenWeatherMapService
    API_KEY = '7edc36e3aefaab4871bc984653bbd3de'
    city='LONDON';
  
    def self.fetch_weather_data
      url = "https://api.openweathermap.org/data/3.0/onecall?lat=33.44&lon=-94.04&appid=/1/1/1.png?appid=7edc36e3aefaab4871bc984653bbd3de"
      response = HTTParty.get(url)
      weather_data = JSON.parse(response.body) if response.body.present?
  
      if weather_data.present? && weather_data['current'].present?
        temperature = weather_data['current']['temp']
        WeatherData.create(city: city, temperature: temperature)
      else
        # Handle the situation where weather_data is nil or doesn't have the expected structure
      end
    end
  end