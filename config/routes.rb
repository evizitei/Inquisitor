Inquisition::Application.routes.draw do
  resources :students

  resources :quizzes do
    resources :questions
  end

  devise_for :users

  root :to => "quizzes#index"
end
