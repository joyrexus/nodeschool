'use strict';
var fs = require('fs'),
    http = require('http'),
    port = process.argv[2],
    file = process.argv[3];


var connect = function (req, res) {

    res.writeHead(200, { 'content-type': 'text/plain' });
    return fs.createReadStream(file).pipe(res);
};

http.createServer(connect).listen(port);
