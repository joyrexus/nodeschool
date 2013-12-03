split = require 'split'
thru = require 'through'

i = 0

transform = (line) -> 
  i += 1
  if i % 2
    @queue line.toString().toLowerCase() + "\n"
  else
    @queue line.toString().toUpperCase() + "\n"

process.stdin
  .pipe(split())
  .pipe(thru transform)
  .pipe(process.stdout)
