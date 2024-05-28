local OrionLib = loadstring(game:HttpGet("https://pastebin.com/raw/jui6nBL1"))()
local LBLG = Instance.new("ScreenGui", getParent)
local LBL = Instance.new("TextLabel", getParent)
local player = game.Players.LocalPlayer

LBLG.Name = "LBLG"
LBLG.Parent = game.CoreGui
LBLG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LBLG.Enabled = true
LBL.Name = "LBL"
LBL.Parent = LBLG
LBL.BackgroundColor3 = Color3.new(1, 1, 1)
LBL.BackgroundTransparency = 1
LBL.BorderColor3 = Color3.new(0, 0, 0)
LBL.Position = UDim2.new(0.75,0,0.010,0)
LBL.Size = UDim2.new(0, 133, 0, 30)
LBL.Font = Enum.Font.GothamSemibold
LBL.Text = "TextLabel"
LBL.TextColor3 = Color3.new(1, 1, 1)
LBL.TextScaled = true
LBL.TextSize = 14
LBL.TextWrapped = true
LBL.Visible = true

local FpsLabel = LBL
local Heartbeat = game:GetService("RunService").Heartbeat
local LastIteration, Start
local FrameUpdateTable = {}

local function HeartbeatUpdate()
	LastIteration = tick()
	for Index = #FrameUpdateTable, 1, -1 do
		FrameUpdateTable[Index + 1] = (FrameUpdateTable[Index] >= LastIteration - 1) and FrameUpdateTable[Index] or nil
	end
	FrameUpdateTable[1] = LastIteration
	local CurrentFPS = (tick() - Start >= 1 and #FrameUpdateTable) or (#FrameUpdateTable / (tick() - Start))
	CurrentFPS = CurrentFPS - CurrentFPS % 1
	FpsLabel.Text = ("时间"..os.date("%H").."时"..os.date("%M").."分"..os.date("%S").."秒")
end
Start = tick()
Heartbeat:Connect(HeartbeatUpdate)
local Window = OrionLib:MakeWindow({Name = "莲", HidePremium = false, SaveConfig = true,IntroText = "莲", ConfigFolder = "krx"})
local Tab = Window:MakeTab({
    Name = "用户",
    Icon = "rbxassetid://17132521986",
    PremiumOnly = false
})

Tab:AddParagraph("用户名:"," "..game.Players.LocalPlayer.Name.."")
Tab:AddParagraph("你的注入器:"," "..identifyexecutor().."")
Tab:AddParagraph("服务器的ID"," "..game.GameId.."")

local Tab = Window:MakeTab({
    Name = "关于",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Tab:AddButton({
	Name = "QQ群",
	Callback = function()
     setclipboard("821989538")
  	end
})


OrionLib:MakeNotification({
	Name = "🐧🐧🐧🐧 ",
	Content = "☯注入成功☯",
	Image = "rbxassetid://12709895893",
	Time = 2
})

local Tab = Window:MakeTab({
    Name = "通用",
    Icon = "rbxassetid://17360377302",
    PremiumOnly = false
})

Tab:AddButton({
    Name ="点击传送",
    Callback = function()
    mouse = game.Players.LocalPlayer:GetMouse() tool = Instance.new("Tool") tool.RequiresHandle = false tool.Name = "点击传送" tool.Activated:connect(function() local pos = mouse.Hit+Vector3.new(0,2.5,0) pos = CFrame.new(pos.X,pos.Y,pos.Z) game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos end) tool.Parent = game.Players.LocalPlayer.Backpack
    end
})

Tab:AddButton({
    Name ="甩人",
    Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/zqyDSUWX"))()
    end
})
Tab:AddButton({
    Name ="吸人",
    Callback = function()
    loadstring(game:HttpGet("https://shz.al/~HHAKS"))()
    end
})
Tab:AddButton({
    Name ="飞车",
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Wanmeng811/L0tus-Hub/main/function/CarFly.lua"))()
    end
})

Tab:AddButton({
    Name ="飞行",
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Wanmeng811/L0tus-Hub/main/function/fly.lua"))()
    end
})

Tab:AddButton({
    Name ="最强透视",
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Wanmeng811/L0tus-Hub/main/function/ESP.lua"))()
    end
})

Tab:AddButton({
	Name = "转起来",
	Callback = function()
      	loadstring(game:HttpGet('https://pastebin.com/raw/r97d7dS0', true))()
  	end
})
Tab:AddButton({
    Name="立即死亡",
    Callback= function()
        game.Players.LocalPlayer.Character.Humanoid.Health=0
    end
})

local Tab = Window:MakeTab({
    Name = "玩家",
    Icon = "rbxassetid://4859271265",
    PremiumOnly = false
})

Tab:AddSlider({
	Name = "速度!",
	Min = 16,
	Max = 200,
	Default = 16,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "数值",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end
})
Tab:AddSlider({
	Name = "跳跃高度!",
	Min = 50,
	Max = 200,
	Default = 50,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "数值",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end
})
Tab:AddTextbox({
	Name = "跳跃高度设置",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end
})
Tab:AddTextbox({
	Name = "移动速度设置",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end
})
Tab:AddTextbox({
	Name = "重力设置",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Workspace.Gravity = Value
	end
})
Tab:AddToggle({
	Name = "夜视",
	Default = false,
	Callback = function(Value)
		if Value then
		    game.Lighting.Ambient = Color3.new(1, 1, 1)
		else
		    game.Lighting.Ambient = Color3.new(0, 0, 0)
		end
	end
})
Tab:AddButton({
	Name = "透视",
	Callback = function()
	local Players = game:GetService("Players"):GetChildren()
local RunService = game:GetService("RunService")
local highlight = Instance.new("Highlight")
highlight.Name = "Highlight"

for i, v in pairs(Players) do
    repeat wait() until v.Character
    if not v.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") then
        local highlightClone = highlight:Clone()
        highlightClone.Adornee = v.Character
        highlightClone.Parent = v.Character:FindFirstChild("HumanoidRootPart")
        highlightClone.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
        highlightClone.Name = "Highlight"
    end
end

game.Players.PlayerAdded:Connect(function(player)
    repeat wait() until player.Character
    if not player.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") then
        local highlightClone = highlight:Clone()
        highlightClone.Adornee = player.Character
        highlightClone.Parent = player.Character:FindFirstChild("HumanoidRootPart")
        highlightClone.Name = "Highlight"
    end
end)

game.Players.PlayerRemoving:Connect(function(playerRemoved)
    playerRemoved.Character:FindFirstChild("HumanoidRootPart").Highlight:Destroy()
end)

RunService.Heartbeat:Connect(function()
    for i, v in pairs(Players) do
        repeat wait() until v.Character
        if not v.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") then
            local highlightClone = highlight:Clone()
            highlightClone.Adornee = v.Character
            highlightClone.Parent = v.Character:FindFirstChild("HumanoidRootPart")
            highlightClone.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            highlightClone.Name = "Highlight"
            task.wait()
        end
end
end)
	end 
})

Tab:AddToggle({
	Name = "穿墙",
	Default = false,
	Callback = function(Value)
	local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local Clipon = true
 
Stepped = game:GetService("RunService").Stepped:Connect(function()
	if not Clipon == false then
		for a, b in pairs(Workspace:GetChildren()) do
        if b.Name == Players.LocalPlayer.Name then
        for i, v in pairs(Workspace[Players.LocalPlayer.Name]:GetChildren()) do
        if v:IsA("BasePart") then
        v.CanCollide = false
        end end end end
	else
		Stepped:Disconnect()
	end
end)
    end
})
local Tab =Window:MakeTab({
	Name = "驾驶帝国",
	Icon = "rbxassetid://17360377302",
	PremiumOnly = false
})

Tab:AddButton({
    Name ="自动刷钱",
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Marco8642/science/main/drivingempire"))()
    end
})

local Tab =Window:MakeTab({
	Name = "伐木大亨2",
	Icon = "rbxassetid://17360377302",
	PremiumOnly = false
})

Tab:AddButton({
    Name ="伐木大亨2",
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/frencaliber/LuaWareLoader.lw/main/luawareloader.wtf"))()
    end
})

local Tab = Window:MakeTab({
	Name = "鲨口求生2",
	Icon = "rbxassetid://17360377302",
	PremiumOnly = false
})

Tab:AddDropdown({
	Name = "免费船只",
	Default = "1",
	Options = {"DuckyBoatBeta", "DuckyBoat", "BlueCanopyMotorboat", "BlueWoodenMotorboat", "UnicornBoat", "Jetski", "RedMarlin", "Sloop", "TugBoat", "SmallDinghyMotorboat", "JetskiDonut", "Marlin", "TubeBoat", "FishingBoat", "VikingShip", "SmallWoodenSailboat", "RedCanopyMotorboat", "Catamaran", "CombatBoat", "TourBoat", "Duckmarine", "PartyBoat", "MilitarySubmarine",  "GingerbreadSteamBoat", "Sleigh2022", "Snowmobile", "CruiseShip"},
	Callback = function(Value)
local ohString1 = (Value)
game:GetService("ReplicatedStorage").EventsFolder.BoatSelection.UpdateHostBoat:FireServer(ohString1)
	end
})
Tab:AddButton({
	Name = "自动杀鲨鱼🦈",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/Sw1ndlerScripts/RobloxScripts/main/Misc%20Scripts/sharkbite2.lua",true))()
  	end
})

local Tab = Window:MakeTab({
    Name = "doors",
    Icon = "rbxassetid://17360377302",
    PremiumOnly = false
})

Tab:AddButton({
	Name = "穿墙(无拉回)",
	Callback = function()
loadstring(game:HttpGet("https://github.com/DXuwu/OK/raw/main/clip"))()
    end
})
Tab:AddButton({
  Name = "手电筒",
  Callback = function()
loadstring(game:HttpGet('https://pastebin.com/raw/9Daqa4hD'))()
    end
})

Tab:AddButton({
  Name = "None"
  Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Wanmeng811/L0tus-Hub/main/function/doors.lua"))()
   end
})

local Tab = Window:MakeTab({
    Name = "自然灾害",
    Icon = "rbxassetid://17360377302",
    PremiumOnly = false
})

Tab:AddButton({
	Name = "None",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Wanmeng811/L0tus-Hub/main/function/Natural%20Disaster%20Survival.lua"))()
    end
})

local Tab = Window:MakeTab({
    Name = "力量传奇",
    Icon = "rbxassetid://17360377302",
    PremiumOnly = false
})

Tab:AddButton({
    Name = "力量传奇修改力量",
    Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/jynzl/main/main/Musclas%20Legenos.lua'))()
    end
})

local Section = Tab:AddSection({
	Name = "传送位置"
})
Tab:AddButton({
	Name = "传送到出生点",
	Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(7, 3, 108)
    end
})
Tab:AddButton({
	Name = "传送到冰霜健身房",
	Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2543, 13, -410)
    end
})
Tab:AddButton({
	Name = "传送到神话健身房",
	Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2177, 13, 1070)
    end
})
Tab:AddButton({
	Name = "传送到永恒健身房",
	Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6686, 13, -1284)
    end
})
Tab:AddButton({
	Name = "传送到传说健身房",
	Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4676, 997, -3915)
    end
})
Tab:AddButton({
	Name = "传送到肌肉之王健身房",
	Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-8554, 22, -5642)
    end
})
Tab:AddButton({
	Name = "传送到安全岛",
	Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-39, 10, 1838)
    end
})
Tab:AddButton({
	Name = "传送到幸运抽奖区域",
	Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2606, -2, 5753)
  	end
})

