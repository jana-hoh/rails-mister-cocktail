Rails.application.routes.draw do
  # get 'doses/new'
  # get 'doses/create'
  # get 'cocktails', to: 'cocktail#index'
  # get 'cocktails/:id', to: 'cocktail#show'
  # get 'cocktails/:id/new', to: 'cocktail#new'
  # post 'cocktails', to: 'cocktail#create'

  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:new, :create]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
