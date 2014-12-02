'use strict';
var Hapi = require('hapi');
var server = Hapi.createServer('localhost', process.argv[2] || 8080);

server.route({
    method: 'GET',
    path: '/{name}',
    handler: function (request, reply) {
        reply('Hello ' + request.params.name);
    }
});

server.start();
