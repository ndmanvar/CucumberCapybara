require 'capybara/cucumber'
require 'sauce/cucumber'

Sauce.config do |c|
  c[:start_tunnel] = false
  c[:browser] = "Firefox"
  c[:version] = 21
  c[:os] = "Windows"
end


Around('@selenium') do |scenario, block|
  JenkinsSauce.output_jenkins_log(scenario)
  block.call
  ::Capybara.current_session.driver.quit
end