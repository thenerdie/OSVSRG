local twoDimensionalVector = require("OS2D.vectors.two")
local oneDimensionalVector = require("OS2D.vectors.two")

local drawable = {}

function drawable:new()
    local self = {
        position = twoDimensionalVector:new();
        scale = twoDimensionalVector:new(1,1);
        rotation = oneDimensionalVector:new();
        origin = twoDimensionalVector:new()
    }

    function self:setDrawable(drawable)
        self.drawable = drawable
    end

    return self
end

return drawable
