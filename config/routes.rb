Rails.application.routes.draw do
  devise_for :users
  resources :essentials
  resources :homes

  root to: "homes#index"

end
