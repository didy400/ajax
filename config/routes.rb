Rails.application.routes.draw do
  get 'email/index'
  devise_for :users
  root to: "email#index"
  resources :email, :tasks, except: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
