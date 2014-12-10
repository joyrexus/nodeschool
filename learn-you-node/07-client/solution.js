'use strict';
var http = require('http'),
    url = process.argv[2];


var done = function (response) {

    response.setEncoding('utf8');
    response.on('error', console.error);
    response.on('data', console.log);
};


http.get(url, done).on('error', console.error);
