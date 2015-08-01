Rails.application.routes.draw do
  root 'static_pages#index'
  resources :bills, only: [:new, :show, :create]
end
