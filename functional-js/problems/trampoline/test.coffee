repeat = require 'answer'

count = 0
repeat (-> count++), 10000
console.log 'executed %d times.', count
