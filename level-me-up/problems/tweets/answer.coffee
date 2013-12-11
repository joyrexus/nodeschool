module.exports = (db, date, done) ->
  tweets = []
  range = 
    start: date
    end: date + '\xff'
  db.createReadStream(range)
    .on('data', (d) -> tweets.push d.value)
    .on('error', (e) -> done(e))
    .on('end', -> done(null, tweets))
