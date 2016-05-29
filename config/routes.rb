Rails.application.routes.draw do
  root 'recipes#index'
  resources :recipes, only:[:new, :create, :show]
  resources :kitchens, only:[:new, :create, :show]
  resources :meals, only:[:new, :create, :show]
end
