Rails.application.routes.draw do
  get "posts/new"
  get "posts/create"
  get "posts/index"
  devise_for :users
  resources :posts
  root "posts#index"
end
