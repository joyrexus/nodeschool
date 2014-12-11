'use strict';
var net = require('net'),
    strftime = require('strftime'),
    port = process.argv[2];


var feed = function (socket) {

    return socket.end(strftime('%Y-%m-%d %H:%M'));
};


net.createServer(feed).listen(port);

