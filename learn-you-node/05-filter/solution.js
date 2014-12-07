'use strict';
var fs = require('fs');

var args = process.argv.slice(2, 4),
    path = args[0],
    filter = args[1];

var ext = new RegExp('\\.' + filter + '$');

var matching = function (d) {
    return ext.test(d);
};

var printFiltered = function (err, list) {
    list.sort()
        .filter(matching)
        .forEach(function (f) {
            console.log(f);
        });
};

fs.readdir(path, printFiltered);
