Rails.application.routes.draw do
  # resources :votes, only: [:create, :destroy]
  resources :categories
  # resources :articles
  #root 'pages#home'
  root 'articles#index'
  devise_for :users
  resources :articles do
    resources :votes, only: [:create, :destroy]
  end
  delete '/articles/:article_id/votes/', to: 'votes#destroy', as: 'delete_article_vote'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
