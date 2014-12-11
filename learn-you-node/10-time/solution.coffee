net = require 'net'
strftime = require 'strftime'
port = process.argv[2]

feed = (socket) -> 
  socket.end strftime('%Y-%m-%d %H:%M') # YYYY-MM-DD hh:mm

net.createServer(feed).listen(port)
