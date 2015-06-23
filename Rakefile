require 'bundler/setup'
require 'sauce'

task :split do
	`rm -rf split_files && cp -rf features split_files`
	`ruby splitter.rb features ./split_files`
end

# to run: rake split sauce:features test_files=split_files