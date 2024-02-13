Rails.application.routes.draw do
  get 'user/index'
  # get 'user/edit'
  # get 'profile/update'
  root 'auth#index'
  devise_for :users
  resources :user do
    resources :creditcards
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
