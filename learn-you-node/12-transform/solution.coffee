http = require 'http'
map = require 'through2-map'

file = process.argv[2]

upcase = (chunk) -> chunk.toString().toUpperCase()
  
connect = (req, res) ->
  if req.method is 'POST'
    req.pipe(map upcase).pipe(res)

http.createServer(connect).listen(8000)


