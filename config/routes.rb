Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/weather_data', to: 'weather_data#index'
  get '/weather_data', to: 'weather_data#index'
  get '/weather_data/search', to: 'weather_data#search'
end
