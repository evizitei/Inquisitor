class ApplicationController < ActionController::Base
  protect_from_forgery
  
protected
  def load_quiz
    @quiz = Quiz.find(params[:quiz_id])
  end
end
