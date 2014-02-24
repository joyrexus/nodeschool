duckCount = (args...) -> 
  toDuckTotal = (prev, curr, i, arr) -> 
    hasQuack = (x) -> Object::hasOwnProperty.call x, 'quack'
    x = if hasQuack(curr) then 1 else 0
    prev + x
  args.reduce toDuckTotal, 0

module.exports = duckCount


# testing

test = ->
  {ok} = require 'assert'

  turkey = Object.create quack: true

  birds = [
    turkey
  ,
    quack: true
  ,
    quack: true
  ,
    quack: true
  ]
  ok duckCount(birds...) is 3

# test()
