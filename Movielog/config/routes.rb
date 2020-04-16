Rails.application.routes.draw do
  resources :works

  
  root 'works#index'
end
