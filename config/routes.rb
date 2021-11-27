Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show] #追記 ユーザーマイページへのルーティング

  root 'posts#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :posts do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create]
  end
end