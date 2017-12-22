Rails.application.routes.draw do
  root to: "pages#home"


  devise_for :users



  resources :users, only: [:show] do
    resources :purchases, only: [:show, :edit, :update]
  end

  resources :profiles, only: [:new, :edit, :create, :update]

  resources :categories do
    resources :products
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
