require 'test_helper'

class CityTemperaturesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @city_temperature = city_temperatures(:one)
  end

  test "should get index" do
    get city_temperatures_url, as: :json
    assert_response :success
  end

  test "should create city_temperature" do
    assert_difference('CityTemperature.count') do
      post city_temperatures_url, params: { city_temperature: { country: @city_temperature.country, name: @city_temperature.name, temperature: @city_temperature.temperature, unit: @city_temperature.unit } }, as: :json
    end

    assert_response 201
  end

  test "should show city_temperature" do
    get city_temperature_url(@city_temperature), as: :json
    assert_response :success
  end

  test "should update city_temperature" do
    patch city_temperature_url(@city_temperature), params: { city_temperature: { country: @city_temperature.country, name: @city_temperature.name, temperature: @city_temperature.temperature, unit: @city_temperature.unit } }, as: :json
    assert_response 200
  end

  test "should destroy city_temperature" do
    assert_difference('CityTemperature.count', -1) do
      delete city_temperature_url(@city_temperature), as: :json
    end

    assert_response 204
  end
end
