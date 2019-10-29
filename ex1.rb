require "socket"

server = TCPServer.new(2345).accept
they_said = ""
while they_said != "quit"
  they_said = server.gets.chomp
  server.puts "What do you say?"
  server.puts "You said: #{they_said}. Goodbye!"
end
