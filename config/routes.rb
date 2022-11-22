Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get "devs/new", to: "devs#new"
  post "devs", to: "devs#create"

  resources :devs, only: [:index, :show, :new, :create] do
    resources :jobs, only: [:new, :create]
  end
end
