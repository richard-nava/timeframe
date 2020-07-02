Rails.application.routes.draw do
  resources :attendances
  resources :lessons
  root to: 'pages#home'
  
  resources :users do
    resources :attendances
  end
  resources :pages 

  get 'sign_in', action: :sign_in, controller: 'users'
  post 'checkin', action: :checkin, controller: 'users'
  # get 'search', to: 'users#checkin'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
