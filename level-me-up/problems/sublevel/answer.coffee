level = require 'level'
sublevel = require 'level-sublevel'

db = sublevel(level process.argv[2])

db.sublevel('robots').put 'slogan', 'beep boop'
db.sublevel('dinosaurs').put 'slogan', 'rawr'
