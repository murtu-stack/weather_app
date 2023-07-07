class WeatherData < ActiveRecord::Migration[6.0]
  def change
    create_table :weather_data do |t|
      t.string :city
      t.float :temperature
      t.timestamps
    end
  end
end
