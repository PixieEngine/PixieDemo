# Create the engine
window.engine = Engine
  backgroundColor: Color("light yellow")
  canvas: $("canvas").pixieCanvas()

# Add the player object to the engine
player = engine.add
  class: "Player"
  x: 160
  y: 96
  color: "#F00"

engine.bind 'update', ->
  if justPressed.f
    engine.flash()

  if justPressed.s
    engine.shake()

# Start the engine
engine.start()

