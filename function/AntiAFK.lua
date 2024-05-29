local AntiIdleKickerMaxTheDev21 = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local MadeBy = Instance.new("TextLabel")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local MoveGuiFrame = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
local Header = Instance.new("TextLabel")
local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")
local TimeDisplay = Instance.new("TextLabel")
local UIAspectRatioConstraint_4 = Instance.new("UIAspectRatioConstraint")
local KickMessageFrame = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local UIAspectRatioConstraint_5 = Instance.new("UIAspectRatioConstraint")
local UIAspectRatioConstraint_6 = Instance.new("UIAspectRatioConstraint")
local UIAspectRatioConstraint_7 = Instance.new("UIAspectRatioConstraint")
AntiIdleKickerMaxTheDev21.Name = "AntiIdleKickerMaxTheDev21"
AntiIdleKickerMaxTheDev21.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Frame.Parent = AntiIdleKickerMaxTheDev21
Frame.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
Frame.BackgroundTransparency = 0.100
Frame.Position = UDim2.new(0.397882968, 0, 0.47597006, 0)
Frame.Size = UDim2.new(0.186823919, 0, 0.0770862848, 0)
UICorner.CornerRadius = UDim.new(0, 4)
UICorner.Parent = Frame MadeBy.Name = "MadeBy"
MadeBy.Parent = Frame MadeBy.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MadeBy.BackgroundTransparency = 1.000 MadeBy.Position = UDim2.new(0.248908341, 0, 0.779369354, 0)
MadeBy.Size = UDim2.new(0.676999927, 0, 0.17695041, 0)
MadeBy.Font = Enum.Font.Sarpanch
MadeBy.Text = "L0tus"
MadeBy.TextColor3 = Color3.fromRGB(85, 255, 0)
MadeBy.TextScaled = true MadeBy.TextSize = 14.000
MadeBy.TextWrapped = true
UIAspectRatioConstraint.Parent = MadeBy
UIAspectRatioConstraint.AspectRatio = 18.286
MoveGuiFrame.Name = "MoveGuiFrame"
MoveGuiFrame.Parent = Frame MoveGuiFrame.BackgroundColor3 = Color3.fromRGB(85, 255, 0)
MoveGuiFrame.BackgroundTransparency = 0.200 MoveGuiFrame.Position = UDim2.new(0.0219999999, 0, 0.0909999982, 0)
MoveGuiFrame.Size = UDim2.new(0.169963419, 0, 0.80458349, 0)
UICorner_2.CornerRadius = UDim.new(0, 4)
UICorner_2.Parent = MoveGuiFrame
UIAspectRatioConstraint_2.Parent = MoveGuiFrame
UIAspectRatioConstraint_2.AspectRatio = 1.010
Header.Name = "Header"
Header.Parent = Frame Header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Header.BackgroundTransparency = 1.000 Header.Position = UDim2.new(0.248908341, 0, 0.0906161219, 0)
Header.Size = UDim2.new(0.676855803, 0, 0.314107567, 0)
Header.Font = Enum.Font.Sarpanch Header.Text = "反挂机"
Header.TextColor3 = Color3.fromRGB(85, 255, 0)
Header.TextScaled = true
Header.TextSize = 14.000
Header.TextWrapped = true
UIAspectRatioConstraint_3.Parent = Header
UIAspectRatioConstraint_3.AspectRatio = 10.299
TimeDisplay.Name = "TimeDisplay"
TimeDisplay.Parent = Frame
TimeDisplay.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TimeDisplay.BackgroundTransparency = 1.000
TimeDisplay.Position = UDim2.new(0.248908341, 0, 0.430000067, 0)
TimeDisplay.Size = UDim2.new(0.676855981, 0, 0.289999992, 0)
TimeDisplay.Font = Enum.Font.Sarpanch
TimeDisplay.Text = "进入时间: 0H 0M 0S"
TimeDisplay.TextColor3 = Color3.fromRGB(85, 255, 0)
TimeDisplay.TextScaled = true
TimeDisplay.TextSize = 14.000
TimeDisplay.TextWrapped = true
UIAspectRatioConstraint_4.Parent = TimeDisplay
UIAspectRatioConstraint_4.AspectRatio = 11.155
KickMessageFrame.Name = "KickMessageFrame"
KickMessageFrame.Parent = Frame
KickMessageFrame.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
KickMessageFrame.BackgroundTransparency = 0.100
KickMessageFrame.Position = UDim2.new(1.33264564e-07, 0, -0.37783134, 0)
KickMessageFrame.Size = UDim2.new(1.00000036, 0, 0.345414788, 0)
KickMessageFrame.Visible = false UICorner_3.CornerRadius = UDim.new(0, 4)
UICorner_3.Parent = KickMessageFrame
TextLabel.Parent = KickMessageFrame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.0169837624, 0, 0.11757081, 0)
TextLabel.Size = UDim2.new(0.967732251, 0, 0.750522435, 0)
TextLabel.Font = Enum.Font.Sarpanch
TextLabel.Text = "我们刚刚阻止了 roblox 踢你!"
TextLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true
UIAspectRatioConstraint_5.Parent = TextLabel
UIAspectRatioConstraint_5.AspectRatio = 17.842
UIAspectRatioConstraint_6.Parent = KickMessageFrame
UIAspectRatioConstraint_6.AspectRatio = 13.837
UIAspectRatioConstraint_7.Parent = Frame
UIAspectRatioConstraint_7.AspectRatio = 4.780
local function OMZVG_fake_script()
local script = Instance.new('LocalScript', Frame)
local Frame = script.Parent game:service'Players'.
LocalPlayer.Idled:Connect(function()
local VU = game:service'VirtualUser'
VU:CaptureController()
VU:ClickButton2(Vector2.new())
if Frame.KickMessageFrame.Visible == false then Frame.KickMessageFrame.Visible = true
wait(3)
Frame.KickMessageFrame.Visible = false end end)
local UIS = game:GetService('UserInputService')
local dragToggle = nil local dragStart = nil local startPos = nil
local function updateInput(input)
local delta = input.Position - dragStart
local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y) 
game:GetService('TweenService'):Create(Frame, TweenInfo.new(0.01), {Position = position}):Play()
end
Frame.MoveGuiFrame.InputBegan:Connect(function(input) if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then  dragToggle = true dragStart = input.Position startPos = Frame.Position input.Changed:Connect(function() if input.UserInputState == Enum.UserInputState.End then dragToggle = false
end
end)
end
end)
UIS.InputChanged:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then if dragToggle then updateInput(input)
end
end
end)
local t = 0 while true do wait(1) t = t + 1
local seconds = t % 60
local minutes = math.floor(t / 60) % 60
local hours = math.floor(t / 3600) % 24
Frame.TimeDisplay.Text = "进入时间: ".. hours.. "H ".. minutes.. "M ".. seconds.. "S"
end
end
coroutine.wrap(OMZVG_fake_script)()
