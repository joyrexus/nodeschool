'use strict';
var http = require('http'),
    urls = process.argv.slice(2),
    results = {},
    count = 0;


var print = function (results) {

    for (var i = 0; i < 3; ++i) {
        console.log(results[i]);
    }
};


var task = function (i) {

    http.get(urls[i], function (resp) {

        var data = '';
        resp.setEncoding('utf8');
        resp.on('error', console.error);
        resp.on('data', function (d) {

            data += d;
        });

        resp.on('end', function () {

            results[i] = data;
            count += 1;
            if (count === 3) {
                print(results);
            }
        });
    });
};


for (var i = 0; i < 3; ++i) {
    task(i);
}
