Rails.application.routes.draw do
  devise_for :users
  root to: "prototype#index"
  resources :prototypes, only: [:create, :new]
end
