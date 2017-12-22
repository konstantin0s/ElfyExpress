Rails.application.routes.draw do
  root to: "pages#home"


  devise_for :users



  resources :users, only: [:show]
  resources :purchases, only: [:show, :edit, :update]

  resources :profiles, only: [:new, :edit, :create, :update]

  resources :categories, only: [:show]
  resources :products do
    resources :selections
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
