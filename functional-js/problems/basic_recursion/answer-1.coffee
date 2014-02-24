module.exports = reduce = (arr, reducer, init) -> 
  return init if not arr.length         # end condition
  curr = arr[0]                         # current item
  init = reducer(init, curr, 0, arr)    # reduction step
  reduce arr[1..], reducer, init        # recursive step


# testing / sample usage

test = -> 
  {ok} = require 'assert'

  sum = (prev, curr, i, arr) ->         # reducer
    prev + curr 

  result = reduce([1,2,3], sum, init=0) 

  ok result is 6

test()
