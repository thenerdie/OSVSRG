local one = {}

function one:new(x)
    local self = {
        x = x or 0;
    }

    function self:setx(x)
        self.x = x
    end
    
    return self
end

return one
