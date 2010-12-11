Feature: Managing the students in the system
   as an administrator
   I want to create and edit students
   in order to keep track of who is taking these quizzes
   
   Scenario:  creating a new test
     Given I log in with "jcreamer@bcfdmo.com" and "firedistrict"
       And I am on the quiz index page
      When I follow "Students"
        And I follow "New Student"
        And I fill in "Name" with "Stephen Dunkin"
        And I fill in "student_organization_id" with "SD1234"
        And I press "Create Student"
      Then I should be on the student index page
        And I should see "Stephen Dunkin"