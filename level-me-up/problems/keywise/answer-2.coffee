db = require('level')(process.argv[2], valueEncoding: 'json')
rows = require process.argv[3]

operations = for row in rows
  key = row.user + '!' + row.name if row.type is 'repo'
  key = row.name if row.type is 'user'
  type: 'put'
  key: key
  value: row 

db.batch operations
