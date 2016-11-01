# Iteration 2
Feature: profile page
  As a user 
  I want to be able to view events and edit reflections
  So that I can keep track of the user stories and information.
  
  
Background: member in database
	Given the following member exists:
	| email			| year		| major		| years in club |
	| jdoe@berkeley.edu	| senior		| CS		| 2		|
 
	

Scenario: user clicks on calendar event 
  When I am on the profile page 
  And I click on an event in the calendar section
  And I am on the event popup
  And I type in "haaai" 
  And I press "Save" button
  Then I should see an updated reflection with "haaai" in it 
  
Scenario: sad path user clicks on calendar date, no event
  When I am on the profile page
  And I click on the date of October 20th 
  Then I should see "No event on this date"