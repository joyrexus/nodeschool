(function() {
  var concat = require('stream').Transform();
  concat.buffers = [];

  concat._transform = function(buff, encoding, done) {
    this.buffers.push(buff);
    done();
  };

  concat._flush = function(done) {
    console.log(Buffer.concat(this.buffers));
    done();
  };

  process.stdin.pipe(concat)

}).call(this);
