Rails.application.routes.draw do
  resources :users, only: :show
  get 'users/:id', to: 'users#show'
  # resources :users, only: [ :new, :create ]
  # get '/users/#{@user.new}'
  # root to: 'users#new'
end
