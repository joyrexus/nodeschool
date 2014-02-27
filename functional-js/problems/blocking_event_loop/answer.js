(function() {
  var repeat = function(f, n) {
    var recur;
    if (n < 0) return
    f()
    recur = function() { repeat(f, n - 1) }
    setTimeout(recur, 1)
  }
  module.exports = repeat
}).call(this);
