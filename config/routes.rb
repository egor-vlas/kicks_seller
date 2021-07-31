Rails.application.routes.draw do
  resources :line_items
  resources :carts
  resources :reviews
  resources :kicks
  resources :profiles
  resources :conversations do
    resources :messages
  end
  devise_for :users
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
