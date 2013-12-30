# Line Splitter

The argument given to you from `process.argv[2]` will be a path to a file.

Read this file and split it by newline characters ('\n'). You should log
one Buffer per line.

Bonus points if you never use `.toString()`.


## Hints

Buffers have a `.slice` method that can be used to grab a sub-selection as a view (no memcpy).

Extra bonus points if you avoid using fs.readFileSync.
