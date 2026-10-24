-- TODO:
-- Scene Manager
-- Sprite stuff


function love.load()
  state = require("state")
  state.currentScene = "menu"

  scenes = {}
  scenes.menu = require("menu")
  scenes.level1 = {}
  -- ...
end

function love.update(dt)
  -- Update the active scene
  -- Change Scenes if we are supposed to
  
  if (state.onTransition) then
    scenes[state.currentScene].init(state)
    state.onTransition = false
  else
    scenes[state.currentScene].update(state, dt)
  end
end

function love.draw()
  scenes[state.currentScene].draw(state)
end
