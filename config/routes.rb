Rails.application.routes.draw do
  devise_for :users
  root 'dashboard#index'
  resources :products
  match "*path", to: redirect('/404.html'), via: [:all]
end