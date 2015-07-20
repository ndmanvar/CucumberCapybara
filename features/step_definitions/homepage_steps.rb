Given /^I am on one login homepage$/ do
  visit "http://www.onelogin.com"
end

Then 'I should see the slideshow' do
  page.find(:css, '.homepage-carousel .slick-list').visible?.should == true
end

Then 'I should see the toolbar header' do
  page.find(:id, 'header-wrapper').visible?.should == true
end
