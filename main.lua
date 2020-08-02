local app = require("OS2D.application")
local drawing = require("OS2D.drawing")
local image = drawing.image

local t_draw = image:new("bruh.png")

t_draw.position:setx(180)
t_draw.position:sety(250)

t_draw.origin:setx(100)

t_draw.origin:sety(100)



app:run()


app:drawable(t_draw)


function love.update(dt)
    t_draw.rotation:incx(dt*50)
end
