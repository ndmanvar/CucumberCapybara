And 'I click the Do It button' do
  page.first(:css, '.doit')
end

Then /^I should see "(.*)" product header$/ do | productName |
  page.find(:xpath, "//*[contains(@class, 'product-name') and contains(text(), '#{productName}')]").visible? == true
end
