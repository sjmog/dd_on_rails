require "capybara/rspec"
require 'cucumber/rspec/doubles'

Given(/^I am on the "([^"]*)" page$/) do |url|
  visit(url)
end

When(/^I click "([^"]*)"$/) do |button|
  click_button(button)
end

Then(/^I should see "([^"]*)"$/) do |content|
  expect(page).to have_content(content)
end
