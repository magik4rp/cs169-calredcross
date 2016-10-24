Feature: profile page
	As a user 
    I want to be able to edit my information
    So that both members and officers can keep track of important information in the profile.

Background: member in database
	Given the following member exists:
	| email			| year		| major		| years in club |
	| jdoe@berkeley.edu	| senior		| CS		| 2		|

Scenario: user updates email
    When I am on the profile page 
	And I hover over the email
	And I click on “Edit” button
	And I fill in email with “huda@berkeley.edu”
	And I click “Save”
	Then I see new email updated in my profile page

Scenario: user updates year
    When I am on the profile page 
	And I hover over the year
	And I click on “Edit” button
	And I fill in year with “Junior”
	And I click “Save”
	Then I see new year updated in my profile page

Scenario: user updates major
    When I am on the profile page 
    And I hover over the year 
	And hover to the major
	And I click on “Edit” button
	And I fill in major with “Psychology”
	And I click “Save”
	Then I see new major updated in my profile page

Scenario: user updates years in club
    When I am on the profile page
	And I hover over the years in club
	And I click on “Edit” button
	And I fill in years in club with 3
	And I click “Save”
	Then I see new years in club updated in my profile page