require 'capybara/cucumber'
require 'sauce/cucumber'
require 'sauce'

Sauce.config do |c|
  c[:start_tunnel] = false
  c[:browser] = "Firefox"
  c[:version] = 21
  c[:os] = "Windows"
end

Capybara.default_wait_time = 30

def getUniqueFileName(file)
	i = 1
	while File.exists?(fileName = file.gsub('TEST', i.to_s))
		i = i + 1
	end
	fileName
end

at_exit do
  Dir.glob('*.xml') do |file|
  	if file.include?('TEST-')
  		File.rename(file, getUniqueFileName(file))
  	end
  end
end


# Around('@selenium') do |scenario, block|
#   JenkinsSauce.output_jenkins_log(scenario)
#   block.call
#   ::Capybara.current_session.driver.quit
# end
