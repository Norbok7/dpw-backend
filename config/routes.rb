Rails.application.routes.draw do
  post 'login', to: 'authentication#login'
  resources :customers
  post 'register', to: 'users#register'
end
