Rails.application.routes.draw do
  root "home#index"

  resources :fantasy_leagues
end
