Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'subjects/index'
  get 'subjects/show/:id' => 'subjects#show', as: :subjects_show
  post 'subjects/create' => 'subjects#create'
end
