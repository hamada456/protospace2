Rails.application.routes.draw do
  devise_for :users
  root to: "protospace#index"
end
