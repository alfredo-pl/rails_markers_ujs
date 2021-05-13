Rails.application.routes.draw do
  
  resources :markers
  resources :categories
  resources :types
  get 'data-categories' , to: 'categories#data_categories'
  root "maker#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
