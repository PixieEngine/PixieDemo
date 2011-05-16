window.engine = Engine 
  canvas: $("canvas").powerCanvas()
  showFPS: true
  # FPS: 30

engine.loadMap "demo", ->
  # Add player square to the level after it loads
  engine.add
    class: "Player"
    x: 160
    y: 96
    color: "#F00"
    width: 16
    height: 16

engine.start()

