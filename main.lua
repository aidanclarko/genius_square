-- Define the grid size and cell size
local gridSize = 6
local cellSize = 100
local board = {}

function love.load()
    love.graphics.setBackgroundColor(0.2, 0.2, 0.2)  -- Set the background color to white
    love.graphics.setColorMask(true, true, true, true)  -- Set color mask to enable all channels
    -- Initialize the board with random colors
    for i = 1, gridSize do
        board[i] = {}
        for j = 1, gridSize do
            local randomColor = {0,0,0}
            board[i][j] = randomColor
        end
    end
end

function love.draw()
    -- Define the border color (light gray)
    local borderColor = {0.8, 0.8, 0.8}  -- Light gray
    
    -- Draw the board
    for i = 1, gridSize do
        for j = 1, gridSize do
            -- Calculate the position for each cell
            local x = (i - 1) * cellSize
            local y = (j - 1) * cellSize
            
            -- Draw the square with the random color
            love.graphics.setColor(board[i][j])  -- Set the current color
            love.graphics.rectangle("fill", x, y, cellSize, cellSize)
            
            -- Draw the light gray border
            love.graphics.setColor(borderColor)  -- Set the border color
            love.graphics.rectangle("line", x, y, cellSize, cellSize)  -- "line" draws only the border
        end
    end
end

function love.update(dt)
    -- Update logic for the board can go here
end
