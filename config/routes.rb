DeltaChan::Application.routes.draw do

  namespace :admin do
    root to: "dashboard#index"
    resource :session, only: [:new, :create, :destroy]
    resources :users, only: [:new, :create, :destroy, :index]
    resources :sections
  end

  root to: "main#index"

  resources :messages, only: [:show, :create]

  resources :sections, path: '', only: [:show] do
    resources :topics, only: [:show, :create]
  end

end
