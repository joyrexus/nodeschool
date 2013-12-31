{ok} = require 'assert'

getCounts = (words) ->
  count = {}
  count[w] = (count[w] or 0) + 1 for w in words
  count

ok getCounts ['a', 'a', 'b'] is
  a: 2
  b: 1
