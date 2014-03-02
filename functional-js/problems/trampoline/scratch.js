function repeat(operation, num) {
  // Modify this so it doesn't cause a stack overflow!
  if (num <= 0) return
  operation()
  return repeat(operation, --num)
}

var count = 0
repeat(function() {
  count++
}, 100000)

console.log('executed %d times.', count)
// RangeError: Maximum call stack size exceeded
