Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  match '/users/:id', to: 'users#show', via: 'get', as: 'user'
  resources :supers do
    resources :super_dates, only: [:new, :create]
  end

  resources :super_dates, only: [:destroy]
end
