#Scenario: Registering

Given(/^I am on the homepage$/) do
  visit('/')
end

When(/^I follow "(.*?)"$/) do |arg1|
  click_link('New Game')  
end

Then(/^I should see "(.*?)"$/) do |arg1|
  page.should have_content("What's your name?")
end

#Scenario: No name given

Given(/^I am on the player page$/) do
  visit('/player')
end

And(/^I don't type a "(.*?)"$/) do |name|
  fill_in 'name', :with => ''
end

When(/^I click on "(.*?)"$/) do |link|
  click_on(link)
end

Then(/^I should be "(.*?)"$/) do |arg1|
  page.should have_content("Please enter a name:")
end

#Scenario: Start playing

Given(/^I visit the player page$/) do
  visit('/player')
end

When(/^I fill in the "(.*?)"$/) do |name|
  fill_in 'name', :with => 'a'  
end

When(/^I click "(.*?)"$/) do |link|
  click_on(link)
end

When(/^I click the link "(.*?)"$/) do |arg1|
  click_link('Play the game')  
end

Then(/^I should be able to see "(.*?)"$/) do |arg1|
  page.should have_content("Placeholder")
end 