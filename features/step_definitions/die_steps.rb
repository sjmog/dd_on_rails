require "capybara/rspec"
require 'cucumber/rspec/doubles'

Given(/^any die will randomly roll a (\d+)$/) do |result|
  Dice::D.any_instance.stub(:roll_sides).and_return(result)
end

Then(/^I should see no other dice results than ([d]\d{1,3})$/) do |dN|
  Dice::D20.each do | dX |
    expect(page).not_to have_content(dX.to_s << "_result") unless dX.to_s == dN
  end
end