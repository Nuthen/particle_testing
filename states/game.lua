game = {}

-- Game TODO:
--      * Add identity and title to conf.lua

function game:enter()
    self.particles = Particles:new()
end

function game:update(dt)
	self.particles:update(dt)
end

function game:keypressed(key, code)

end

function game:mousepressed(x, y, mbutton)

end

function game:draw()
	love.graphics.setBackgroundColor(125, 50, 200)

    love.graphics.setColor(255, 255, 255)
    local text = "This is the game"
    love.graphics.setFont(font[48])
    local x = love.graphics.getWidth()/2 - love.graphics.getFont():getWidth(text)/2
    local y = love.graphics.getHeight()/2 - love.graphics.getFont():getHeight(text)/2
    
    self.particles:draw()
end