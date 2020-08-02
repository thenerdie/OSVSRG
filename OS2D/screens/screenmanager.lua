local screen = require("OS2D.screens.screen")

local screenmanager = {
    states = {};
    current = screen:new();
}

function screenmanager:registerstate(name, state)
    state = state or screen:new()
    state.screenmanager = self
    self.states[name] = state
    return state
end

function screenmanager:switchstates(name, ...)
    self.current:unload()
    local newstate = self.states[name]
    self.current = newstate or screenmanager:registerstate(name, screen:new())
    self.current:load(...)
end

function screenmanager:init(...)
    self.current:init(...)
end
function screenmanager:close(...)
    self.current:close(...)
end
function screenmanager:receive(...)
    self.current:recieve(...)
end
function screenmanager:directorydropped(...)
    self.current:directorydropped(...)
end
function screenmanager:draw(...)
    self.current:draw(...)
end
function screenmanager:filedropped(...)
    self.current:filedropped(...)
end
function screenmanager:focus(...)
    self.current:focus(...)
end
function screenmanager:keypressed(...)
    self.current:keypressed(...)
end
function screenmanager:keyreleased(...)
    self.current:keyreleased(...)
end
function screenmanager:lowmemory(...)
    self.current:lowmemory(...)
end
function screenmanager:mousefocus(...)
    self.current:mousefocus(...)
end
function screenmanager:mousemoved(...)
    self.current:mousemoved(...)
end
function screenmanager:mousepressed(...)
    self.current:mousepressed(...)
end
function screenmanager:mousereleased(...)
    self.current:mousereleased(...)
end
function screenmanager:quit(...)
    self.current:quit(...)
end
function screenmanager:resize(...)
    self.current:resize(...)
end
function screenmanager:textedited(...)
    self.current:textedited(...)
end
function screenmanager:textinput(...)
    self.current:textinput(...)
end
function screenmanager:threaderror(...)
    self.current:threaderror(...)
end
function screenmanager:touchmoved(...)
    self.current:touchmoved(...)
end
function screenmanager:touchpressed(...)
    self.current:touchpressed(...)
end
function screenmanager:touchreleased(...)
    self.current:touchreleased(...)
end
function screenmanager:update(...)
    self.current:update(...)
end
function screenmanager:visible(...)
    self.current:visible(...)
end
function screenmanager:wheelmoved(...)
    self.current:wheelmoved(...)
end
function screenmanager:gamepadaxis(...)
    self.current:gamepadaxis(...)
end
function screenmanager:gamepadpressed(...)
    self.current:gamepadpressed(...)
end
function screenmanager:gamepadreleased(...)
    self.current:gamepadreleased(...)
end
function screenmanager:joystickadded(...)
    self.current:joystickadded(...)
end
function screenmanager:joystickaxis(...)
    self.current:jotstickaxis(...)
end
function screenmanager:joystickhat(...)
    self.current:joystickhat(...)
end
function screenmanager:joystickpressed(...)
    self.current:joystickpressed(...)
end
function screenmanager:joystickreleased(...)
    self.current:joystickreleased(...)
end
function screenmanager:joystickremoved(...)
    self.current:joystickremoved(...)
end

return screenmanager