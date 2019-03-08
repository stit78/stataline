Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'index', to: 'selection#index', as: :index
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
