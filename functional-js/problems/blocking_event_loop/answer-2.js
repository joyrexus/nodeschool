function repeat(operation, num) {
  // modify this so it can be interrupted
  if (num <= 0) return
  operation()
  setTimeout(function() { 
    repeat(operation, --num)
  }, 1)
}

module.exports = repeat
