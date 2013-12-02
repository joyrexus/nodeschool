http = require 'http'
url = require 'url'

connect = (req, res) ->
  parsed = url.parse(req.url, true)
  date = new Date(parsed.query.iso)
  result = ''
  console.log parsed.pathname
  if /api\/parsetime/.test(parsed.pathname)
    result = 
      hour: date.getHours()
      minute: date.getMinutes()
      second: date.getSeconds()
  else if /api\/unixtime/.test(parsed.pathname)
    result = 
      unixtime: date.getTime()

  res.writeHead(200, 'Content-Type': 'application/json')
  res.end JSON.stringify result

http.createServer(connect).listen(8000)
