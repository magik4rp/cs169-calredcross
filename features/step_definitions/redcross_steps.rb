# Add a declarative step here for populating the DB with members.

Given /the following members exist/ do |members_table|
  members_table.hashes.each do |member|
    # each returned element will be a hash whose key is the table header.
    # Add members to the database.
    Members.create(members_table)
  end
end

Then /I see all members/ do
  # Make sure that all the members in the members table are visible.
  Members.all
end


Then /I see all members/ do
  @members = Members.all
  num_rows = page.all("table#members tbody tr").count
  expect(num_rows).to eq(@members.size)
end


Given /^PENDING/ do
  pending
end


When /I check "I am an officer"/ do
  pending
end

When /I follow/ do
  pending
end


When /I fill in/ do
  pending
end

When /I press/ do
  pending
end


