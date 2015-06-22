Given "I am on the Pacific Dental Services homepage" do
    visit "http://pacificdentalservices.com/"
end

And /^I click on "(.*)" from the career oppurtunities in the sidebar$/ do | type |
    page.find(:xpath, "//ul[@class='layout']/li/a[text()='#{type}']").click
end

Then /^I should see "(.*)" selected in the sidebar$/ do | type |
    element = page.find(:css, "ul.layout > li.selected")
    element.visible?.should == true
    element.text.should include type
end

And /^I should see the "(.*)" header and section in the content$/ do | type |
    page.find(:xpath, "//div[@class='content']/h1[text()='#{type}']/..").visible?.should == true
    page.first(:css, ".content section").visible?.should == true
end

Then 'I should see the Learn More button in the header content' do
    page.find(:css, ".content section .bbutton.left").visible?.should == true
end

Then /^I should see the "(.*)" section in the content$/ do | type |
    page.find(:xpath, "//*[@class='content']//h2[text()='#{type}']/..").visible?.should == true
end
