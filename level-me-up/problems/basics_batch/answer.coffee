db = require('level')(process.argv[2])
fs = require 'fs'

doBatch = (err, data) ->
  throw err if err
  batch = db.batch()
  parse = (line) ->
    [op, key, val] = line.split(',') 
    batch.put(key, val) if op is 'put'
    batch.del(key) if op is 'del'
  parse(line) for line in data.split('\n')
  batch.write()

fs.readFile(process.argv[3], encoding: 'utf8', doBatch)
