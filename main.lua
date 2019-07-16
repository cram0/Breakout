require "dependencies"


function love.resize(w, h)
    push:resize(w,h)
end

function love.load()
    love.graphics.setDefaultFilter("nearest", "nearest")
    push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT, {fullscreen = false, resizable = true})
end

function love.update(dt)

end

function love.draw()
push:apply("start")
    love.graphics.draw(background)
    love.graphics.print(tostring(love.timer.getFPS()), 10, 0)
push:apply("end")
end