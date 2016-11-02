# Iteration 2:
Feature: profile page
	As a user 
    I want to be able to edit my information
    So that both members and officers can keep track of important information in the profile.

Background: member in database
	Given the following member exists:
	|name			| email							| major		| status	| is_officer	| sem_hours	| total_hours	|
	|Huda			| jdoe@berkeley.edu	| CS			| active	| 0						| 5					| 10					|

Scenario: user updates name
    When I am on the profile page 
    And I click on “Edit” button
    And I fill in name with “Huda Iftekhar”
		And I click "Edit" button 
		Then I should see name updated with "Huda Iftekhar"
	
# Sad path: invalid email (empty string)
Scenario: user updates name  
	When I am on the profile page
	And I click on "Edit" button  
	And I fill in name with ""
	And I click "Edit" button 
	Then I should see "Error: No name"  

Scenario: user updates description  
  When I am on the profile page 
	And I click on “Edit” button
	And I fill in description with "Hello World!" 
  And I click on "Edit" button 
	Then I see description updated with "Hello World!" 
