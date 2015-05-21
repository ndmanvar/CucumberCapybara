require 'sauce'
require 'cucumber'

Sauce.config do |config|
  config[:browsers] = [
    ["Windows 7","Chrome", "41"],
    ["Windows 7","Firefox", "32"],
    ["Windows 7","Internet Explorer", "10"],
    ["Windows XP","Chrome", "41"],
    ["Windows XP","Firefox", "32"],
    ["Windows XP","Internet Explorer", "8"],
    ["OS X 10.10", "Chrome", "41"]
  ]
end


After do |scenario|
	puts "in after..!"
end