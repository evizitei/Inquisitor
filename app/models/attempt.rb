class Attempt < ActiveRecord::Base
  belongs_to :student
  belongs_to :quiz
  
  serialize :wrong_answers
  
  class << self
    def to_pass_quiz(quiz,student,answers)
      attempt = Attempt.create(:quiz=>quiz,:student=>student)
      attempt.grade!(answers)
    end
  end
  
  def grade!(answers)
    wrong_answer_list = []
    answers.each do |id,answer|
      question = Question.find(id)
      if answer != question.correct_answer
        wrong_answer_list << {:question=>question.prompt,
                              :correct_answer=>question.correct_answer,
                              :given_answer=>answer}
      end
    end
    self.wrong_answers = wrong_answer_list
    self.percent_correct = 100.0 - ((wrong_answers.size.to_f / quiz.questions.count.to_f) * 100.0)
    
    self.save!
    return self
  end
end
