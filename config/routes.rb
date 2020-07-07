Rails.application.routes.draw do
  get "/", to: "homepage#home", as: "root"
  resources :pets
  resources :donations
  resources :posts
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
