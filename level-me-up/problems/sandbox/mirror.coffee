people = require('level')('people.db', valueEncoding: 'json')
mirror = require('level')('mirror.db', valueEncoding: 'json')

people.createReadStream()
    .pipe(mirror.createWriteStream())
    .on('error', -> null)
    .on('close', -> (people.close(); mirror.close()))
