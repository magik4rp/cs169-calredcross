#Iteration 4: 


Feature: calendar page 
	As an officer/member
    I want to be able to edit/view the calendar 
    So I can see the events we are hosting  

Background: member in database
	Given the following member exists:
	|name			| email							| major		| status	| is_officer	| sem_hours	| total_hours	|
	|Huda			| jdoe@berkeley.edu	            | CS	    | active	| 0				| 5			| 10			|
    |Phoebe         | phoebe@berkeley.edu           | CS        | active    | 1             | 0         | 10            |



Scenario: as an officer, should have same events on calendar site as GoogleCalendar
    
    Given there is an event called "Meeting 1" on personal Google Calendar with date "3/31/1999"
	When I go to the calendar page
	Then I should see the event called "Meeting 1" on official Google Calendar with date "3/31/1999"
	
	
Scenario: as a member, if I RSVP to event on Calendar, I should have it show up on personal timeline

    When I go to the calendar page 
    And I RSVP to event called "Meeting 2" 
    Then on my profile page I should see "Meeting 2" with date "3/13/2016"
    
    