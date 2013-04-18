Given /^I am on the homepage$/ do
  visit "/"
end

Given(/^I fill in "(.*?)" with "(.*?)"$/) do |element, text|
  fill_in element, with: text
end

Given(/^I (?:press|follow) "(.*?)"$/) do |element|
  click_on element
end

Then(/^I should see "(.*?)"$/) do |text|
  page.should have_content text
end

Then(/^I should not see "(.*?)"$/) do |text|
  page.should_not have_content text
end

Given(/^I delete within line with "(.*?)"$/) do |text|
  element = find("tr.row-#{text.downcase.split.join("_")}")
  element.click_link("Delete")
end
