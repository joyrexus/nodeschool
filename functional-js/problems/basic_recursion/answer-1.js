(function() {

  // reduce `arr` with `reduction` method
  // initialize with `init`
  var reduce = function(arr, reduction, init) {
    if (!arr.length) { return init }              // nothing left to recur over
    var next = arr.shift();                       // shift off first value
    var reduced = reduction(init, next, 0, arr);  // get reduced value
    return reduce(arr, reduction, reduced);       // recur
  };

  module.exports = reduce 

}).call(this);
