http = require 'http'

url = process.argv[2]

done = (res) ->
  res.setEncoding('utf8')
  res.on 'error', console.error
  res.on 'data', console.log

http.get(url, done).on('error', console.error)
