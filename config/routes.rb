# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v2 do
      get '/pokemon/:pokemon_name', to: 'pokemons#show'
    end
  end
end
