Rails.application.routes.draw do
  get "/schema" => "schema#index"
  resources :storage
end
