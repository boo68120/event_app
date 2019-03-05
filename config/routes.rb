Rails.application.routes.draw do
  resources :events
  root 'events#index'

  resources :equipment
  get 'equipment/create'
  
end
