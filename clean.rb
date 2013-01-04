commands = ["data", "role", "context"]

case ARGV[0]	
when "data"
	puts "running data"
when "role"
	puts "running role"
when "context"
	puts "running context"
else
	puts "command not found :("
end

#collect the command
#needs to run commands
#commands are data, role, and context
#tell me if entered a wrong command
#tell me if entered right command
#need to spit out files with pre-generated code depending on the command
