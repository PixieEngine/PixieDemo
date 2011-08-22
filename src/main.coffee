# Create the engine
window.engine = Engine
  backgroundColor: Color("light yellow")
  canvas: $("canvas").powerCanvas()

# Add the player object to the engine
engine.add
  class: "Player"
  x: 160
  y: 96
  color: "#F00"
  width: 16
  height: 16

# Start the engine
engine.start()

