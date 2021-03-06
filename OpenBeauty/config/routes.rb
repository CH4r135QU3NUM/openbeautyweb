Rails.application.routes.draw do
  get 'events/new'

  get 'events/create'

  get 'sessions/new'
  root 'events#index'
  resources :users
  resources :events

	get    '/discover',   to: 'events#discover'
	get "events/suscribe/:id", to: "events#suscribe"
  get "events/:id/:id", to: "events#adduser"

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'


end
