class CityTemperaturesController < ApplicationController
  before_action :set_city_temperature, only: [:show, :update, :destroy]

  # GET /city_temperatures
  def index
    @city_temperatures = CityTemperature.all

    render json: @city_temperatures
  end

  # GET /city_temperatures/1
  def show
    render json: @city_temperature
  end

  # POST /city_temperatures
  def create
    @city_temperature = CityTemperature.new(city_temperature_params)

    if @city_temperature.save
      render json: @city_temperature, status: :created, location: @city_temperature
    else
      render json: @city_temperature.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /city_temperatures/1
  def update
    if @city_temperature.update(city_temperature_params)
      render json: @city_temperature
    else
      render json: @city_temperature.errors, status: :unprocessable_entity
    end
  end

  # DELETE /city_temperatures/1
  def destroy
    @city_temperature.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_city_temperature
      @city_temperature = CityTemperature.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def city_temperature_params
      params.require(:city_temperature).permit(:country, :name, :temperature, :unit)
    end
end
