class Pokemon < ApplicationRecord
  include HTTParty
  base_uri 'http://pokeapi.co/api/v2/pokemon/'

  def self.generate(api_id)
    pokemon = find_by api_id: api_id
    return pokemon unless pokemon.nil?

    response = get("/#{api_id}")
    if response['sprites']
      create!(name: response['name'],
        image: response['sprites']['front_default'],
        wins: 0,
        api_id: api_id)
    else
      create!(
        name: response['name'],
        image: "http://www.fillmurray.com/#{api_id}/#{api_id}",
        wins: 0,
        api_id: api_id)
    end
  end
end
