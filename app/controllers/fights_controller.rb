class FightsController < ApplicationController
  def index
    @star_war = StarWar.generate(rand(90))
    @pokemon = Pokemon.generate(rand(721))
  end
end
