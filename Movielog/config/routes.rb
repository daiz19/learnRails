Rails.application.routes.draw do
  resources :works do
    get 'higher' => 'works#move_higher', as: 'higher', on: :member
  end
  resources :directors
  
  root 'works#index'
end
