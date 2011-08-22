# Player class constructor
Player = (I) ->

  # Default values that can be overriden when creating a new player.
  Object.reverseMerge I,
    width: 32
    height: 32
    x: 160
    y: 160
    speed: 3

  # The player is a GameObject
  self = GameObject(I)

  # Bind an update event
  # This will run each game step
  self.bind "update", ->
    # Handle player movement in response to arrow keys
    if keydown.left
      I.x -= I.speed

    if keydown.right
      I.x += I.speed

    if keydown.up
      I.y -= I.speed

    if keydown.down
      I.y += I.speed

    # Clamp the player's position to be within the screen
    I.x = I.x.clamp(0, App.width - I.width)
    I.y = I.y.clamp(0, App.height - I.height)

  # We must return a reference to self from the constructor
  return self

