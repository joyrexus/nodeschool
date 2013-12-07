make = require 'level'

db = make 'data.db', valueEncoding: 'json'

db.put 'name', {first: 'Jason', last: 'Voigt'}, (err) ->
  db.get('name', (err, value) -> console.log value)


###
Write a program that opens a LevelDB data-store using `{bold}level{/bold}`.

Fetch and print to the console the value associated with the key
'levelmeup'.

The first command-line argument to your program will be the full path
to the directory containing the LevelDB store.

----------------------------------------------------------------------

You can open an existing data-store, or create a new one, by invoking
`level()` and passing in a path to a directory. The function returns
a new {italic}LevelUP{/italic} instance.

All LevelUP methods are asynchronous. To {italic}get{/italic} a value out of the
data-store, use the `.get(key, callback)` method:

  var level = require('level')
  var db = level('/path/to/db/')
  db.get('foo', function (err, value) {
    console.log('foo =', value)
  })

###
