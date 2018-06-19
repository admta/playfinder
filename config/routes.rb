Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  root to: 'pages#search'

  resources :places do
    resources :events
  end

  resources :events
end
