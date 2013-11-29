net = require 'net'
strftime = require 'strftime'

feed = (socket) -> 
  socket.end strftime('%Y-%m-%d %H:%M') # YYYY-MM-DD hh:mm

net.createServer(feed).listen(8000)
