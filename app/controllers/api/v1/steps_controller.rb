class Api::V1::StepsController < ApplicationController

  def new
    @step = Step.new
  end

  def create
    @step = Step.create(steps_params)
  end

  private

  def steps_params # use JS to generate age, gender, lat, long, and use fetch to generate life expectancy
    params.permit(:latitude, :longitude, :no_clicks)
  end
end
