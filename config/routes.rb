Rails.application.routes.draw do
  devise_for :users
  get 'pages/about'
  get 'pages/terms'
  root "articles#index"
  # get 'terms/index'
  # get 'about/index'
  # get "/contacts", to: "contacts#new"
  # post "/contacts", to: "contacts#create"

  resources :articles  do
    resources :comments, only: [:create]
  end

  resources :contacts, only: [:new, :create], path_names: { new: '' }
  resources :terms, only: [:index]
  resources :about, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
