trumpet = require('trumpet')()
thru = require 'through'
{stdin, stdout} = process

write = (buffer) -> @queue buffer.toString().toUpperCase()

loud = trumpet.select('.loud').createStream()

# `loud` outputs all the inner html content at `'.loud'` and data
# written to `loud` appears as the new content
loud.pipe(thru write).pipe(loud)

stdin.pipe(trumpet).pipe(stdout)
