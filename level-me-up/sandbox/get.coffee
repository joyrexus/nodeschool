db = require('level')('people.db', valueEncoding: 'json')

get = (key) -> db.get key, (e, d) -> console.log d.first, d.last

people = ['jvoigt', 'mjane']

get(person) for person in people

