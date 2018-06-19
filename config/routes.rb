Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  root to: 'pages#search'

  resources :places do
    resources :events
  end
<<<<<<< HEAD
  get '/search', to: 'pages#search'
end
=======

  resources :events
end
>>>>>>> master
