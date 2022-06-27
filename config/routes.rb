Rails.application.routes.draw do


  resource :users, only: [:new, :create]

  root "sessions#welcome"

  get 'login',    to: "sessions#new"
  post 'login',   to: "sessions#create"
  get "welcome",  to: "sessions#welcome"

  get 'authorized', to: "sessions#page_requires_login"
end
