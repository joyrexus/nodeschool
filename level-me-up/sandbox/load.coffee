db = require('level')('people.db', valueEncoding: 'json')

people = [
  key: 'jvoigt'
  first: 'Jason'
  last: 'Voigt'
  sex: 'M'
  age: 43
 ,
  key: 'mjane'
  first: 'Mary'
  last: 'Jane'
  sex: 'F'
  age: 22
]

putEntry = (d) ->
  type: 'put'
  key: d.key
  value: d

puts = (putEntry(p) for p in people)

db.batch puts, (e) -> null
