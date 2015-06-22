Then 'I should see the homepage slideshow' do
    page.find(:id, 'hero').visible?.should == true
end

Then 'I should see the toolbar on top' do
    page.find(:css, '.primary').visible?.should == true
end

Then 'I should see Pacific Dental Services logo' do
    page.find(:css, 'img.logo').visible?.should == true
end

Then 'I should see the article content' do
    page.find(:css, '.content').visible?.should == true
end

Then 'I should see the career oppurtunities in the sidebar' do
    page.find(:css, '.menu-sidebar').visible?.should == true
end

Then 'I should see the map in the sidebar' do
    page.find(:css, '.map').visible?.should == true
end
