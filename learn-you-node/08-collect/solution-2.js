'use strict';
var http = require('http'),
    concat = require('concat-stream'),
    url = process.argv[2];


var print = function (data) {

    var result = data.toString();
    console.log(result.length);
    console.log(result);
};


var done = function (response) {

    response.pipe(concat(print));
    response.on('error', function (err) {
        console.error(err);
        process.exit(1);
    });

};


http.get(url, done);
