require "fileutils"

commands = ["data", "role", "context"]

# Make my array
directories = ARGV[1].split(":")

case ARGV[0]
when "data"
	# file = "user_test.rb"
	line_1 = puts "setup do"
	line_2 = 'test "do somethin" do'
	file = directories.pop
	file_path = "#{file}_test.rb" 
	directory_path = "test/unit/#{directories.join('/')}"	
	file_contents = <<-EOS
require 'test_helper'
EOS
	# Module keywords
	directories.each_with_index do |mod, i|
		i.times { file_contents << "  "}
		file_contents << "module #{mod.capitalize}\n"
	end

	# Class
	directories.length.times { file_contents << "  " }
	file_contents << "class #{file.capitalize}Test < ActiveSupport::TestCase\n"
	directories.length.times { file_contents << "  " }
	file_contents << "end\n"

	i.times { line_1 << "  "}
	i = puts.length - i - 1

	i.times { line_2 << "  "}
	i = puts.length - i - 1

	# Module ends
	directories.each_with_index do |mod, i|
		i = directories.length - i - 1
		i.times { file_contents << "  " }
		file_contents << "end\n"
	end

	FileUtils.mkdir_p directory_path
	File.open("#{directory_path}/#{file_path}", "w") do |f|
		f.puts file_contents
	end
	puts "changes saved"
when "role"
	puts "changes saved"
when "context"
	puts "changes saved"
else
	puts "command not found :("
end


#collect the command
#needs to run commands
#commands are data, role, and context
#tell me if entered a wrong command
#tell me if entered right command
#needs to spit out files with pre-generated code depending on the command