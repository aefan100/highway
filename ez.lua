local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("แมพกาก", "Midnight")
local Tab = Window:NewTab("ขี้กาก")
local Section = Tab:NewSection("ฟังชั่นหลักๆ")
Section:NewToggle("กดรัว", "กดรัวจาดด", function(state)
    _G.eds = state
    local Keyy = "E"

    local function bypasscooldown()
    game:GetService("ProximityPromptService").PromptButtonHoldBegan:Connect(
    function(prompt)
        prompt.HoldDuration = 0
    end)
    end

    while _G.eds do task.wait()
            for i = 1, 10 do
                game:GetService("VirtualInputManager"):SendKeyEvent(true, Keyy, false, nil)
                task.wait()
                game:GetService("VirtualInputManager"):SendKeyEvent(false, Keyy, false, nil)
            end
        bypasscooldown()
    end
end)

local NewTab = Window:NewTab("Setting")
local Section2 = NewTab:NewSection("Ui setting")
Section2:NewKeybind("ปุ่ม เปิด/ปิด ui", "🤓", Enum.KeyCode.G, function()
	Library:ToggleUI()
end)
