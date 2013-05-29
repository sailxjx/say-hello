socket = io.connect('http://sayhello.local.com/')
socket.on 'news', (data)->
  console.log data
  socket.emit 'chat', 'I am here'