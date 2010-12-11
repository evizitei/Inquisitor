Feature: Managing the quizzes in the system
   as an administrator
   I want to create and edit quizzes
   in order to keep our training program current
   
   Scenario:  creating a new test
     Given I log in with "jcreamer@bcfdmo.com" and "firedistrict"
       And there is a quiz named "Respiratory Protection"
       And I am on the quiz index page
      When I follow "Show"
        And I follow "Questions"
        And I follow "New Question"
        And I fill in "Prompt" with "What is your name?"
        And I fill in "Correct answer" with "Ethan"
        And I fill in "Distractor 1" with "Steve"
        And I fill in "Distractor 2" with "Buster"
        And I fill in "Distractor 3" with "Riggins"
        And I press "Create Question"
      Then I should be on the question index page for "Respiratory Protection"
        And I should see "What is your name?"