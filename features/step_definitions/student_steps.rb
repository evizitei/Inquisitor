Given /^I am registered as the student with id "([^"]*)"$/ do |student_id|
  Given "there is a student with ID \"EV2345\""
  When "I go to the quiz start page for \"Respiratory Protection\""
  And "I fill in \"Id\" with \"EV2345\""
  And "I press \"Start Quiz\""
end