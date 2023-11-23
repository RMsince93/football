Rails.application.routes.draw do
  resources :continents
  resources :countries
  resources :positions
  
  resources :championships
  resources :teams do
    resources :players
  end
  
  resources :players do
    get 'keeper_fields', on: :collection
  end

  root "teams#index"
end
