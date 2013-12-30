rewrite = (buff) -> 
  buff.write('!', i) for i in [0...buff.length] when buff[i] is 46  
  console.log buff

process.stdin.on('data', rewrite)
