http = require 'http'
thru = require 'through'

port = process.argv[2]

upcase = (buffer) -> @queue buffer.toString().toUpperCase()

connect = (req, res) ->
  req.pipe(thru upcase).pipe(res) if req.method is 'POST'

server = http.createServer connect
server.listen port

