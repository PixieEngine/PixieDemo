window.engine = Engine 
  canvas: $("canvas").powerCanvas()

# Add a red square to the scene
engine.add
  x: 50
  y: 50
  color: "#F00"
  width: 100
  height: 100

engine.start()

