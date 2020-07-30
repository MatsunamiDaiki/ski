Rails.application.routes.draw do
  devise_for :users
  root "areas#index"
  resources :users, only: [:edit, :update]
  resources :areas, only: [:index, :show] do
    resources :comments, only: :create 
      collection do
        get 'search'
      end
   end
end  
