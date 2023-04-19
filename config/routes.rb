Rails.application.routes.draw do
  get 'user/update'
  get 'books/index'
  get 'books/new'
  get 'books/create'
  get 'books/edit'
  get 'books/destroy'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
