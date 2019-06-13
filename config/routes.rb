Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :travelers
  resources :airlines
  resources :tickets

  get '/login', to: 'travelers#login'

end
