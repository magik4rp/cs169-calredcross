#User one = User.new(:name => "Huda")

Given /the following member exists/ do |members_table|
    @hashes = []
    members_table.hashes.each do |member|
    # each returned element will be a hash whose key is the table header.
    # Add members to the database.
   # User.create(member)
    @hashes.append(User.create(member))
    #Members.create(members_table)
  end
end 

And /^I click the edit button$/ do 
  a = 0 
end 

When(/^I hover over the email$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I fill in the name with (“.*”)$/) do |value|
  if value.length != 0 
    member_one = @hashes[0]
    one = member_one.name
    member_one.name = value  
  else 
    flash[:message] = "Error: No name"
  end 
end


Then(/^I fill in the name with "([^"]*)"$/) do |arg1|
  if arg1.length == 0
      @stringOne = "Error: No Name"
  end 
end

Then(/^I will get the message of "([^"]*)"$/) do |arg1|
  @stringOne == "Error: No Name"
end

Then(/^I should see name updated with "([^"]*)"$/) do |arg1|
  if @hashes[0].name == arg1 
    true 
  end 
 # Write code here that turns the phrase above into concrete actions
end

Then(/^I fill in the description with "([^"]*)"$/) do |arg1|
  
  if arg1.length != 0 
    member_one = @hashes[0]
    one = member_one.description
    member_one.name = arg1 
  else 
    flash[:message] = "Error: No name"
  end 
end

Then(/^I should see description updated with "([^"]*)"$/) do |arg1|
  if @hashes[0].description == arg1 
    true 
  end 
end


Then(/^I fill in semester hours with (\d+)$/) do |arg1|
  member_one = @hashes[0]
  one = member_one.sem_hours
  member_one.sem_hours = arg1 
end

Then(/^I should see semester hours updated with "([^"]*)"$/) do |arg1|
  if @hashes[0].sem_hours == arg1 
    true
  end 
end

Then(/^I fill in total hours with (\d+)$/) do |arg1|
    member_one = @hashes[0]
    one = member_one.total_hours
    member_one.total_hours = arg1 
end

Then(/^I should see total hours updated with "([^"]*)"$/) do |arg1|
  if @hashes[0].total_hours == arg1 
    true
  end 
end

 