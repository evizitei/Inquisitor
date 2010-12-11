Inquisition::Application.routes.draw do
  resources :students

  resources :quizzes do
    resources :questions
    resources :attempts do
      collection do
        get "authenticate"
        post "register"
      end
    end
  end

  devise_for :users

  root :to => "quizzes#index"
end
