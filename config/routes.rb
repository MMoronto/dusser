Rails.application.routes.draw do
  # resources :users
  # get '/users#new'
  root to: '/users/:id/#new'
end
