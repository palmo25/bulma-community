Rails.application.routes.draw do
  get '/login', to: "sessions#new"
  post '/login', to: 'sessions#create'
  get 'logout', to: "sessions#destroy"

  resources :members
  root "admin#index"
  get'/dashboard', to: "dashboard#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
