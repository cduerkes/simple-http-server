require 'socket' # provides TCPServer and TCPSocket classes

# Initialize a TCPServer object that will listen
# on localhost:5678for incoming connections.
server = TCPServer.new 5678 

# loop infinitely, processing one incoming
# connection at a time.
loop do 
  Thread.start(server.accept) do |client|    # wait for a client to connect
  client.puts "Hello!"
  client.puts "Time is #{Time.now}"
  client.close
  end
end