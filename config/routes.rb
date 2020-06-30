Rails.application.routes.draw do
  root to: 'pages#home'
  
  resources :users
  resources :pages 

  get 'sign_in', action: :sign_in, controller: 'users'
  post 'checkin', action: :checkin, controller: 'users'
  # get 'search', to: 'users#checkin'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
