And 'I click the Do It button' do
  page.find(:css, '.doit')
end

Then /^I should see "The Humble Twin" product header$/ do | productName |
  page.find(:xpath, "//*[contains(@class, 'product-name') and contains(text(), '#{productName}')]").visible? == true
end
