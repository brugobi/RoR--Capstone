Rails.application.routes.draw do
  get 'votes/create'
  get 'votes/destroy'
  # resources :votes, only: [:create, :destroy]
  resources :categories
  resources :articles
  #root 'pages#home'
  root 'articles#index'
  devise_for :users
  resources :articles, only: [:index, :create] do
    resources :votes, only: [:create, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
