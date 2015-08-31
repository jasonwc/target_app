Rails.application.routes.draw do
  root 'static_pages#home'

  get '/about' => 'static_pages#about', as: :about

  resources :posts
  devise_for :users
end
