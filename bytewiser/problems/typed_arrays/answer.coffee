log = (buff) ->
  ui8 = new Uint8Array(buff.length)           # create a typed array
  ui8[i] = buff[i] for i in [0..buff.length]  # copy each byte
  console.log JSON.stringify(ui8)
  ''

process.stdin.on 'data', log
