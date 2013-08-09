StackOverflowClone::Application.routes.draw do

  resources :questions do
    resources :answers
  end

  resources :users
  get '/login', to: 'sessions#new'

  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/users/:user_id/questions', to: 'user_questions#index', as: 'user_questions'
  get '/users/:user_id/answers', to: 'user_answers#index', as: 'user_answers'

  root to: 'pages#index'
end
