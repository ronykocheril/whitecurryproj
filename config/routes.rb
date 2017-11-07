Rails.application.routes.draw do

  root to: 'products#index'
  get 'products/index'

  get 'products/shirts' to 'products#shirts'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
