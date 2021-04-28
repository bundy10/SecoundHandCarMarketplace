Rails.application.routes.draw do
  get 'shopping_cart/show'
  get 'shopping_cart/edit'
  get 'shopping_cart/new'
  get 'shopping_cart/destroy'
  get 'shopping_cart/index'
  get 'shopping_cart/update'
  get 'shopping_cart/create'
  get 'line_items/show'
  get 'line_items/edit'
  get 'line_items/new'
  get 'line_items/destroy'
  get 'line_items/index'
  get 'line_items/update'
  get 'line_items/create'
  get 'cars/new'
  get 'cars/create'
  get 'cars/update'
  get 'cars/edit'
  get 'cars/destroy'
  get 'cars/index'
  get 'cars/show'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end


