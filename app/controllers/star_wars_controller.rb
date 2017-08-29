class StarWarsController < ApplicationController
  def index
    @starwars = StarWar.order(wins: :desc)
  end

  def update
    @star_war = StarWar.find params[:id]
    @star_war.update(wins: @star_war.wins + 1)

    redirect_to root_path
  end
end
