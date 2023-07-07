class WeatherData < ApplicationController
    def index
      @weather_data = WeatherData.all
    end
    def search
        query = params[:query]
        @weather_data = WeatherData.where("city LIKE ?", "%#{query}%")
        render :index
      end
  end
  