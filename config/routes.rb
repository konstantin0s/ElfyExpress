Rails.application.routes.draw do
  devise_for :users



  resources :users do
    resources :purchases, only: [:show, :edit, :update]
    resources :profiles, only: [:new, :edit, :create, :update]
  end
  resources :categories do
    resources :products
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
