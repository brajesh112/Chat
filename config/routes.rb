Rails.application.routes.draw do
  get 'landing/index'
  devise_for :users
  root "landing#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :messages, only: [:new, :create]
end
