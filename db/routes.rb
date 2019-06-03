Rails.application.routes.draw do
    get 'subjects/index'
    get 'subjects/show/:id'
    post 'subject/create' => 'subject#create'
end
