window.engine = Engine 
  canvas: $("canvas").powerCanvas()
  # includedModules: ["Tilemap"]
  showFPS: true
  # FPS: 60
  # effect: Engine.Effects.scanlines

engine.loadMap "demo", ->
  # Add a red square to the scene
  engine.add
    class: "Player"
    x: 160
    y: 96
    color: "#F00"
    width: 16
    height: 16

engine.start()

