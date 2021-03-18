Rails.application.routes.draw do
  # resources :users, only: [ :new, :show, :index]
  resources :users, only: [ :new, :create ]
  # get '/users/#{@user.new}'
  # root to: 'users#new'
end