local Section = Tab:AddSection({
	Name = "功能脚本"
})
Tab:AddButton({
	Name = "None",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Wanmeng811/L0tus-Hub/main/function/Strength%20Legends.lua"))()
  	end
})

local Tab = Window:MakeTab({
    Name = "新更",
    Icon = "rbxassetid://17360377302",
    PremiumOnly = false
})

Tab:AddButton({
    Name="自瞄",
    Callback=function()
loadstring(game:HttpGet("https://pastebin.com/raw/1Gp9c57U"))()
    end
})
Tab:AddButton({
  Name = "范围",
  Callback = function ()
loadstring(game:HttpGet("https://pastebin.com/raw/jiNwDbCN"))()
  end
})
Tab:AddButton({
    Name ="iw指令",
    Callback =function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
    end
})

local Tab = Window:MakeTab({
    Name = "监狱人生",
    Icon = "rbxassetid://17360377302",
    PremiumOnly = false
})

Tab:AddButton({
	Name = "手里剑（秒杀）",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/PSXhuge/1/114514/jian"))()
  	end
})
local Section = Tab:AddSection({
	Name = "传送位置"
})
Tab:AddButton({
	Name = "警卫室",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(847.7261352539062, 98.95999908447266, 2267.387451171875)
  	end
})
Tab:AddButton({
	Name = "监狱室内",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(919.2575073242188, 98.95999908447266, 2379.74169921875)
  	end
})
Tab:AddButton({
	Name = "罪犯复活点",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-937.5891723632812, 93.09876251220703, 2063.031982421875)
  	end
})
Tab:AddButton({
	Name = "监狱室外",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(760.6033325195312, 96.96992492675781, 2475.405029296875)
  	end
})

