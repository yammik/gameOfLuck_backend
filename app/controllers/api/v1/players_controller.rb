class Api::V1::PlayersController < ApplicationController

  def index # to display live/dead stats based on spawn point
    render json: Player.all, include: ['countries']
  end

  def show # to display stat of player in effect
    @player = Player.find(params[:id])
    render json: @player
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.create(player_params)
    @player.no_steps = 0
    @player.alive = true
    @player.save
  end

  private

  def player_params # use JS to generate age, gender, lat, long, and use fetch to generate life expectancy
    params.permit(:name, :age, :gender, :latitude, :longitude)
  end

end
