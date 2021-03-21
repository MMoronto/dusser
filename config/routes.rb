Rails.application.routes.draw do
  
  # resources :users, only: :show
  resources :users do
    resources :hairstyles, only: [:index, :new, :create]
  end
  resources :hairstyles, only: [:show, :edit, :update, :destroy]

end
