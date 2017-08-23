Rails.application.routes.draw do
  resources :equipment
  resources :inventaries
  resources :items
  resources :status_change_resistances
  resources :quasi_stats
  resources :sub_stats
  resources :stats
  resources :jobs
  resources :characters
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
