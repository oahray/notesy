Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope module: :v2, constraints: ApiVersion.new("v2") do
    resources :notes, only: :index
  end

  scope module: :v1, constraints: ApiVersion.new("v1", true) do
    resources :notes
  end

  post "signup", to: "users#create"
  post "auth/login", to: "authentication#authenticate"

  get "/", to: "application#landing"
  resources "/*all", to: "application#not_found"
end
