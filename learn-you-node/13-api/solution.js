'use strict';
var http = require('http'),
    url = require('url'),
    port = process.argv[2];


var connect = function (req, res) {

    var parsed = url.parse(req.url, true),
        date = new Date(parsed.query.iso),
        result = '';

    if (/api\/parsetime/.test(req.url)) {

        result = {
            hour: date.getHours(),
            minute: date.getMinutes(),
            second: date.getSeconds()
        };

    } else if (/api\/unixtime/.test(req.url)) {
        
        result = {
            unixtime: date.getTime()
        };
    }

    res.writeHead(200, {
        'Content-Type': 'application/json'
    });

    return res.end(JSON.stringify(result));
};

http.createServer(connect).listen(port);
