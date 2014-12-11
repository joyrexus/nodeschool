'use strict';
var map = require('through2-map'),
    http = require('http'),
    port = process.argv[2];


var upcase = function (chunk) {

    return chunk.toString().toUpperCase();
};


var connect = function (req, res) {

    if (req.method === 'POST') {
        return req.pipe(map(upcase)).pipe(res);
    }
};

http.createServer(connect).listen(port);
