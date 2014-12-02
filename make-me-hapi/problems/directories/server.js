'use strict';
var Hapi = require('hapi');
var server = Hapi.createServer('localhost', (process.argv[2] || 8080));

server.route({
    path: '/foo/bar/baz/{path}',
    method: 'GET',
    handler: { 
        directory: { path: './public' }
    }
});

server.start();
