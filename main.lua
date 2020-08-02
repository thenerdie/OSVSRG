local app = require("OS2D.application")
local drawing = require("OS2D.drawing")
local image = drawing.image

local screenmanager = require("OS2D.screens.screenmanager")

function love.init(...)
    screenmanager:init(...)
end
function love.close(...)
    screenmanager:close(...)
end
function love.receive(...)
    screenmanager:recieve(...)
end
function love.directorydropped(...)
    screenmanager:directorydropped(...)
end
function love.draw(...)
    --[[local x, y = love.graphics.getDimensions()
    local baseres = {x=1980, y=1080}
    love.graphics.scale(x/baseres.x, y/baseres.y)]]--
    screenmanager:draw(...)
end
function love.filedropped(...)
    screenmanager:filedropped(...)
end
function love.focus(...)
    screenmanager:focus(...)
end
function love.keypressed(...)
    screenmanager:keypressed(...)
end
function love.keyreleased(...)
    screenmanager:keyreleased(...)
end
function love.lowmemory(...)
    screenmanager:lowmemory(...)
end
function love.mousefocus(...)
    screenmanager:mousefocus(...)
end
function love.mousemoved(...)
    screenmanager:mousemoved(...)
end
function love.mousepressed(...)
    screenmanager:mousepressed(...)
end
function love.mousereleased(...)
    screenmanager:mousereleased(...)
end
function love.quit(...)
    screenmanager:quit(...)
end
function love.resize(...)
    screenmanager:resize(...)
end
function love.textedited(...)
    screenmanager:textedited(...)
end
function love.textinput(...)
    screenmanager:textinput(...)
end
function love.threaderror(...)
    screenmanager:threaderror(...)
end
function love.touchmoved(...)
    screenmanager:touchmoved(...)
end
function love.touchpressed(...)
    screenmanager:touchpressed(...)
end
function love.touchreleased(...)
    screenmanager:touchreleased(...)
end
function love.update(...)
    screenmanager:update(...)
end
function love.visible(...)
    screenmanager:visible(...)
end
function love.wheelmoved(...)
    screenmanager:wheelmoved(...)
end
function love.gamepadaxis(...)
    screenmanager:gamepadaxis(...)
end
function love.gamepadpressed(...)
    screenmanager:gamepadpressed(...)
end
function love.gamepadreleased(...)
    screenmanager:gamepadreleased(...)
end
function love.joystickadded(...)
    screenmanager:joystickadded(...)
end
function love.joystickaxis(...)
    screenmanager:jotstickaxis(...)
end
function love.joystickhat(...)
    screenmanager:joystickhat(...)
end
function love.joystickpressed(...)
    screenmanager:joystickpressed(...)
end
function love.joystickreleased(...)
    screenmanager:joystickreleased(...)
end
function love.joystickremoved(...)
    screenmanager:joystickremoved(...)
end

local function Screen(name)
    return require("src/Screens/"..name)
end

screenmanager:registerstate("MainMenuScreen", Screen("MainMenu"))

screenmanager:switchstates("MainMenuScreen")

