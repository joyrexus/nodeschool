# return a curried version function `f` of arity `n`
curry = (f, n, args=[]) ->
  n ?= f.length                       # determine arity by function length
  return f(args...) if n is 0
  (x) -> 
    curry(f, n - 1, args.concat(x))

module.exports = curry
