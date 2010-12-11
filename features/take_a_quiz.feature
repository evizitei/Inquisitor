Feature: Taking a quiz
  as a student
  I want to take this quiz
  so the training Bureau will stop hassling me
  
  Scenario:  logging into a test
    Given there is a quiz named "Respiratory Protection"
      And there is a student with ID "EV2345"
    When I go to the quiz start page for "Respiratory Protection"
      And I fill in "Id" with "EV2345"
      And I press "Start Quiz"
    Then I should be on the quiz taking page for "Respiratory Protection"
  
  Scenario:  getting rebuked for using a wrong ID
    Given there is a quiz named "Respiratory Protection"
      And there are no students in the system
    When I go to the quiz start page for "Respiratory Protection"
      And I fill in "Id" with "EV2345"
      And I press "Start Quiz"
    Then I should be on the quiz start page for "Respiratory Protection"
      And I should see "Your Id is invalid"
  
  Scenario: viewing a test
    Given the database is seeded
      And I am registered as the student with id "EV2345" 
    When I go to the quiz taking page for "Respiratory Protection"
    Then I should see "By OSHA standards you are allowed to have hair growth"
      And I should see "Any type of respirator will work in all type of gases and vapors"
    
        
