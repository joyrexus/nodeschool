fs = require 'fs'

match = (path, filter, done) ->
  regex = new RegExp("\\.#{filter}$")
  matching = (d) -> regex.test d
  fs.readdir path, (err, list) -> 
    if err
      done(err)
    else
      matched = (dir for dir in list when matching dir)
      done(null, matched)

module.exports = match
