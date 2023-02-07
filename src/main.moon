local text

love.load = ->
  text = love.graphics.newText(love.graphics.newFont(12), "Hello World!")

love.draw = ->
  love.graphics.setColor 255, 255, 255
  love.graphics.draw text, 0, 0