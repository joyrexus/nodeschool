(function() {
  var reduce;

  module.exports = reduce = function(arr, reduction, init) {
    var i, next, reduced;
    if (!arr.length) return init                        // nothing left to recur
    if (typeof i === "undefined" || i === null) i = 0   // increment index
    next = arr.shift();                                 // shift off first val
    reduced = reduction(init, next, i + 1, arr);        // get reduced value
    return reduce(arr, reduction, reduced);             // recur
  };

}).call(this);
