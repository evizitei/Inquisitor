When /^I fill out the Respiratory Protection test perfectly$/ do
  And "I choose \"false\" within \"#question_1\""
  And "I choose \"Quantitative\" within \"#question_2\""
  And "I choose \"true\" within \"#question_3\""
  And "I choose \"Cover the exhalation valve and exhale gently, looking for outward leakage\" within \"#question_4\""
  And "I choose \"Cover air inlets to cartridges, air regulator openings ext and inhale gently so the facepiece collapses slightly and no inward leakage is detected\" within \"#question_5\""
  And "I choose \"Wash in warm water with a mild detergent and rinse\" within \"#question_6\""
  And "I choose \"true\" within \"#question_7\""
  And "I choose \"true\" within \"#question_8\""
  And "I choose \"SCBA-Self contained Breathing Apparatus\" within \"#question_9\""
  And "I choose \"false\" within \"#question_10\""
  And "I press \"Submit Quiz\""
end

Then /^I should have one quiz attempt for "([^"]*)" with a score of "([^"]*)"$/ do |org_id, score|
  student = Student.find_by_organization_id(org_id)
  attempts = student.attempts
  attempts.size.should == 1
  attempts.first.percent_correct.should == score.to_f
end
