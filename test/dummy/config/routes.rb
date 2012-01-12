Dummy::Application.routes.draw do
  resources :sessions
  get "login", to: "sessions#new", as: "login"
  get "logout", to: "sessions#destroy", as: "logout"

  root :to => 'welcome#index'
end
