Rails.application.routes.draw do
  get 'votes/upvote'
  get 'votes/downvote'
  # resources :votes, only: [:create, :destroy]
  resources :categories
  resources :articles
  #root 'pages#home'
  root 'articles#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
