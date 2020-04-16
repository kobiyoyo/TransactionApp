Rails.application.routes.draw do
    root 'home#index'
    resources :tasks
    resources :groups
    resources :transactions
    resources :users
	resources :sessions,only: [:destroy]
    get 'signup', to: 'users#new', as: :signup
    get 'login', to: 'sessions#new', as: :login
    get 'logout', to: 'sessions#destroy', as: :logout
    post 'login', to: 'sessions#create' 
end
