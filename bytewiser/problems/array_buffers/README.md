# Array Buffers

Array Buffers are the backend for [Typed Arrays](http://developer.mozilla.org/en-US/docs/Web/JavaScript/Typed_arrays). Whereas Buffer in node is both the raw bytes as well as the encoding/view, Array Buffers are only raw bytes and you have to create a Typed Array on top of an Array Buffer in order to access the data.

When you create a new Typed Array and don't give it an Array Buffer to be a view
on top of it will create it's own new Array Buffer instead.

For this challenge, take the integer from process.argv[2] and write it as the first
element in a single element Uint32Array. Then create a Uint16Array from the Array
Buffer of the Uint32Array and log out to the console the JSON stringified version
of the Uint16Array.

Bonus: try to explain the relevance of the integer from process.argv[2], or explain
why the Uint16Array has the particular values that it does.
