#User one = User.new(:name => "Huda")

Given /the following member exists/ do |members_table|
    #@hashes = []
    one = User.new 
    one.name = "Huda"
    one.email = "sampleofficer@gmail.com"
    one.major = "CS"
    one.status = "active"
    one.is_officer = 0 
    one.sem_hours = 5
    one.total_hours = "10"
    
    two = User.new 
    two.name = "Hudo"
    two.email = "jaao@berkeley.edu"
    two.major = "CS"
    two.status = "active"
    two.is_officer = 1
    two.sem_hours = 5
    two.total_hours = "10"
    @hashes = [one, two]
   
  
end 

And /^I click the edit button$/ do 
  a= 0 
end 

 
When(/^I fill in the name with ' '$/) do
  member_one = @hashes[0]
  member_one.editName('')
  expect(member_one.name == "Error: Put a name longer than one letter").to be(true)
  
end

Then(/^I fill in the name with (“.*”)$/) do |value|
    member_one = @hashes[0] 
    member_one.editName(value)  
    if (member_one.name == value)
      true  
    end 
end

When(/^I fill in the ranking to officer$/) do
  member_one = @hashes[0]
  member_one.updateRanking(1)
  member_one.updateStatus(1, "active")
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

 
 

Then(/^I should see name updated with "([^"]*)"$/) do |arg1|
  index_two = arg1.length 
  s2 = (@hashes[0].name)[1..index_two]
  if s2 == arg1 
    true 
  end  
end

Then(/^I fill in the description with "([^"]*)"$/) do |arg1|
  if arg1.length != 0 
    member_one = @hashes[0] 
    member_one.editDescription(arg1)
    #member_one.editName(value) 
    if (member_one.description == arg1)
      true  
    end 
  end
end

Then(/^I should see description updated with "([^"]*)"$/) do |arg1|
  if @hashes[0].description == arg1 
    true 
  end 
end


Then(/^I fill in semester hours with (\d+)$/) do |arg1| 
  @hashes[0].is_officer = 0 
  @hashes[0].updateSemHours(1 , arg1)
end

Then(/^as an officer, I fill in semester hours with (\d+)$/) do |arg1|
  @hashes[0].is_officer = 1
  @hashes[0].updateSemHours(1 , arg1)
end

Then(/^as not an officer, I should see semester hours updated with "([^"]*)"$/) do |arg1|
  if @hashes[0].sem_hours.to_s == arg1 
    true
  end 
end

Then(/^as an officer, I should see semester hours updated with "([^"]*)"$/) do |arg1| 
    @hashes[0].sem_hours.to_s == arg1 
end

Then(/^I fill in total hours with (\d+)$/) do |arg1|
    @hashes[0].is_officer = 0 
    # need to check if I'm an officer or not 
    bool_val = @hashes[0].isOfficer
    @hashes[0].updateTotalHours(1, arg1)
end

Then(/^I should see total hours updated with "([^"]*)"$/) do |arg1|
  @hashes[0].total_hours.to_s == arg1 
end


When(/^as an officer, I fill in total hours with (\d+)$/) do |arg1|
    @hashes[0].is_officer = 1  
    bool_val = @hashes[0].isOfficer
    @hashes[0].updateTotalHours(1, arg1)
end

Then(/^as an officer, I should see total hours updated with "([^"]*)"$/) do |arg1|
  @hashes[0].total_hours.to_s == arg1 
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