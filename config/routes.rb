Rails.application.routes.draw do

  get '/category/:id', to: "products#category", as: 'category', number: /\d+/
  get '/all', to: "products#index"

  get '/new', to: 'products#new', as: 'new'

  get '/search', to: "products#search", as: 'search'

  get '/products/:id', to: 'products#products_page', as: 'pp', number: /\d+/

  post '/cart/:id', to: 'cart#this_cart', as: 'cart', number: /\d+/

  get '/cart/show', to: 'cart#show', as: 'show'


  root to: 'products#index'
  get 'products/index'

  # get 'products/shirts' to 'products#shirts'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
