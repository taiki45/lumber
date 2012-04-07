require 'socket'

server = TCPServer.open(2000)
puts 'Sever is working...'
loop do
  client = server.accept
  client.puts(Time.now.ctime)
  client.close
end
