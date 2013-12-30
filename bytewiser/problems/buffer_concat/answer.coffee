concat = require('stream').Transform()

concat.buffers = []
concat._transform = (buff, encoding, done) ->
  @buffers.push buff 
  done()

concat._flush = (done) ->
  console.log Buffer.concat(@buffers)
  done()

process.stdin.pipe(concat)
