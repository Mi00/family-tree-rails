Rails.application.routes.draw do
  devise_for :users
  get 'users/index', to: 'users#index', as: 'users'
  get 'users/:id/show', to: 'users#show', as: 'user'
  get 'users/:id/edit', to: 'users#edit', as: 'edit_user'
  patch 'users/:id/show', to: "users#update", action: :update
  delete 'users/:id', to: 'users#destroy', as: 'destroy_user'
  root to: 'users#homepage'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
