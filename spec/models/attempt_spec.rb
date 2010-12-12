require 'spec_helper'

describe Attempt do
  describe "taking a quiz" do
    let(:question_hash){{"1"=>"false", 
                         "2"=>"Quantitative", 
                         "3"=>"true", 
                         "4"=>"Cover the exhalation valve and exhale gently, looking for outward leakage", 
                         "5"=>"With the facepiece on inhale gently checking for leakage", 
                         "6"=>"Use clean breathing air ", 
                         "7"=>"true", 
                         "8"=>"false",
                         "9"=>"Dust mask", 
                         "10"=>"false"}}
    let(:attempt){ Attempt.to_pass_quiz(@quiz,@student,question_hash)}
    
    before(:each) do
      load "#{Rails.root}/db/seeds.rb"
      @student = Factory(:student)
      @quiz = Quiz.find_by_name "Respiratory Protection"
    end
    
    it "creates a new attempt" do
      attempt.should be_an Attempt
    end
    
    it "references the parent objects" do
      attempt.quiz.should == @quiz
      attempt.student.should == @student
    end
    
    it "produces a score" do
      attempt.percent_correct.should == 60.0
    end
    
    it "caches the wrong answers" do
      attempt.wrong_answers.should == [{:correct_answer=>"Wash in warm water with a mild detergent and rinse", :question=>"Cleaning the facepiece do you? ", :given_answer=>"Use clean breathing air "}, {:correct_answer=>"true", :question=>"Your medical records are kept confidential with the medical group.", :given_answer=>"false"}, {:correct_answer=>"SCBA-Self contained Breathing Apparatus", :question=>"What type of respiratory protective equipment would you wear into an IDLH atmosphere?", :given_answer=>"Dust mask"}, {:correct_answer=>"Cover air inlets to cartridges, air regulator openings ext and inhale gently so the facepiece collapses slightly and no inward leakage is detected", :question=>"How do you perform a facepiece negative pressure check? ", :given_answer=>"With the facepiece on inhale gently checking for leakage"}]
    end
  end
end