local Tab = Window:MakeTab({
    Name = "战斗勇士",
    Icon = "rbxassetid://17360377302",
    PremiumOnly = false
})

Tab:AddButton({
    Name = "弓箭爆头",
    Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/6RQGbFqD"))()
    end
})

local Tab = Window:MakeTab({
	Name = "忍者传奇",
	Icon = "rbxassetid://17360377302",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "位置传送"
})

Tab:AddButton({
	Name = "传送到禅师之刃",
	Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5060.838,38.680,1625.843)
    end
})

Tab:AddButton({
	Name = "传送到出生点",
	Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(25.665502548217773, 3.4228405952453613, 29.919952392578125)
    end
})
Tab:AddButton({
	Name = "传送到附魔岛",
	Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(51.17238235473633, 766.1807861328125, -138.44842529296875)
    end
})
Tab:AddButton({
	Name = "传送到神秘岛",
	Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(171.97178649902344, 4047.380859375, 42.0699577331543)
    end
})
Tab:AddButton({
	Name = "传送到太空岛",
	Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(148.83824157714844, 5657.18505859375, 73.5014877319336)
    end
})
Tab:AddButton({
	Name = "传送到冻土岛",
	Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(139.28330993652344, 9285.18359375, 77.36406707763672)
    end
})
Tab:AddButton({
	Name = "传送到永恒岛",
	Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(149.34817504882812, 13680.037109375, 73.3861312866211)
    end
})
Tab:AddButton({
	Name = "传送到沙暴岛",
	Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(133.37144470214844, 17686.328125, 72.00334167480469)
    end
})
Tab:AddButton({
	Name = "传送到雷暴岛",
	Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(143.19349670410156, 24070.021484375, 78.05432891845703)
    end
})
Tab:AddButton({
	Name = "传送到远古炼狱岛",
	Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(141.27163696289062, 28256.294921875, 69.3790283203125)
    end
})
Tab:AddButton({
	Name = "传送到午夜暗影岛",
	Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(132.74267578125, 33206.98046875, 57.495574951171875)
    end
})
Tab:AddButton({
	Name = "传送到神秘灵魂岛",
	Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(137.76148986816406, 39317.5703125, 61.06639862060547)
    end
})
Tab:AddButton({
	Name = "传送到冬季奇迹岛",
	Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(137.2720184326172, 46010.5546875, 55.941951751708984)
    end
})
Tab:AddButton({
	Name = "传送到黄金大师岛",
	Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(128.32339477539062, 52607.765625, 56.69411849975586)
    end
})
Tab:AddButton({
	Name = "传送到龙传奇岛",
	Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(146.35226440429688, 59594.6796875, 77.53300476074219)
    end
})
Tab:AddButton({
	Name = "传送到赛博传奇岛",
	Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(137.3321075439453, 66669.1640625, 72.21722412109375)
    end
})
Tab:AddButton({
	Name = "传送到天岚超能岛",
	Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(135.48077392578125, 70271.15625, 57.02311325073242)
    end
})
Tab:AddButton({
	Name = "传送到混沌传奇岛",
	Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(148.58590698242188, 74442.8515625, 69.3177719116211)
    end
})
Tab:AddButton({
	Name = "传送到混沌传奇岛",
	Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(148.58590698242188, 74442.8515625, 69.3177719116211)
    end
})
Tab:AddButton({
	Name = "传送到灵魂融合岛",
	Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(136.9700927734375, 79746.984375, 58.54051971435547)
    end
})
Tab:AddButton({
	Name = "传送到黑暗元素岛",
	Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(141.697265625, 83198.984375, 72.73107147216797)
    end
})
Tab:AddButton({
	Name = "传送到内心和平岛",
	Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(135.3157501220703, 87051.0625, 66.78429412841797)
    end
})
Tab:AddButton({
	Name = "传送到炽烈漩涡岛",
	Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(135.08216857910156, 91246.0703125, 69.56692504882812)
    end
})
local Section = Tab:AddSection({
	Name = "功能脚本"
})
Tab:AddButton({
	Name = "ProXiMaHub",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/TrixAde/Proxima-Hub/main/Main.lua"))()
    end
})
Tab:AddButton({
	Name = "None",
	Callback = function()
    loadstring(game:GetObjects("rbxassetid://4229359911")[1].Source)()
    end
})

