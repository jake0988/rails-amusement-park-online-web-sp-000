Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

get '/signin', to: 'session#new'
post '/session', to: 'session#create'
root to: 'users#index'
resources :users
end
