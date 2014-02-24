{deepEqual} = require 'assert'

Array::upcase = ->
  return [] if not @length                    # end condition
  [@shift().toUpperCase()].concat(@upcase())  # recursive step
 
deepEqual ['HELLO', 'WORLD'],
  ['hello', 'world'].upcase() 
 
