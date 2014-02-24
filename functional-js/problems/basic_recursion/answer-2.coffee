reduce = (arr, reducer, init) ->
  recur = (i, prev) ->
    return prev if i >= arr.length    # return if end of array
    reduced = reducer(prev, arr[i], i, arr)
    recur i+1, reduced                # recur on next index w/ reduced value
  recur(0, init)                      # initiate recursion

module.exports = reduce


# testing / sample usage

test = -> 
  {ok} = require 'assert'

  sum = (prev, curr, i, arr) ->         # reducer
    prev + curr 

  result = reduce([1,2,3], sum, init=0) 
  ok result is 6

# test()
