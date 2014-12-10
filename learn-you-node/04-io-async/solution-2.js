'use strict';
var fs = require('fs'),
    filename = process.argv[2];


var countLines = function (err, data) {

   if (err) { throw err; }
   console.log(data.split('\n').length - 1);
};

fs.readFile(filename, 'utf8', countLines);
