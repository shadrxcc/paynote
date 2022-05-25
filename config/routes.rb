Rails.application.routes.draw do
  resources :items, except: [:show, :edit, :update] do
    get :uncategorized, on: :collection
  end
  resources :groups
  devise_for :users
  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
