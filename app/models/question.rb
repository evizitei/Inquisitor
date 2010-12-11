class Question < ActiveRecord::Base
  belongs_to :quiz
  
  def answers
    [correct_answer,distractor_1,distractor_2,distractor_3].reject{|answer| answer.blank?}
  end
  
  def randomized_answers
    srand
    answers.sort_by{ rand }
  end
end
