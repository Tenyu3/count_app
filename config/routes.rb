Rails.application.routes.draw do

  get "/" => "count#index"
  get "/increment" => "count#increment"
  get "/decrement" => "count#decrement"
  get "/reset" => "count#reset"
end
