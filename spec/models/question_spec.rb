require 'spec_helper'

describe Question do
  describe "randomizing answers" do
    
    it "should not order the answers the same way twice" do
      question = Factory(:question)
      question.randomized_answers.should_not == question.randomized_answers
    end
  end
end
