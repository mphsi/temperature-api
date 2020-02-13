class CityTemperature < ApplicationRecord
  scope :order_by_temperature, ->(direction) { order(temperature: direction) }
  scope :order_by_created_at, ->(direction) { order(created_at: direction) }
end
