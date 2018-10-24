class Api::V1::CountriesController < ApplicationController

  def index # maybe let player select country to start from
    render json: Country.all
  end

  def show
    @country = Country.find(params[:id])
    render json: @country
  end

  def new
    @country = Country.new
  end

  def create
    @country = Country.create(country_params)
  end

  private

  def country_params
    params.require(:country).permit(:name, :mortality_distribution, :development, :bounds)
  end
end
