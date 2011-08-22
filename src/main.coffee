window.engine = Engine 
  canvas: $("canvas").powerCanvas()
  showFPS: true
  # FPS: 30

engine.add
  class: "Player"
  x: 160
  y: 96
  color: "#F00"
  width: 16
  height: 16

engine.start()

