local app = require("OS2D.application")
local drawing = require("OS2D.drawing")
local drawable = drawing.drawable

local t_draw = drawable:new()
t_draw:setDrawable(love.graphics.newImage("bruh.png"))

t_draw.position:setx(500)

app:drawable(t_draw)

app:run()
