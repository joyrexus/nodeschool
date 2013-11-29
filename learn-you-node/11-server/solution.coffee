http = require 'http'
fs = require 'fs'

file = process.argv[2]

connect = (req, res) ->
  fs.createReadStream(file).pipe(res)

http.createServer(connect).listen(8000)

