net = require 'net'
multilevel = require 'multilevel'
db = multilevel.client()
con = net.connect 4545

con
  .pipe(db.createRpcStream())
  .pipe(con)

done = (err, value) -> 
  throw err if err
  console.log(value)
  con.end()

db.get 'multilevelmeup', done

