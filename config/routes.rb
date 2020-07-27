Rails.application.routes.draw do
  get 'areas/index'
  root "areas#index"
end
