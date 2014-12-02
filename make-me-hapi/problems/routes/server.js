'use strict';
var Hapi = require('hapi');

var server = Hapi.createServer('localhost', Number(process.argv[2] || 8080));

server.route({
    path: '/{name}',
    method: 'GET',
    handler: function (request, reply) {
        reply('Hello ' + request.params.name);
    }
});

server.start();
