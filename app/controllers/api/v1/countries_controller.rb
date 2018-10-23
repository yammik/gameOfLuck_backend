class Api::V1::CountriesController < ApplicationController

  def index # maybe let player select country to start from
    @countries = Country.all
    render json: @countries
  end
end
