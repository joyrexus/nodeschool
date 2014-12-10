'use strict';
var http = require('http'),
    url = process.argv[2];


var done = function (response) {

    var data = '';
    response.setEncoding('utf8');
    response.on('error', console.error);
    response.on('data', function (d) {

        data += d;
    });
    response.on('end', function () {

        console.log(data.length);
        console.log(data);
    });
};


http.get(url, done);
