local suit = require("OS2D.SUIT")

local mainmenu = require("OS2D.screens.screen"):new()

local input = {text = ""}

function mainmenu:load()
    local font = love.graphics.newFont("NotoSansHans-Regular.otf", 20)
    love.graphics.setFont(font)
end

function mainmenu:update()
    suit.layout:reset(100,100)
    
	suit.Input(input, suit.layout:row(200,30))

	suit.Label("Hello, "..input.text, {align = "left"}, suit.layout:row())

	-- put an empty cell that has the same size as the last cell (200x30 px)
	suit.layout:row()

	-- put a button of size 200x30 px in the cell below
	-- if the button is pressed, quit the game
    if suit.Button("Close", suit.layout:row()).hit then
	end
end

function mainmenu:draw()
    suit.draw()
end

function mainmenu:textinput(char)
    suit.textinput(char)
end

function mainmenu:keypressed(k)
    suit.keypressed(k)
end

return mainmenu
