Rails.application.routes.draw do
  resources :seasons
  resources :national_teams
  resources :coaches
  resources :continents
  resources :countries
  resources :positions

  
  
  resources :championships do
    get 'championship_fields', on: :collection
  end
  
  resources :teams do
    member do
      get "season/:season_id", to: "teams#season", as: "season"
    end
    resources :players
  end
  
  resources :players do
    get 'keeper_fields', on: :collection
  end

  root "teams#index"
end
