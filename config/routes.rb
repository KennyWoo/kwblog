Rails.application.routes.draw do
  get 'books/index'
  get 'home/index'
  root 'home#index'

  resources :articles do
    resources :comments
  end

  resources :books do
    resources :comments
  end

  resources :tutorials do
    resources :comments
  end
end
