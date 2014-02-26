class Spy 

  count: 0

  constructor: (target, method) ->
    f = target[method]
    target[method] = (args...) =>
      @count += 1
      f args...

module.exports = (target, method) -> new Spy(target, method)

###

spy = new Spy console, 'error'

console.error 'hi!', 'hi?'  # first call
console.error 'hi!', 'hi?'  # second call
console.log spy.count       # 2
console.error 'ok!', 'ok!'  # third call
console.log spy.count       # 3

###
