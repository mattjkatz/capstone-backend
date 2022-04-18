Rails.application.routes.draw do
  get "/budgets" => "budgets#index"
  get "/budgets/:id" => "budgets#show"
  post "/budgets" => "budgets#create"
  patch "/budgets/:id" => "budgets#update"
  delete "/budgets/:id" => "budgets#destroy"
end
