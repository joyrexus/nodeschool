http = require 'http'
fs = require 'fs'

[file, port] = process.argv[2..3]

connect = (req, res) ->
  fs.createReadStream(file).pipe(res)

http.createServer(connect).listen(8000)
