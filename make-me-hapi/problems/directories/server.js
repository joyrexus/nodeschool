'use strict';
var Hapi = require('hapi');
var server = Hapi.createServer('localhost', (process.argv[2] || 8080));

server.route({
    method: 'GET',
    path: '/foo/bar/baz/{path}',
    handler: { 
        directory: { path: './public' }
    }
});

server.start();
