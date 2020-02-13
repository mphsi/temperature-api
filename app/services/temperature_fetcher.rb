class TemperatureFetcher
  attr_reader :city_id, :unit, :app_id, :api_url
  def initialize(city_id, unit = "metric")
    @city_id = city_id
    @unit    = unit
    @app_id  = ENV["OPENWEATHER_APP_ID"]
    @api_url = ENV["OPENWEATHER_ENDPOINT"]
  end

  def call()
    begin
      url      = request_uri
      http     = Net::HTTP.new(url.host, url.port)
      request  = Net::HTTP::Get.new(url)

      response = http.request(request)

      JSON.parse(response.body)
    rescue
      nil
    end
  end

  private

  def request_uri
    URI("http://#{api_url}?id=#{city_id}&appid=#{app_id}&units=#{unit}")
  end
end
