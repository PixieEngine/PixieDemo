window.engine = Engine 
  backgroundColor: Color('sky blue')
  canvas: $('canvas').powerCanvas()
  includedModules: ['Box2D']
  PHYSICS_DEBUG_DRAW: false
  showFPS: true

obj = engine.add
  color: Color('pink')
  dynamic: true
  includedModules: ['Physical']
  friction: 0.1
  width: 50
  height: 50
  x: 50
  y: 50

2.times (n) -> 
  engine.add
    color: Color('beige')
    includedModules: ['Physical']
    width: 640
    height: 10
    friction: 0.5
    restitution: 0
    x: n 
    y: n * 470

2.times (n) ->
  engine.add
    color: Color('beige')
    includedModules: ['Physical']
    width: 10
    height: 480
    x: n * 630
    y: n

engine.add
  color: Color('beige')
  includedModules: ['Physical']
  width: 50
  height: 50
  rotatable: true
  rotation: Math.TAU/3
  x: 300
  y: 200

engine.bind 'update', ->
  if keydown.left
    obj.applyImpulse Point(-50, 0)
  if keydown.right
    obj.applyImpulse Point(50, 0)
  if keydown.space
    engine.add
      color: Color('navy blue')
      duration: 75
      dynamic: true
      friction: 1
      includedModules: ['Physical']
      restitution: 0
      rotatable: true
      width: 10
      height: 10
      y: 20
      x: rand(600) + 20

engine.bind "draw", (canvas) ->
  canvas.fillColor(Color("Fuzzy Wuzzy Brown"))
  canvas.font("20pt Helvetica")
  canvas.centerText("left / right to move", 50)
  canvas.centerText("space to make it rain!", 100)  

engine.start()

