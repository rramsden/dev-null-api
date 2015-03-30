Rails.application.routes.draw do
  resources :storage, only: [:create, :show, :update, :destroy]
end
