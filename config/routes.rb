Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/create'
  devise_for :users
  root to: "pages#home"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "devs/new", to: "devs#new"
  post "devs", to: "devs#create"

  resources :jobs, only: [:index]
  resources :devs, only: [:index, :show, :new, :create] do
    resources :jobs, only: [:new, :create, :show] do
      resources :reviews, only: [:create, :new]
    end
  end
end
