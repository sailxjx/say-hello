express = require('express')
app = express()
server = require('http').createServer(app)
cookie = require('cookie')
chat = require('./chat')
io = require('socket.io').listen(server)

exports.start = ->
  server.listen(3011)

  app.configure ->
    app.use(express.static(__dirname + '/../public'))

  io.sockets.on 'connection', (socket)->
    socket.emit 'news', 'greeting from server'
    socket.on 'chat', (data)->
      console.log data
