Rails.application.routes.draw do
  get '/birds' => 'birds#index'

  get '/sightings', to: 'sightings#index'
  get '/sightings/:id', to: 'sightings#show'
end