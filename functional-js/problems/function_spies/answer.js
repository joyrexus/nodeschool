// Generated by CoffeeScript 1.6.3
(function() {
  var Spy,
    __slice = [].slice;

  Spy = (function() {
    Spy.prototype.count = 0;

    function Spy(target, method) {
      var f,
        _this = this;
      f = target[method];
      target[method] = function() {
        var args;
        args = 1 <= arguments.length ? __slice.call(arguments, 0) : [];
        _this.count += 1;
        return f.apply(null, args);
      };
    }

    return Spy;

  })();

  module.exports = function(target, method) {
    return new Spy(target, method);
  };

  /*
  
  spy = new Spy console, 'error'
  
  console.error 'hi!', 'hi?'  # first call
  console.error 'hi!', 'hi?'  # second call
  console.log spy.count       # 2
  console.error 'ok!', 'ok!'  # third call
  console.log spy.count       # 3
  */


}).call(this);
