# reduce `arr` with `reduction` method
# initialize with `init`
reduce = (arr, reduction, init) ->
  max = arr.length - 1        # max of array index
  recur = (i, prev) ->
    return prev if i > max    # return prev value if no more values to recur over
    reduced = reduction(prev, arr[i], i, arr)
    recur(i + 1, reduced)     # recur on next with reduced value
  recur(0, init)              # start recursion

module.exports = reduce
