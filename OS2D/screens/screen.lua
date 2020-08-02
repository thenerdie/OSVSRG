local screen = {}

--stubs from https://github.com/rm-code/screenmanager/blob/master/Screen.lua

local function null()
    return
end

function screen:new()
    self.load = null
    self.unload = null
    self.init = null
    self.close = null
    self.receive = null
    self.directorydropped = null
    self.draw = null
    self.filedropped = null
    self.focus = null
    self.keypressed = null
    self.keyreleased = null
    self.lowmemory = null
    self.mousefocus = null
    self.mousemoved = null
    self.mousepressed = null
    self.mousereleased = null
    self.quit = null
    self.resize = null
    self.textedited = null
    self.textinput = null
    self.threaderror = null
    self.touchmoved = null
    self.touchpressed = null
    self.touchreleased = null
    self.update = null
    self.visible = null
    self.wheelmoved = null
    self.gamepadaxis = null
    self.gamepadpressed = null
    self.gamepadreleased = null
    self.joystickadded = null
    self.joystickaxis = null
    self.joystickhat = null
    self.joystickpressed = null
    self.joystickreleased = null
    self.joystickremoved = null
    self.switchstates = function(name, ...)
        self.screenmanager:switchstates(name, ...)
    end
    return self
end

return screen
