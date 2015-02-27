Rails.application.routes.draw do

  root 'companies#index'

  resources :companies, only: [:show] do
    resources :events, only: [:index, :new, :create]
  end
end
