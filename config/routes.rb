Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  #home page
  root 'pages#home'

  #users routes
  get 'signup', to: 'users#new'
  resources :users, except: [:new]

  #places routes
  resources :places

  #sessions routes
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
