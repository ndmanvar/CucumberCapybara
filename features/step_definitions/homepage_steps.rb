Given /^I am on github homepage$/ do
  visit "http://www.github.com"
end


Then /^the title of the page should be "(.*)"$/ do | titleText |
  expect(page).to have_title titleText
end
