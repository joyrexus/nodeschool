'use strict';
var fs = require('fs');


fs.readFile(process.argv[2], 'utf8', function (err, data) {

    return console.log(data.split('\n').length - 1);
});
