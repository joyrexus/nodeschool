{test, arrayEq} = require 'testy'

nums = [1..5]
double = (x) -> x * 2

for answer in ['answer-1', 'answer-2']
  test answer, ->
    map = require answer
    arrayEq map(nums, double),
      nums.map double

test.status()
