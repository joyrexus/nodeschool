fs = require 'fs'

newline = new Buffer('\n')[0]

log = (err, buff) -> 
  offset = 0
  for i in [0...buff.length]
    if buff[i] is newline
      console.log buff.slice(offset, i)
      offset = i + 1
  console.log buff.slice(offset)
  ''

fs.readFile process.argv[2], log
