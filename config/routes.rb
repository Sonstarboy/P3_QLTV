Rails.application.routes.draw do
  resources :lendings
  resources :readers
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :books
  resources :roles
  devise_for :users
  root to: redirect('/admin')

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
