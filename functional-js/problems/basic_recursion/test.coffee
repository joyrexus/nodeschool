{ok, deepEqual} = require 'assert'
isEqual = deepEqual

toCounts = (count, word) ->
  count[word] ?= 0  # initialize if not yet counted
  count[word] += 1  # increment otherwise
  count

expected =
  a: 3
  b: 2
  c: 1

words = 'ababca'.split('') 

for answer in ['answer-1', 'answer-2', 'answer-3']

  reduce = require answer
  result = reduce(words, toCounts, count={})
  isEqual result, expected

  sum = (prev, curr) -> prev + curr
  ok reduce([1..4], sum, 0) is 10
