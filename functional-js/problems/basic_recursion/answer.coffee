module.exports = reduce = (arr, reduction, init) ->
  return init if not arr.length
  next = arr.shift()
  reduced = reduction(init, next, 0, arr)
  reduce arr, reduction, reduced
