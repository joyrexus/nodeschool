match = require 'filter'
[path, filter] = process.argv[2..3]

match path, filter, (err, list) -> 
  if err
    console.error err
  else
    console.log dir for dir in list
