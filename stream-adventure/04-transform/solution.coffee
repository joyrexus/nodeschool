through = require 'through'

write = (buffer) -> @queue buffer.toString().toUpperCase()

process.stdin
  .pipe(through write)
  .pipe(process.stdout)
