'use strict';
var fs = require('fs');


module.exports = function (path, filter, done) {

    var regex = new RegExp("\\." + filter + "$"),
        matching = function (file) {
            return regex.test(file);
        };

    fs.readdir(path, function (err, list) {
        if (err) {
            return done(err);
        }
        return done(null, list.filter(matching));
    });
};
