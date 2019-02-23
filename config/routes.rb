Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :notes

  post "signup", to: "users#create"
  post "auth/login", to: "authentication#authenticate"

  get "/", to: "application#landing"
  resources "*", to: "application#not_found"
end
