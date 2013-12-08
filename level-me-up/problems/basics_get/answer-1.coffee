db = require('level')(process.argv[2])

range = 
  start: 'gibberish'
  end: 'gibberish\xff'

data = []

byKey = (a, b) -> a.key > b.key

parsePush = (d) -> 
  result =
    key: parseInt d.key.replace('gibberish', '')
    value: "#{d.key}=#{d.value}"
  data.push(result)

db.createReadStream(range)
  .on('error', (err) -> if err.notFound then console.log(err) else throw err)
  .on('data', parsePush)
  .on('close', -> console.log d.value for d in data.sort(byKey))
