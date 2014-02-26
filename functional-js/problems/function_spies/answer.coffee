class Spy 

  constructor: (target, method) ->
    @count = 0
    f = target[method]
    target[method] = (args...) =>
      @count += 1
      f args...

module.exports = Spy

###
spy = new Spy console, 'error'

console.error 'hi!', 'hi?'
console.error 'hi!', 'hi?'
console.log spy.count
console.error 'ok!', 'ok!'
console.log spy.count
###
