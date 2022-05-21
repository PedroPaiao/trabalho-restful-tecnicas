Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :alunos

  delete '/alunos', to: 'alunos#destroy_alunos'
  put '/alunos', to: 'alunos#destroy_alunos'
  post '/alunos/:id', to: 'alunos#post_some_aluno'

  # Defines the root path route ("/")
  root "alunos#index"
end
