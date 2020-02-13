class TemperatureFetcher
  attr_reader :city_id
  def initialize()
    @city_id = 3995465
  end

  def call()
    # logic for calling openweather API
  end
end
