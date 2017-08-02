require 'socket'
server = TCPSocket.new 'localhost', 5678

while line = server.gets # read lines from socket
  puts line             # and print them
end

server.close