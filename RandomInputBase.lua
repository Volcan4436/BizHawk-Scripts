-- List of possible inputs
local inputs = { "Up", "Down", "Left", "Right", "A", "B" }

-- Function to send a random input
local function sendRandomInput()
    local randomIndex = math.random(1, #inputs)
    local inputButton = inputs[randomIndex]
    local inputTable = {}
    
    for _, button in pairs(inputs) do
        inputTable[button] = (button == inputButton)
    end
    
    joypad.set(inputTable)
    emu.frameadvance()
end

-- Set random seed
math.randomseed(os.time())

-- Main loop
while true do
    sendRandomInput()
end



