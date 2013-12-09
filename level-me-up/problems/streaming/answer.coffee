db = require('level')(process.argv[2])

db.createReadStream()
  .on('data', (d) -> console.log "#{d.key}=#{d.value}")
  .on('error', (e) -> console.error e if e)
