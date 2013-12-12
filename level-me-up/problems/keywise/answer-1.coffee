db = require('level')(process.argv[2], valueEncoding: 'json')
rows = require process.argv[3]

batch = db.batch()

for row in rows
  batch.put(row.name, row) if row.type is 'user'
  batch.put("#{row.user}!#{row.name}", row) if row.type is 'repo'

batch.write()
