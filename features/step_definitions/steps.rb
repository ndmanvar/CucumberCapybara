Given "I am on the draft city chicago homepage" do
    visit "http://www.nfl.com/draft-city-chicago"
end

Then 'I should see the draft city chicago logo image' do
    page.find(:css, '.index-content img').visible?.should == true
end

Then 'I should see the draft city chicago homepage text' do
	element = page.find(:css, '.index-content div')
    element.visible?.should == true
    element.text.should include "For the first time in 51 years,"
end

When 'I click the explore icon' do
    element = page.find(:css, '.index-content span:first-child')
    element.visible?.should == true
    element.click
end

Then 'I wait for the map to collapse' do
    sleep 5
    # page.find(:css, "#Map_Items g").visible?.should == true
end

Then 'I should see the Auditorium Theatre header and text' do
    element = page.find(:css, '.header-left')
    element.text.should include "AUDITORIUM THEATRE"
end

Then /^I should see a profile picture for "(.*)"$/ do | player |
    element = page.find(:css, "div.content div div div img[src*='250']");
    element.visible?.should == true
    element[:src].should include player.gsub(' ', '-')
end


Then /^I should see a bio entry for "(.*)"$/ do | player |
    element = page.find(:css, 'div.content')
    element.visible?.should == true
    element.text.should include player.upcase
end

When /^I click on "(.*)" from the player menu toolbar$/ do | player |
    element = page.find(:css, '[data-person-name="' + player + '"]')
    element.visible?.should == true
    element.click
end

When 'I click on the map icon in the right rail' do
    page.find(:css, "div[style*='icn-map.svg']").click
end

When /^I click on "(.*)" in the expanded svg map$/ do | location |
    selector = "#" + location.downcase.gsub(' ', '-') + '-clickzone';
    element = page.find(:css, selector)

    element.visible?.should == true
    element.click
end

Then /^I should see the overlay of "(.*)"$/ do | content |
    element = page.find(:css, '.header-left')

    element.visible?.should == true
    element.text.should include content.upcase
end


