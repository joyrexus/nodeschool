'use strict';
var Fs = require('fs');
var Hapi = require('hapi');
var rot13 = require('rot13-stream')();
var server = Hapi.createServer('localhost', process.argv[2] || 8080);

server.route({
    method: 'GET',
    path: '/',
    handler: function (request, reply) { 
        reply(Fs.createReadStream('./data.txt').pipe(rot13));
    }
});

server.start();
