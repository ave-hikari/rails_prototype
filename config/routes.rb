Rails.application.routes.draw do
  get 'task/list'
  get 'task/new', to: 'task#new'
  post 'task/new', to: 'task#create'
  delete 'task/delete', to: 'task#delete'
  #
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
