module.exports = (ids, load, done) ->
  users = []
  seen = 0
  ids.forEach (id, i) ->
    load id, (user) -> 
      users[i] = user
      seen += 1
      done(users) if seen is ids.length
