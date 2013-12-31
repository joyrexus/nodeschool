{ok, deepEqual} = require 'assert'
isEqual = deepEqual
reduce = require 'answer'

words = 'ababca'.split('') 

toWordCounts = (count, word) ->
  count[word] ?= 0  # initialize if not yet counted
  count[word] += 1  # increment otherwise
  count

results = reduce(words, toWordCounts, count={})

expected =
  a: 3
  b: 2
  c: 1

isEqual expected, results


sum = (prev, curr) -> prev + curr
ok reduce([1..4], sum, 0) is 10
