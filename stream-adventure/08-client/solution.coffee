{post} = require 'request'
{stdin, stdout} = process

stdin.pipe(post 'http://localhost:8000').pipe(stdout)
