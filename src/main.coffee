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

# Start the engine
engine.start()

