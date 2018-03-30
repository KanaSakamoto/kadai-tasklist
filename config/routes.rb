Rails.application.routes.draw do
  get 'toppages/index'

  root to: 'toppages#index'
  
  get 'users/index'

  get 'users/show'

  get 'users/new'

  get 'users/create'

  resources :tasks
  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create]
end
