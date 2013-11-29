fs = require 'fs'

[path, filter] = process.argv[2..3]
regex = new RegExp('\\.' + filter)
matching = (d) -> regex.test d

fs.readdir path, (err, list) -> 
  console.log dir for dir in list.sort() when matching dir
