Rails.application.routes.draw do
  resources :products
  resources :tasks
  
  resources :products do
    collection { post :search, to: 'products#index' }
  end
  root to: 'products#index'
end
