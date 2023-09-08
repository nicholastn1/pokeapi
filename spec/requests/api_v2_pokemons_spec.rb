# frozen_string_literal: true

require 'rails_helper'
require 'swagger_helper'

RSpec.describe 'API V2 Pokemons', type: :request do
  path '/api/v2/pokemon/{pokemon_name}' do
    parameter name: 'pokemon_name', in: :path, type: :string

    get 'Retrieves a Pokemon by name' do
      tags 'Pokemons'
      produces 'application/json'
      parameter name: 'pokemon_name', in: :path, type: :string

      response '200', 'Pokemon found' do
        schema type: :object,
               properties: {
                 name: { type: :string },
                 abilities: { type: :array, items: { type: :string } }
               }

        let(:pokemon_name) { 'pikachu' }

        run_test! do
          json_response = JSON.parse(response.body)
          expect(json_response).to be_a(Hash)
          expect(json_response).to have_key('name')
          expect(json_response).to have_key('abilities')
          abilities = json_response['abilities']
          expect(abilities).to eq(abilities.sort)
        end
      end

      response '404', 'Pokemon not found' do
        let(:pokemon_name) { 'non_existent_pokemon' }

        run_test! do
          json_response = JSON.parse(response.body)
          expect(json_response['error']).to eq('Pokémon not found')
        end
      end
    end
  end
end
