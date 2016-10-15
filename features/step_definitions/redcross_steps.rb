# Add a declarative step here for populating the DB with members.

Given /the following members exist/ do |members_table|
  #pending
  members_table.hashes.each do |member|
    # each returned element will be a hash whose key is the table header.
    # Add members to the database.
    a = 0 
    #Members.create(members_table)
  end
end

Then /^I see all members/ do
  # Make sure that all the members in the members table are visible.
  Members.all
end

And /I am on the (".*") page/ do 
  pending 
end 

And /^I am on (".*") page/ do 
  pending 
end 

And /I check (".*")/ do 
  pending 
end 

Then /I should be (".*")/ do 
  pending 
end 
  
Then /I see all of members/ do
  @members = Members.all
  num_rows = page.all("table#members tbody tr").count
  expect(num_rows).to eq(@members.size)
end



Given /^I am (".*") officer (".*")/ do
  a = 0
  #pending
end

Given(/^I am the officer$/) do
  pending # Write code here that turns the phrase above into concrete actions
end


Given(/^I am on the pending approval page$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^I am an officer$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^I am on members page$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

#When /I check "I am an officer"/ do
#  pending
#end

When /I follow/ do
  pending
end


When /I fill in/ do
  pending
end

When /I press (.*)/ do
  pending
end

Then /I should see (".*")/ do
  pending
end

Then /I should be on the (".*") page/ do
  pending
end

When /I go to (.*)/ do |page_name|
  pending
end

Then /I should be on/ do 
  pending 
end 

And /I am on members page(".*")/ do
  pending
end



