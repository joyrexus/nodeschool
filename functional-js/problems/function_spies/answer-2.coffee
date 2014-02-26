Spy = (target, method) ->
  f = target[method]
  target[method] = ->
    result.count += 1
    f.apply(target, arguments)
  result = count: 0

module.exports = Spy

###
spy = Spy(console, 'error')

console.error 'hi!', 'hi?'  # first call
console.error 'hi!', 'hi?'  # second call
console.log spy.count       # 2
console.error 'ok!', 'ok!'  # third call
console.log spy.count       # 3
###
