local state = {}

state.onTransition = true

function state.transition(newScene)
  state.previousScene = currentScene
  state.currentScene = newScene
  state.onTransition = true 
end

return state
