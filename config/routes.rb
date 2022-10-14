Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # lists tasks
  root to: 'tasks#index'

  # show create form
  get 'tasks/new', to: 'tasks#new'

  # lists one taks
  get 'tasks/:id', to: 'tasks#show', as: :task

  # create a task
  post 'tasks', to: 'tasks#create'

  # show edit form
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit

  # update task
  patch 'tasks/:id', to: 'tasks#update'

  # destroy task
  delete 'tasks/:id', to: 'tasks#destroy'
end
