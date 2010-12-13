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
  
  Scenario: taking a test
    Given the database is seeded
      And I am registered as the student with id "EV2345" 
    When I go to the quiz taking page for "Respiratory Protection"
      And I fill out the Respiratory Protection test perfectly
      And I press "Submit Quiz"
    Then I should have one quiz attempt for "EV2345" with a score of "100.0"
    
  Scenario:  passing a test
    Given the database is seeded
      And I am registered as the student with id "EV2345" 
    When I go to the quiz taking page for "Respiratory Protection"
      And I fill out the Respiratory Protection test perfectly
      And I press "Submit Quiz"
    Then I should see "Congratulations, you passed!"
    
  Scenario:  failing a test
    Given the database is seeded
      And I am registered as the student with id "EV2345" 
    When I go to the quiz taking page for "Respiratory Protection"
      And I fill out the Respiratory Protection test perfectly
      And I choose "true" within "#question_1"
      And I choose "false" within "#question_3"
      And I choose "false" within "#question_7"
      And I choose "false" within "#question_8"
      And I choose "true" within "#question_10"
      And I press "Submit Quiz"
    Then I should not see "Congratulations, you passed!"
      And I should see "Sorry"