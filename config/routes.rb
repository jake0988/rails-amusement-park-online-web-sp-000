Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :users
get '/signin', to: 'users#signin'
post '/signin', to: 'users#show'
root to: 'users#home'

end
