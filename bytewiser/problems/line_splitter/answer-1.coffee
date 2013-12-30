fs = require 'fs'

path = process.argv[2]

newline = new Buffer('\n')[0]

log = (err, data) -> 
  for line in data.toString().split('\n')
    console.log new Buffer(line)

fs.readFile path, log
