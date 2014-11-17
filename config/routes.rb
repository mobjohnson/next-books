Rails.application.routes.draw do
  root 'collections#index'
  
  devise_for :users
  
  resources :collections

  resources :authors, only: [:create, :destroy]

  resources :books, only: [:edit, :update, :create, :destroy]

end
