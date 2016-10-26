# Iteration 2
Feature: profile page
  As a user 
  I want to be able to view pictures with me in it 
  So that I can see pictures I am a part of.
  
Background: member in database
	Given the following member exists:
	| email			| year		| major		| years in club |
	| jdoe@berkeley.edu	| senior		| CS		| 2		|

Scenario: happy path: can see photo 
  When I am on the profile page 
  And I click on the "Photo1" photo 
  And I am on the picture popup 
  Then I can click and see my tag of "Jane Doe"
  
# no real sad path for this photo one 
