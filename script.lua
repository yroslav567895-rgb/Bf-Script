local player = game.Players.LocalPlayer
local guiName = "MyImageGUI"

-- Удаляем старый GUI, если есть
if player.PlayerGui:FindFirstChild(guiName) then
    player.PlayerGui[guiName]:Destroy()
end

local gui = Instance.new("ScreenGui")
gui.Name = guiName
gui.Parent = player.PlayerGui

local image = Instance.new("ImageLabel")
image.Size = UDim2.new(0, 200, 0, 200)
image.Position = UDim2.new(0.5, -100, 0.5, -100)
image.BackgroundTransparency = 1
image.Image = "https://ibb.co/V0J1w9v6" -- РАБОЧАЯ КАРТИНКА
image.Parent = gui

-- Если картинка не загрузилась — показываем текст
image:GetPropertyChangedSignal("Image"):Connect(function()
    if image.Image == "" then
        local label = Instance.new("TextLabel")
        label.Size = UDim2.new(0, 200, 0, 50)
        label.Position = UDim2.new(0.5, -100, 0.6, 0)
        label.BackgroundTransparency = 1
        label.Text = "Картинка не загружена"
        label.TextColor3 = Color3.fromRGB(255,255,255)
        label.TextScaled = true
        label.Font = Enum.Font.GothamBold
        label.Parent = gui
    end
end)
