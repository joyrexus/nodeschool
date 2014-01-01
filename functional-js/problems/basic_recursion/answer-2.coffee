module.exports = reduce = (arr, reduction, init) ->
  return init if not arr.length
  next = arr.shift()
  i = 0 if not i?
  reduced = reduction(init, next, i+1, arr)
  reduce arr, reduction, reduced
