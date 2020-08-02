local two = {}

function two:new(x, y)
    local self = {
        x = x or 0;
        y = y or 0;
    }

    function self:incx(x)
        self.x = self.x + x;
    end

    function self:incy(y)
        self.y = self.y + y;
    end

    function self:setx(x)
        self.x = x
    end

    function self:sety(y)
        self.y = y
    end

    function self:setxy(x,y)
        self.x = x
        self.y = y
    end
    
    return self
end

return two
