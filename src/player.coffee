Player = (I) ->
  ###
  # Default values that can be overriden when constructing.
  ###
  $.reverseMerge I,
    width: 32
    height: 32
    x: 160
    y: 160
    speed: 4

  self = GameObject(I)

  walkCycle = 0

  facing = Point(0, 0)

  collisionMargin =
    x: 2
    y: 2

  self.bind "step", ->

    movement = Point(0, 0)

    if keydown.left
      movement = movement.add(Point(-1, 0))
    if keydown.right
      movement = movement.add(Point(1, 0))
    if keydown.up
      movement = movement.add(Point(0, -1))
    if keydown.down
      movement = movement.add(Point(0, 1))

    if movement.equal(Point(0, 0))
      I.velocity = movement
    else
      walkCycle += 1

      facing = movement.norm()
      I.velocity = facing.scale(I.speed)

      I.velocity.x.abs().times ->
        if !engine.collides(self.collisionBounds(I.velocity.x.sign(), 0), self)
          I.x += I.velocity.x.sign()
        else 
          I.velocity.x = 0

      I.velocity.y.abs().times ->
        if !engine.collides(self.collisionBounds(0, I.velocity.y.sign()), self)
          I.y += I.velocity.y.sign()
        else 
          I.velocity.y = 0

    I.x = I.x.clamp(0, 480 - I.width)
    I.y = I.y.clamp(0, 320 - I.height)

  self
