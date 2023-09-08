# frozen_string_literal: true

Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  namespace :api do
    namespace :v2 do
      get '/pokemon/:pokemon_name', to: 'pokemons#show'
    end
  end
end
