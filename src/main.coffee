# Create the engine
window.engine = Engine
  backgroundColor: Color("light yellow")
  canvas: $("canvas").pixieCanvas()

# Add the player object to the engine
engine.add
  class: "Player"
  x: 160
  y: 96
  color: "#F00"

engine.bind 'update', ->
  if justPressed.f
    engine.cameras()[0].flash()

# Start the engine
engine.start()


