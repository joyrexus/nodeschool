'use strict';
var Hapi = require('hapi');
var server = Hapi.createServer('localhost', process.argv[2] || 8080);

server.views({
    engines: {
        html: require('handlebars')
    },
    path: './templates',
    helpersPath: './helpers'
});

server.route({
    method: 'GET',
    path: '/',
    handler: { 
        view: "index" 
    }
});

server.start();
