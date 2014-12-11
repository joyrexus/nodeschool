'use strict';
var http = require('http'),
    urls = process.argv.slice(2),
    results = {},
    count = 0;


var print = function () {

    var i;
    for (i = 0; i < 3; ++i) {
        console.log(results[i]);
    }
};


var task = function (i) {

    return function (response) {

        var data = '';
        response.setEncoding('utf8');
        response.on('error', console.error);
        response.on('data', function (d) {

            data += d;
        });

        response.on('end', function () {

            results[i] = data;
            count += 1;
            if (count === 3) {
                print();
            }
        });
    };
};


urls.forEach(function (url, i) {

    http.get(url, task(i));
});
