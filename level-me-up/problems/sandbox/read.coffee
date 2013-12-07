db = require('level')('people.db', valueEncoding: 'json')

stream = db.createReadStream()

stream
  .on('data', console.dir)
  .on('close', -> db.close())
