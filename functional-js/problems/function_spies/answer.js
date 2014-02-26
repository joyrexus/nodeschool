// Generated by CoffeeScript 1.6.3
(function() {
  var Spy,
    __slice = [].slice;

  Spy = (function() {
    function Spy(target, method) {
      var f,
        _this = this;
      this.count = 0;
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

  module.exports = Spy;

  /*
  spy = new Spy console, 'error'
  
  console.error 'hi!', 'hi?'
  console.error 'hi!', 'hi?'
  console.log spy.count
  console.error 'ok!', 'ok!'
  console.log spy.count
  */


}).call(this);