Tab:AddButton({
	Name = "None2",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Wanmeng811/L0tus-Hub/main/function/NinJa%20Legends.lua"))()
    end
})

local Tab = Window:MakeTab({
	Name = "极速传奇",
	Icon = "rbxassetid://17360377302",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "位置传送"
})

Tab:AddButton({
	Name = "传奇公路",
	Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3682.60254, 71.5308151, 5592.50879, -0.0193620101, 3.62180188e-08, -0.999812543, 4.99353519e-08, 1, 3.52577771e-08, 0.999812543, -4.92433294e-08, -0.0193620101)
    end
})

Tab:AddButton({
	Name = "白雪城",
	Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-866.386841, 4.00088787, 2165.70654, -0.499959469, -9.93534854e-08, -0.866048813, -4.44803661e-08, 1, -8.90424445e-08, 0.866048813, -5.99544503e-09, -0.499959469)
    end
})

Tab:AddButton({
	Name = "熔岩城",
	Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1616.82739, 4.05089617, 4330.65283, 7.86637156e-06, -4.15036254e-08, -1, -6.3789912e-08, 1, -4.15041264e-08, 1, 6.37902389e-08, 7.86637156e-06)
    end
})

Tab:AddButton({
	Name = "城市",
	Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-537.767456, 3.95088959, 386.226837, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    end
})

local Section = Tab:AddSection({
	Name = "功能脚本"
})
Tab:AddButton({
	Name = "None",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Wanmeng811/L0tus-Hub/main/function/Legends%20Of%20Speed.lua"))()
    end
})
