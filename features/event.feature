Feature: create events 
 
  As an officer
  So that I can monitor the calendar page 
  I want to create events for info of meetings and events. 


Background: member in database
	Given the following member exists:
	|name			| email							| major		| status	| is_officer	| sem_hours	| total_hours	|
	|Huda			| jdoe@berkeley.edu	| CS			| active	| 0						| 5					| 10					|

Scenario: edit the page's name 
  	Given I am logged in    
    Then I create the event with name "Meeting 1", DateTime.new(2016,12,6), location "Sproul" 
    And I edit the name "Meeting 2"
    Then I should see the name as "Meeting 2"

Scenario: edit the page's date
  	Given I am logged in   
    Then I create the event with name "Meeting 1", DateTime.new(2016,12,6), location "Sproul" 
    And I edit the date DateTime.new(2016,12,7)
    Then I should see the date as DateTime.new(2016,12,7)
  
 Scenario: edit the page's location
  	Given I am logged in 
    Then I create the event with name "Meeting 1", DateTime.new(2016,12,6), location "Sproul"
    And I edit the location "Dwinelle Hall"
    Then I should see the location as "Dwinelle Hall"

  
 Scenario: edit the page's description
  	Given I am logged in 
    Then I create the event with name "Meeting 1", DateTime.new(2016,12,6), location "Sproul"
    And I edit the description "second meeting"
    Then I should see the description as "second meeting"