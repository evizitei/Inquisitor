Inquisition::Application.routes.draw do
  resources :students

  resources :quizzes

  devise_for :users

  root :to => "quizzes#index"
end
