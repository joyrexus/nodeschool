curry = (f, n, args=[]) ->
  n ?= f.length
  return f(args...) if n is 0
  (x) -> 
    curry(f, n - 1, args.concat(x))

module.exports = curry
