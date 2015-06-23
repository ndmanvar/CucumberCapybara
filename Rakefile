require 'bundler/setup'
require 'sauce'

task :split do
	`rm -rf split_files`
	`ruby splitter.rb features ./split_files`
	`cp -rf features/step_definitions ./split_files`
	`cp -rf features/support ./split_files`
end

# to run: rake split sauce:features test_files=split_files