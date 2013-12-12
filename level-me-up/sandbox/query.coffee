db = require('level')('people.db', valueEncoding: 'json')

stream = db.createReadStream()

query = (d) ->
  if parseInt(d.value.age) > 25
    {first, last, age} = d.value
    console.log "#{first} #{last} is #{age}!"

stream
  .on('data', query)
  .on('close', -> db.close())
