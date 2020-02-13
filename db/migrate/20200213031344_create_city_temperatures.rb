class CreateCityTemperatures < ActiveRecord::Migration[6.0]
  def change
    create_table :city_temperatures do |t|
      t.string :country
      t.string :name
      t.float :temperature
      t.string :unit

      t.timestamps
    end
  end
end
