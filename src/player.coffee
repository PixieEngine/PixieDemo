# Player class constructor
Player = (I={}) ->

  # Default values that can be overriden when creating a new player.
  Object.defaults I,
    width: 16
    height: 16
    speed: 90

  # The player is a GameObject
  self = GameObject(I)

  # Automatically get arrow key controls by including "Controllable"
  self.include "Controllable"

  # Bind an update event
  # This will run each game step
  self.on "update", (elapsedTime) ->
    # Clamp the player's position to be within the screen
    I.x = I.x.clamp(I.width/2, App.width - I.width/2)
    I.y = I.y.clamp(I.height/2, App.height - I.height/2)

  # We must return a reference to self from the constructor
  return self
