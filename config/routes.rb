Rails.application.routes.draw do
  get 'categories/index'

  get 'categories/new'

  get 'categories/show'

  get 'categories/edit'

  get 'categories/form'

  get 'lost_items/index'

  get 'lost_items/show'

  get 'lost_items/new'

  get 'lost_items/edit'

  get 'lost_items/form'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
