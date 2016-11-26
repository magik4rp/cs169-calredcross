# Add a declarative step here for populating the DB with members.

Given /the following members exist/ do |members_table|
  #pending
  members_table.hashes.each do |member|
    # each returned element will be a hash whose key is the table header.
    # Add members to the database.
    User.create(member)
    #Members.create(members_table)
  end
end

Then /^I see all members/ do
  # Make sure that all the members in the members table are visible.
  Users.all
end



And /I fill in name with (".*")/ do |value|
  fill_in "user_name", :with => value
end 

When(/^I fill in the avatar with “one\.jpg”$/) do
  val_one = @hashes[0]  
  val_one.editAvatar("one.jpg")
end

And /I fill in major with (".*")/ do |value|
  fill_in "user_major", :with => value 
end 


And /I fill in email with (".*")/ do |value|
  fill_in "user_email", :with => value
end 

And /I fill in password with (".*")/ do |value| 
  fill_in "user_password", :with => value 
end 


And /^I am on (".*") page/ do 
  pending 
end 

#And /I check (".*")/ do 
#  pending 
#end 

Then /I should be (".*")/ do 
  pending 
end 
  
Then /I see all of members/ do
  @members = Users.all
  num_rows = page.all("table#members tbody tr").count
  expect(num_rows).to eq(@members.size)
end

Given(/^there is an event called "([^"]*)" on personal Google Calendar with date "([^"]*)"$/) do |arg1, arg2|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see the event called "([^"]*)" on official Google Calendar with date "([^"]*)"$/) do |arg1, arg2|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I RSVP to event called "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^on my profile page I should see "([^"]*)" with date "([^"]*)"$/) do |arg1, arg2|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I click Edit button for announcements$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should change text to say "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I click Edit button for officer of month$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I should upload photo "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I upload text "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see photo as "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^text as "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^I am a member$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should not see any edit buttons$/) do
  pending # Write code here that turns the phrase above into concrete actions
end


#Given /^I am (".*") officer (".*")/ do
#  a = 0
  #pending
#end

Given(/^I am the officer$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
 

Given(/^I am an officer$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
 
#When /I check "I am an officer"/ do
#  pending
#end


Then /I should be on the (".*") page/ do
  pending
end

 
And /I am on members page(".*")/ do
  pending
end



