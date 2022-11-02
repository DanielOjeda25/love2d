_G.love = require('love')

-- esta funciones son muy importantes
function love.load()
  _G.pacman = {}
  pacman.x = 200
  pacman.y = 300
  pacman.eat = false

  _G.food_x = 600
end

function love.update(dt)
  pacman.x = pacman.x + 1
  if pacman.x >= food_x + 20 then
    pacman.eat = true
  end
end

function love.draw()

  if not pacman.eat then
    love.graphics.setColor(1, 0, 0)
    love.graphics.circle('fill', food_x, 300, 50, 50)
  end

  love.graphics.setColor(1, 1, 0)
  love.graphics.arc('fill', pacman.x, pacman.y, 60, 1, 5)

end
