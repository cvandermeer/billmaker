Rails.application.routes.draw do
  root 'bills#new'
  resources :bills, only: [:new, :show, :create, :update]
  get 'static_pages/index', to: 'static_pages#index'
end
