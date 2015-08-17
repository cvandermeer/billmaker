Rails.application.routes.draw do
  root 'bills#new'
  resources :bills, only: [:show, :create, :update] do
    resources :competences, only: [:show, :create]
  end
end
