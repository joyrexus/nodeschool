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

put = (key, value) -> db.put(key, value, (e) -> null)

put(person.key, person) for person in people
