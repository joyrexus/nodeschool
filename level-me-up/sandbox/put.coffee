db = require('level')('people.db', valueEncoding: 'json')

put = (key, value) -> db.put(key, value, (e) -> null)

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

put(person.key, person) for person in people


incidents = [
  key: '2002-09-13:jvoigt'
  type: 'debauchery'
  location:
    city: 'Chicago'
    state: 'IL'
 ,
  key: '2001-10-24:jvoigt'
  type: 'lechery'
  location:
    city: 'Nashville'
    state: 'TN'
 ,
  key: '2005-02-16:mjane'
  type: 'fraud'
  location:
    city: 'Louisville'
    state: 'KY'
]

put(i.key, i) for i in incidents
