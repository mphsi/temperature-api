class TemperatureCapturist
  attr_reader :city_id, :unit, :fetcher
  def initialize()
    @city_id = ENV["OPENWEATHER_MTY_CITY_ID"]
    @unit    = "metric"
    @fetcher = TemperatureFetcher.new(city_id)
  end

  def call
    begin
      response = fetcher.call

      CityTemperature.create(
        country: response["sys"]["country"],
        name: response["name"],
        temperature: response["main"]["temp"],
        unit: unit
      )
    rescue
      nil
    end
  end
end
