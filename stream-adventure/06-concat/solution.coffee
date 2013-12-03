concat = require 'concat-stream'

transform = (data) -> 
  console.log data.toString()
    .split('')
    .reverse()
    .join('')

process.stdin.pipe(concat transform)
