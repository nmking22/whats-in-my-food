Rails.application.routes.draw do

  # welcome
  root "welcome#index"

  # foods
  resources :foods, only: [:index]
end
