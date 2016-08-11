Particles = class("Particles")

function Particles:initialize()
    self.systems = {}
    
    local img = love.graphics.newImage("assets/img/particle_circle.png")

    self.systems[1] = love.graphics.newParticleSystem(img, 1024)

    local dir = math.rad(math.random(0, 360))
    --local offset = math.rad(90)
    --local dxMin = math.cos(dir - offset)
    --local dyMin = math.sin(dir - offset)
    --local dxMax = math.cos(dir + offset)
    --local dyMax = math.sin(dir + offset)
    self.speed = 25
    local speed = self.speed

    local x = love.graphics.getWidth()/2
    local y = love.graphics.getHeight()/2

    self.systems[1]:setPosition(x, y)
    self.systems[1]:setColors(245, 245, 59, 255, 250, 144, 57, 255, 230, 70, 53, 255, 143, 95, 90, 0)
    self.systems[1]:setSizes(1, 0)
    self.systems[1]:setParticleLifetime(2, 4)
    self.systems[1]:setEmissionRate(100)
    self.systems[1]:setSizeVariation(.1)
    --self.systems[1]:setRelativeRotation(true)
    --self.systems[1]:setSpeed(speed, speed, speed, speed)
    self.systems[1]:setInsertMode('top')

    local dir = math.rad(270)
    self.systems[1]:setDirection(dir)
    self.systems[1]:setLinearAcceleration(-20, -50, 20, -20)

    self.radius = 200

    self.timer = 0
end

function Particles:update(dt)
    for i, system in pairs(self.systems) do
        system:update(dt)
    end

    self.timer = self.timer + dt
end

function Particles:draw()
    love.graphics.setColor(255, 255, 255, 255)

    for i, system in pairs(self.systems) do
        love.graphics.draw(system)
    end
end
