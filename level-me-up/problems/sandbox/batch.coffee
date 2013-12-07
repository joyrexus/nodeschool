db = require('level')('people.db', valueEncoding: 'json')

people = [
  key: 'jgladney'
  first: 'Jack'
  last: 'Gladney'
  sex: 'M'
  age: 51
 ,
  key: 'msiskind'
  first: 'Murray'
  last: 'Siskind'
  sex: 'M'
  age: 57 
]

putEntry = (d) ->
  type: 'put'
  key: d.key
  value: d

puts = (putEntry(p) for p in people)

dels = [
  type: 'del'
  key: 'jvoigt'
]

operations = puts.concat dels

db.batch operations, (e) -> null
