Rails.application.routes.draw do
  get 'users/index'
  devise_for :users
  get 'areas/index'
  root "areas#index"
  resources :users, only: [:edit, :update]
  resources :areas, only: [:index, :show] do
    resources :comments, only: :create
  end
end
