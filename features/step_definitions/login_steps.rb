And 'I click the login button in the toolbar' do
	page.find(:css, '.login-link').click
end

And /^I fill out the "(.*)" field with "(.*)"$/ do | fieldName, text |
	case fieldName
	when "email"
		page.find(:id, 'user_email').set text
	when "password"
		page.find(:id, 'user_password').set text
	else
		raise 'invalid option'
	end
end

And 'I click on the login button' do
	page.find(:id, 'user_submit').click
end