Rails.application.routes.draw do
  get 'todo/:todo_id', to: 'todos#show', as: 'todo'
  patch 'todos/:todo_id', to: 'todos#update', as: 'update_todo'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'tasks#index'
end
