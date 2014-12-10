var match = require('filter'),
    path = process.argv[2],
    filter = process.argv[3]

match(path, filter, function (err, list) {
    if (err) {
        return console.error(err);
    }
    list.forEach(function (dir) { 
        console.log(dir) 
    });
});
