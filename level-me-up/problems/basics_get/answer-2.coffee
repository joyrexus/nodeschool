db = require('level')(process.argv[2])

get = (key) ->
  db.get(key, do (key) ->
    (err, data) ->
      if err 
        throw err if not err.notFound
      else
        console.log "#{key}=#{data}"
  )

get('gibberish' + i) for i in [0..100]
