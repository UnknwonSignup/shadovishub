local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "WarningGui"
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.DisplayOrder = 999
ScreenGui.Parent = game:GetService("CoreGui")

local Overlay = Instance.new("Frame")
Overlay.Size = UDim2.new(1, 0, 1, 0)
Overlay.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Overlay.BackgroundTransparency = 0.4
Overlay.BorderSizePixel = 0
Overlay.Parent = ScreenGui

local Card = Instance.new("Frame")
Card.Size = UDim2.new(0, 420, 0, 220)
Card.Position = UDim2.new(0.5, -210, 0.5, -110)
Card.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
Card.BackgroundTransparency = 0.15
Card.BorderSizePixel = 0
Card.Parent = ScreenGui

local Corner = Instance.new("UICorner")
Corner.CornerRadius = UDim.new(0, 16)
Corner.Parent = Card

local Gradient = Instance.new("UIGradient")
Gradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(30, 30, 30)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(5, 5, 5)),
})
Gradient.Rotation = 135
Gradient.Parent = Card

local Icon = Instance.new("TextLabel")
Icon.Size = UDim2.new(1, 0, 0, 40)
Icon.Position = UDim2.new(0, 0, 0, 24)
Icon.BackgroundTransparency = 1
Icon.Text = "⚠"
Icon.TextColor3 = Color3.fromRGB(255, 200, 50)
Icon.TextSize = 32
Icon.Font = Enum.Font.GothamBold
Icon.Parent = Card

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, -40, 0, 28)
Title.Position = UDim2.new(0, 20, 0, 68)
Title.BackgroundTransparency = 1
Title.Text = "WARNING"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 20
Title.Font = Enum.Font.GothamBold
Title.TextXAlignment = Enum.TextXAlignment.Center
Title.Parent = Card

local Desc = Instance.new("TextLabel")
Desc.Size = UDim2.new(1, -40, 0, 50)
Desc.Position = UDim2.new(0, 20, 0, 100)
Desc.BackgroundTransparency = 1
Desc.Text = "Are you sure you want to proceed?\nThis might kick you possibly."
Desc.TextColor3 = Color3.fromRGB(180, 180, 180)
Desc.TextSize = 14
Desc.Font = Enum.Font.Gotham
Desc.TextWrapped = true
Desc.TextXAlignment = Enum.TextXAlignment.Center
Desc.Parent = Card

local Confirm = Instance.new("TextButton")
Confirm.Size = UDim2.new(0, 160, 0, 38)
Confirm.Position = UDim2.new(0.5, -80, 1, -54)
Confirm.BackgroundColor3 = Color3.fromRGB(220, 50, 50)
Confirm.BorderSizePixel = 0
Confirm.Text = "Proceed"
Confirm.TextColor3 = Color3.fromRGB(255, 255, 255)
Confirm.TextSize = 15
Confirm.Font = Enum.Font.GothamBold
Confirm.Parent = Card

local BtnCorner = Instance.new("UICorner")
BtnCorner.CornerRadius = UDim.new(0, 10)
BtnCorner.Parent = Confirm

Confirm.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
    for i = 1, 60 do
        local args = {
            "Input",
            "Reality KnifeReality Dagger",
            6,
            "Stunner"
        }
        game:GetService("Players").LocalPlayer.Character:WaitForChild("Combat"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
    end
    wait()
    for i = 1, 40 do
        local args = {
            "Input",
            "ArtiphaseArtificer's Hood",
            6,
            "Phase"
        }
        game:GetService("Players").LocalPlayer.Character:WaitForChild("Combat"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
    end
    wait()
    for i = 1, 50 do
        local args = {
            "Input",
            "Reality KnifeReality Dagger",
            6,
            "Reality"
        }
        game:GetService("Players").LocalPlayer.Character:WaitForChild("Combat"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
    end
end)
