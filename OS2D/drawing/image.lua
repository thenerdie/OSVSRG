local drawable = require("OS2D.drawing.drawable")

local image = {}

function image:new(path)
    local self = drawable:new()

    self:setDrawable(love.graphics.newImage(path))

    return self
end

return image