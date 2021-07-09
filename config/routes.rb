Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/users" => "users#index"
  post "/users" => "users#create"
  get "/users/:id" => "users#show"
  patch "/users/:id" => "users#update"
  delete "users/:id" => "users#destroy"

  post "/sessions" => "sessions#create"

  post "/reports" => "reports#create"

  get "/reports" => "reports#index"
  get "/reports/:id" => "reports#show"

  get "/reports" => "reports#index"
end
