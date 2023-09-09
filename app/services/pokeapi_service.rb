# frozen_string_literal: true

class PokeapiService
  include HTTParty

  base_uri Rails.application.config.pokeapi_url

  def self.get_pokemon_info(pokemon_name)
    response = get("/#{pokemon_name}")
    return nil unless response.success?

    pokemon_data = JSON.parse(response.body)
    abilities = pokemon_data['abilities'].map do |ability|
      ability['ability']['name']
    end.sort

    sprite = pokemon_data['sprites']['front_default']

    { name: pokemon_name, abilities: abilities, sprite: sprite }
  end
end
