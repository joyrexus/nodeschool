function repeat(operation, num) {
  if (num <= 0) return
  return function() {
    operation()
    return repeat(operation, --num)
  }
}

function trampoline(fn) {
  while(fn && typeof fn === 'function') {
    fn = fn()
  }
}

module.exports = _repeat = function(operation, num) {
  trampoline(function() {
    return repeat(operation, num)
  })
}

var count = 0
_repeat(function() {
  count++
}, 100000)

console.log('executed %d times.', count)
// => executed 100 times.
