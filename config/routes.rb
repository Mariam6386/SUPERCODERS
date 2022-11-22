Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "devs/new", to: "devs#new"

  resources :devs, only: [:index, :show] do
    resources :jobs, only: [:new, :create]
  end

end
