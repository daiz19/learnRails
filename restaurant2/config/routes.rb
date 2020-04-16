Rails.application.routes.draw do
  get 'budgets/top'
  post 'budgets/result'
  get 'homes/top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'homes#top'

  get 'homes/about'
end
