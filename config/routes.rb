StackOverflowClone::Application.routes.draw do

  resources :questions do
    resources :answers
  end

  root to: 'pages#index'
  resources :users
  get '/login', to: 'sessions#new'

  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/users/:user_id/questions', to: 'user_questions#index', as: 'user_questions'
  get '/users/:user_id/answers', to: 'user_answers#index', as: 'user_answers'
end



#why is the controller called user_questions_controller... did we used to have
#the (fuck the grammar there) questions nested inside of users?

# resources :users do
#   resources :questions do
#     resources :answers
#   end
# end
