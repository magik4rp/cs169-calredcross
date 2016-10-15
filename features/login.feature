Feature: log in to user account
 
  As a member
  So that I can sign up and log in to the user account
  I want to include and serach on director information in movies I enter
  
  As an officer
  So that I can sign up with a special passphrase and log in
  I want to be able to change passphrase
  I want to be able to update member status and promote members
 
Background: members in database
 
  Given the following members exist:
  | name     | role    | hours  | status   |
  | Iverson  | member  | 3      | inactive |
  | Bryant   | member  | 24     | inactive |
  | Jordan   | member  | 23     | inactive |

 
Scenario: officer signs up
  When I go to the login page
  And  I check "I am an officer"
  And  I fill in "name" with "Curry"
  And  I fill in "email" with "curryofficer@gmail.com"
  And  I fill in "password" with "sc30forthewin"
  And  I fill in "special passphrase" with "DubsNation"
  And  I press "Sign Up"
  Then I should be on successful sign up page
  
Scenario: members sign up
  When I go to the login page
  And  I check "I am a member"
  And  I fill in "name" with "James"
  And  I fill in "email" with "jamesmember@gmail.com"
  And  I fill in "password" with "gswbetterthancavs"
  And  I press "Sign Up"
  Then I should be on pending for officer approval page
 
Scenario: officer approves a member
  Given I am the officer
  And   I am on the pending approval page
  When  I follow "Approve this member request"
  Then  I should be on the approval successful page
 
Scenario: officer promotes a member
  Given I am an officer
  And   I am on members page
  Then  I see all members
  When  I follow "promote member: Iverson"
  And   I follow "Iverson role"
  Then  I should see "officer"