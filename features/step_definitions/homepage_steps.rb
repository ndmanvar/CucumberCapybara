Given 'I am on the priceline homepage' do
  visit "http://www.priceline.com"
end

Then /^I should see a tab entry for "(.*)"$/ do | section |
  page.find(:xpath, "//*[contains(@id, 'tab-')][contains(text(), '#{section}')]").visible?.should == true
end

Then /^I should see the "(.*)" form$/ do | section |
  page.find(:id, "#{section.downcase}-form").visible?.should == true
end

Then 'I should see the Express Deals section' do
  page.find(:css, '.xdeals-container').visible?.should == true
end

