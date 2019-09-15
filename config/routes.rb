Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'subjects#index'
  get 'subjects/index'
  get 'posts/search' => 'posts#search', as: :post_search
  get 'subjects/show/:id' => 'subjects#show', as: :subjects_show
  post 'subjects/create' => 'subjects#create'
  post 'posts/create' => 'posts#create', as: :post_create
end
