###

A trampoline is used to continously call `repeat` in a synchonous manner.

The trampoline continues to synchronously execute steps, getting new
steps, until there are no more steps.

###
repeat = (f, n) ->
  if n > 0                  # returns next step if there is one
    ->                      
      f()                   # call function
      repeat(f, --n)        # recur

trampoline = (f) ->
  f = f() while typeof(f) is 'function'

module.exports = _repeat = (f, n) -> 
  start = -> repeat(f, n)
  trampoline start

###
count = 0
_repeat((-> ++count), 10000)
console.log 'executed %d times.', count
###
