# Hexadecimal Encoding 

You can convert data between different representations, also known as
encodings, using Buffers.

Write a node program that takes the following 6 bytes, converts them to a
hexidecimal string using a Buffer and logs them to the console.

    0 15 24 3 250 83

Hexadecimal encoding is a way of representing integers 0 through 16
using the 10 digits 0 - 9 and 6 letters a - f.

A single hexidecimal octet is two hex characters long, which can represent
a number between 0 and 255 (16 * 16 possibilities).

For example, the number 255 in hex is ff, as f is 15 in hex. Sometimes hex
values are written with a 0x prefix, so you might see 255 written as 0xff.

When you have completed your program, you can run it in the test
environment with:

  {bold}{appname} run program.js{/bold}

And once you are happy that it is correct then run:

  {bold}{appname} verify program.js{/bold}

And your submission will be verified for correctness. After you have
a correct solution, run `{bold}{appname}{/bold}` again and select the next problem!

----------------------------------------------------------------------
HINTS:

.toString

Read more about Buffers here:
  http://nodejs.org/api/all.html#all_buffer
Or off-line on your local filesystem:
  {rootdir}/docs/node-api-docs.html#all_buffer

To get output for debugging when running `{appname} run program.js`
you should use console.error instead of console.log.
