module Clean
end

commands = ["data", "role", "context"]

case ARGV[0]	
when "data"
	STDOUT.puts "running data"
when "role"
	STDOUT.puts "running role"
when "context"
	STDOUT.puts "running context"
else
	puts "command not found :("
end

def run_my_program(command)
	puts "I'm running this command: #{command}!"
end

# if 
# 	command = commands
# 		run_my_program
# 	puts "command found" 
# else
# 	puts "command not found"
# end




#collect the command
#needs to run commands
#commands are data, role, and context
#tell me if entered a wrong command
#tell me if entered right command
#need to spit out files with pre-generated code depending on the command