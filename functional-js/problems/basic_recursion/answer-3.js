(function() {
  var reduce;

  // reduce `arr` with `reduction` method
  // initialize with `init`
  reduce = function(arr, reduction, init) {
    var max = arr.length - 1;               // max of array index
    var recur = function(i, prev) {
      if (i > max) return prev;             // no more values to recur over
      var curr = arr[i];                    // reduce current value ...
      var reduced = reduction(prev, curr, i, arr);    // with reduction method
      return recur(i + 1, reduced);         // recur on next w/ reduced value
    };
    return recur(0, init);                  // start recursion
  };

  module.exports = reduce;

}).call(this);
