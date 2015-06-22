And /^I type "(.*)" into the "(.*)" field in the "(.*)" tab$/ do | text, fieldName, formName |
  page.find(:xpath, "//*[@id='#{formName.downcase}-form']//*[contains(text(), '#{fieldName}')]//input").set(text)
end

And 'I click on the first suggestion' do
  sleep 5
  page.first(:css, "ul.ui-autocomplete li").click

end

And /^I click on the check in field in the "(.*)" tab$/ do | formName |
  page.find(:css, "##{formName.downcase}-form [name=checkInDate]").click
  sleep 3
end

And /^I click on "(.*)" of "(.*)" from the datepicker$/ do | day, month |
  page.find(:xpath, "//*[contains(@class, 'ui-datepicker-month')][contains(text(), '#{month}')]/ancestor::div[contains(@class, 'group')]//*[contains(text(), '#{day}')]").click
  sleep 3
end

And /^I click on the Search Hotels button in the "(.*)" tab$/ do | formName |
  page.find(:css, "##{formName.downcase} .button").click
end


Then /^I should see a hotel entry for "(.*)"$/ do | hotelName |
  page.first(:xpath, "//html//body//*[contains(text(), 'Holiday Inn Express')]")
end

