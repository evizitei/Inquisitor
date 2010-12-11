Feature: Managing the quizzes in the system
   as an administrator
   I want to create and edit quizzes
   in order to keep our training program current
   
   Scenario:  creating a new test
     Given I log in with "jcreamer@bcfdmo.com" and "firedistrict"
       And I am on the quiz index page
      When I follow "New Quiz"
        And I fill in "Name" with "Blood Bourne Pathogens"
        And I fill in "Pass percentage" with "70"
        And I press "Create Quiz"
      Then I should be on the quiz index page
        And I should see "Blood Bourne Pathogens"