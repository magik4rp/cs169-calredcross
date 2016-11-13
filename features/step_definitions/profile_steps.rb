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
  a= 0 
end 

 

Then(/^I fill in the name with (“.*”)$/) do |value|
  if value.length != 0 
    member_one = @hashes[0] 
    member_one.editName(:name =>value)
    #member_one.editName(value) 
    if (member_one.name == value)
      true
    else 
      false 
    end 
  else 
    member_one.editName(:name => value )
    expect(page.body).to eq("Error: No Name Entered")
  end 
end

When /^(?:|I )press "([^"]*)"$/ do |button|
  click_button(button)
end

Given /^(?:|I )am on (.+)$/ do |page_name|
  visit path_to(page_name)
end


When /^(?:|I )go to (.+)$/ do |page_name|
  visit path_to(page_name)
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
    member_one.editDescription(arg1)
    #member_one.editName(value) 
    if (member_one.description == arg1)
      true
    else 
      false 
    end 
  end
end

Then(/^I should see description updated with "([^"]*)"$/) do |arg1|
  if @hashes[0].description == arg1 
    true 
  end 
end


Then(/^I fill in semester hours with (\d+)$/) do |arg1|
  @hashes[0].updateSemHours(@hashes[0].email , arg1)
end

Then(/^I should see semester hours updated with "([^"]*)"$/) do |arg1|
  if @hashes[0].sem_hours == arg1 
    true
  else 
    false 
  end 
end

Then(/^I fill in total hours with (\d+)$/) do |arg1|
    @hashes[0].updateTotalHours(@hashes[0].email, arg1)
end

Then(/^I should see total hours updated with "([^"]*)"$/) do |arg1|
  if @hashes[0].total_hours == arg1 
    true
  end 
end

When(/^I like the photo "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see "([^"]*)" in the gallery section of the profile page$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I upload the photo "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I upload the text file "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see "([^"]*)" in the gallery page$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I fill in the semester hours for member "([^"]*)" with (\d+)$/) do |arg1, arg2|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^the total hours should be (\d+)$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^the semester hours should be (\d+)$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I fill in the semester hours for member "([^"]*)" with "([^"]*)"$/) do |arg1, arg2|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see message "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I click the status for member "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^the status for member "([^"]*)" should be "([^"]*)"$/) do |arg1, arg2|
  pending # Write code here that turns the phrase above into concrete actions
end