-- TODO:
-- Scene Manager
-- Sprite stuff


function love.load()
  state = {}
  state.currentScene = "menu"

  scenes = {}
  scenes.menu = require("menu")
  scenes.level1 = {}
  -- ...
end

function love.update(dt)
  -- Update the active scene
  -- Change Scenes if we are supposed to

  -- updates current state
  scenes[state.currentScene].update(state, dt)
end

function love.draw()
  scenes[state.currentScene].draw(state)
end
