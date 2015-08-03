And 'I click the explore link from the toolbar' do
	page.first(:css, '.header-nav-link').click

end

Then 'I should see the explore marketing header' do
	page.first(:css, '.explore-marketing-header').visible?.should == true
end