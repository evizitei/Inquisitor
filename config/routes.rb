Inquisition::Application.routes.draw do
  resources :quizzes

  devise_for :users

  root :to => "quizzes#index"
end
