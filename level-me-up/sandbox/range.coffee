db = require('level')('people.db', valueEncoding: 'json')

INIT = '\x00'
LAST = '\xff'

peopleRange = 
  start: 'jg' + LAST    # everything after 'jg'
  end:   'ms' + INIT    # upto 'ms'

dateRange = 
  start: '2000' + INIT  # from 2000
  end:   '2002' + LAST  # through 2002

data = []

db.createReadStream(dateRange)
  .on('data', (d) -> data.push(d))
  .on('close', -> console.log d.key for d in data)
