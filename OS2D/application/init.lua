local app = {
    Drawables = {};
}

function app:run(cb)
    cb = cb or (
        function()
        end
    )
    cb()
    --[[function love.draw()
        self.Drawables = self.Drawables or {}
        for i, drawable in pairs(self.Drawables) do
            local d = drawable.drawable
            if d ~= nil then
                love.graphics.draw(d, drawable.position.x, drawable.position.y, math.rad(drawable.rotation.x), drawable.scale.x, drawable.scale.y, drawable.origin.x, drawable.origin.y)
            end
        end
    end]]--
end

function app:drawable(d)
    self.Drawables[#self.Drawables+1] = d
end

function app:clear()
    self.Drawables = {}
end

return app
