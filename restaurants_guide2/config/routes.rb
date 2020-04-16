Rails.application.routes.draw do
  get 'restaurants_guide2/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants
end
