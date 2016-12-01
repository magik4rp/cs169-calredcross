# Iteration 2:
Feature: profile page
	As a user 
    I want to be able to edit my information
    So that both members and officers can keep track of important information in the profile.

Background: member in database
	Given the following member exists:
	|name			| email							| major		| status	| is_officer	| sem_hours	| total_hours	|
	|Huda			| jdoe@berkeley.edu	| CS			| active	| 0						| 5					| 10					|

Scenario: user updates avatar 
  	Given I am logged in 
    And I click the edit button 
    And I fill in the avatar with “one.jpg” 

Scenario: user updates name
    
	Given I am logged in  
    And I fill in the name with “Huda Iftekhar”
	Then I should see name updated with "Huda Iftekhar"
	
 #Sad path: invalid name (empty string)
Scenario: user updates name  
	Given I am logged in  
	And I fill in the name with ' '
	Then I will get the message of "Error: No name"   

Scenario: user updates description  
  	Given I am logged in 
	And I fill in the description with "Hello World!" 
	Then I should see description updated with "Hello World!" 