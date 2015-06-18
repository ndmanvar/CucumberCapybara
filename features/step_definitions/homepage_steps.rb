Given /^I am on Dollar Shave Club homepage$/ do
  visit "http://www.dollarshaveclub.com/"
end

Then /^I should see the "(.*)" link in the toolbar$/ do | linkName |
  page.find(:css, ".wide-only.links .#{linkName.downcase.gsub(' ', '-')}").visible?.should == true
end
