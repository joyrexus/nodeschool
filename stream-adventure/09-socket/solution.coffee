ws = require 'websocket-stream'

ws('ws://localhost:8000').end('hello\n')
