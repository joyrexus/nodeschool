# Multilevel

Write a program that uses multilevel to fetch a value from a server
running on your computer.

Create a TCP connection with the core `net` module to port **4545**
on localhost. Pipe this connection through a multilevel RPC stream and
back to the connection. Your code should look like:

  var db = multilevel.client()
  var connection = net.connect(4545)
  connection.pipe(db.createRpcStream()).pipe(connection)

You will then have a `db` object that you can interact with like a
LevelUP object.

Fetch the value from the data store with the key 'multilevelmeup'
and print it to the console.

**You must close the connection after you have fetched the value!**

  connection.end()
