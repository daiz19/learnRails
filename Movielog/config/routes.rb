Rails.application.routes.draw do
  resources :works
  resources :directors
  
  root 'works#index'
end
