# Modifying Buffers

Buffers are similar to Arrays in that you can get and set values at particular offsets.

Write a program that takes the first buffer written to `process.stdin`,
updates all instances of . with ! and then logs out the updated buffer object.

Bonus points if you never call `.toString()` on your buffer!


## Hints

Buffers have a `.write` method that can be used to a character to a specific offset.

The integer value of the ascii character . is 46.
