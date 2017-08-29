class PokemonController < ApplicationController
  def update
    @pokemon = Pokemon.find params[:id]
    @pokemon.update(wins: @pokemon.wins + 1)
    redirect_to root_path
  end
end
