App.room = App.cable.subscriptions.create "RoomChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    console.log(data);

  keyPressed: (key) ->
    @perform 'keyPressed', key: key

  acceleration: (key) ->
    @perform 'acceleration', key: key


  slide: (key) ->
    @perform 'slide', key: key