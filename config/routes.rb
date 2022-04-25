Rails.application.routes.draw do
  # Budget CRUD routes
  get "/budgets" => "budgets#index"
  get "/budgets/:id" => "budgets#show"
  post "/budgets" => "budgets#create"
  patch "/budgets/:id" => "budgets#update"
  delete "/budgets/:id" => "budgets#destroy"
  # Finance CRUD routes
  get "/finances" => "finances#index"
  get "/finances/:id" => "finances#show"
  post "/finances" => "finances#create"
  patch "/finances/:id" => "finances#update"
  delete "/finances/:id" => "finances#destroy"
  # Purchase CRUD routes
  get "/purchases" => "purchases#index"
  get "/purchases/:id" => "purchases#show"
  post "/purchases" => "purchases#create"
  patch "/purchases/:id" => "purchases#update"
  delete "/purchases/:id" => "purchases#destroy"
  # User CRUD routes
  get "/users" => "users#index"
  get "/users/:id" => "users#show"
  post "/users" => "users#create"
  patch "/users/:id" => "users#update"
  delete "/users/:id" => "users#destroy"
end
