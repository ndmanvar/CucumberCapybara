require 'json'

browserConfigs = JSON.parse(ENV["SAUCE_ONDEMAND_BROWSERS"])

file_to_write = ARGV[0]
raise 'error no file write to is specified' if file_to_write.nil?

content = ""


content << "Sauce.config do |config|\n  config[:browsers] = [\n"

data = []
i = 1

for browserConfig in browserConfigs

	configString = "   ['#{browserConfig["os"]}', '#{browserConfig["browser"]}', '#{browserConfig["browser-version"]}']"
	configString = configString + ( i == browserConfigs.size ? "\n" : ",\n")
	content << configString
	i = i + 1
end

content.chomp!(',')

content << "  ]\nend"

puts "content is : "
puts content

File.write(file_to_write, content)