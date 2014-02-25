map = (arr, iter) -> 
  reducer = (prev, next, i, arr) -> prev.concat [iter(next)]
  arr.reduce(reducer, [])

module.exports = map
