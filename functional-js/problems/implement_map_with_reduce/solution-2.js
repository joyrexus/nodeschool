module.exports = function(arr, iter) {
  var reducer = function(prev, next, i, arr) {
    return prev.concat(iter(next))
  }
  return arr.reduce(reducer, [])
}
