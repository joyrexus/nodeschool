module.exports = (db, date, done) ->
  count = 0
  db.createReadStream(start: date)
    .on('data', (d) -> count += 1)
    .on('error', (e) -> done(e))
    .on('end', -> done(null, count))
