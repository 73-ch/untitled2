class RoomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "test"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def keyPressed(data)
    ActionCable.server.broadcast "test", key: data['key']
  end

  def acceleration(data)
    ActionCable.server.broadcast "test", key: data['key']
  end

  def slide(data)
    ActionCable.server.broadcast "test", key: data['key']
  end
end
