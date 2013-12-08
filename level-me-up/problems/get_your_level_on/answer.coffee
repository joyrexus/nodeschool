db = require('level')(process.argv[2])

db.get 'levelmeup', (e, d) -> 
  throw e if e
  console.log d
