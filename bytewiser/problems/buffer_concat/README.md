# Buffer Concat

I/O streams in node (like fs.createReadStream for example) will
emit incremental Buffers as they arrive as opposed to waiting for the
full data to arrive.

The benefit is that if you are reading or downloading a huge file you
can start processing it immediately in chunks. This is especially useful
for files that are larger than your available RAM.

However, sometimes you want the entire file in one big Buffer.

Write a program that combines all of the buffers from `process.stdin`
and then writes the single big buffer out to the console.

Bonus points if you use a stream!

Hint: see `Buffer.concat`.
