Rails.application.routes.draw do
  root 'static_pages#home'

  get '/about' => 'static_pages#about', as: :about

  resources :posts do
    resources :comments, only: [:create, :destroy]
  end
  devise_for :users
end
