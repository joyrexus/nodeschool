fs = require 'fs'
split = require 'split'
thru = require 'through'
db = require('level')('people.db', valueEncoding: 'json')
  .createWriteStream()
  .on('error', (e) -> console.log 'key not found' if e.notFound)

# parse lines into database operations
parse = (line) ->
  type:  line[0]
  key:   line[1]
  value: line[2]

write = (d) -> 
  if d
    op = parse(d.split ',')
    @queue op

fs.createReadStream('batch.txt')
  .pipe(split())
  .pipe(thru write)
  .pipe(db)
