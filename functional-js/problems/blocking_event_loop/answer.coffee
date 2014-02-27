repeat = (f, n) ->
  return if n < 0
  f()
  recur = -> repeat(f, n - 1)
  setTimeout recur, 1

module.exports = repeat
