http = require 'http'

url = process.argv[2]

done = (res) ->
  data = ''
  res.setEncoding('utf8')
  res.on 'error', console.error
  res.on 'data', (d) -> data += d
  res.on 'end', -> 
    console.log data.length
    console.log data

http.get(url, done).on('error', console.error)
