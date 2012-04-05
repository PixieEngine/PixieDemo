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

player.bind 'overlay', (canvas) ->
  canvas.centerText
    color: 'black'
    y: 200
    text: 'hello'


engine.bind 'update', ->
  if justPressed.f
    engine.flash()

  if justPressed.s
    engine.shake()

# Start the engine
engine.start()

