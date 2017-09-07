Rails.application.routes.draw do
  root 'lost_items#index'
  resources :lost_items, :categories
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
