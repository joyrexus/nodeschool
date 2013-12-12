exports.init = (db, words, done) ->
  batch = db.batch()
  for word in words
    key = word.length + '!' + word
    batch.put(key, word) 
  batch.write(done)

exports.query = (db, word, done) ->
  matched = []
  range = 
    start: word.length + '!' + word.replace(/\*/g, '')
    end: word.length + '!' + word.replace(/\*/g, '~')
  db.createReadStream(range)
    .on('data', (d) -> matched.push(d.value))
    .on('error', (e) -> done(e))
    .on('end', -> done(null, matched))
