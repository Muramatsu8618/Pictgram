Rails.application.routes.draw do
  get 'comments/index'

  get 'comments/new'

  get 'favorites/index'

  get 'topics/new'

  get 'sessions/new'

  get 'session/new'

  root 'pages#index'
  get 'pages/help'

  get    '/login',  to: 'sessions#new'
  post   '/login',  to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources 'users'
  resources 'topics'
  resources 'comments'

  post '/favorites', to: 'favorites#create'
  get '/favorites', to: 'favorites#index'

  post '/topics', to: 'comments#create'
  get '/comments', to: 'comments#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
