# frozen_string_literal: true

module Api
  module V2
    class PokemonsController < ApplicationController
      def show
        pokemon_name = params[:pokemon_name]
        pokemon_info = PokeapiService.get_pokemon_info(pokemon_name)

        if pokemon_info
          render json: pokemon_info
        else
          render json: { error: 'Pokémon not found' }, status: :not_found
        end
      end
    end
  end
end
