# Iteration 4: 

Feature: home page 
	As an officer
    I want to be able to edit the home page
    So I can provide information on events and announcements coming up 
    
    
Scenario: officer tries to edit for announcements
  When I am on the home page
  And I click Edit button for announcements 
  Then I should change text to say "Hi!"
  
Scenario: officer tries to edit for Officer of Month
  When I am on the home page
  And I click Edit button for officer of month 
  And I should upload photo "person.jpg"
  And I upload text "Great member"
  Then I should see photo as "person.jpg"
  And text as "Great member"
  
Scenario: member tries to edit #sad path
    
    Given I am a member 
    When I am on the home page 
    Then I should not see any edit buttons
  
  
