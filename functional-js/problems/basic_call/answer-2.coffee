duckCount = (args...) -> 
  hasQuack = (x) -> Object::hasOwnProperty.call x, 'quack'
  args.filter(hasQuack).length

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

test()
