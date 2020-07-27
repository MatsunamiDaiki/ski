Rails.application.routes.draw do
  devise_for :users
  get 'areas/index'
  root "areas#index"
end
