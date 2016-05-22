Rails.application.routes.draw do
  root 'welcome#index'
  resource :recipe, only:[:new]
end
