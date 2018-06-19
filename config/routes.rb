Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  root to: 'pages#search'

  resources :places do
    resources :events
  end

  resources :events
  resources :bucketlists, only: [:new, :create, :show]
  resources :list_events, only: [:new, :create, :destroy]
  resources :list_places, only: [:new, :create, :destroy]

end
