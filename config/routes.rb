Rails.application.routes.draw do
  # resources :votes, only: [:create, :destroy]
  resources :categories
  # resources :articles
  #root 'pages#home'
  root 'articles#index'
  devise_for :users
  resources :articles, only: %i[create index new show] do
    resources :votes, only: [:create, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
