db = require('level')(process.argv[2])

db.put(k,v) for k,v of JSON.parse(process.argv[3])
