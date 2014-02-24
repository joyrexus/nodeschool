{deepEqual} = require 'assert'

counts = (words) ->
  totals = {}
  totals[w] = (totals[w] or 0) + 1 for w in words
  totals

deepEqual counts(['a', 'a', 'b']),
  a: 2
  b: 1
