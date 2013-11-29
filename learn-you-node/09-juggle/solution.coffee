http = require 'http'

urls = (url for url in process.argv[2..4])

results = {}  # collect results

task = (i) ->
  (res) ->
    data = ''
    res.setEncoding('utf8')
    res.on 'error', console.error
    res.on 'data', (d) -> data += d
    res.on 'end', -> 
      results[i] = data
      if Object.keys(results).length is 3
        console.log results[i] for i in [0, 1, 2]

http.get(url, task(i)).on('error', console.error) for i, url of urls
