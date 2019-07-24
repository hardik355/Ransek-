Rails.application.routes.draw do
  root 'posts#index'
  resources :posts

  resources :tasks
  # resources :products

  resources :products do
    collection { post :search, to: 'products#index' }
  end
  root to: 'products#index'
end
