Rails.application.routes.draw do
  root 'bills#new'
  get 'static_pages/index', to: 'static_pages#index'
  resources :bills, only: [:new, :show, :create]
end
