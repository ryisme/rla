-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local openclose = Instance.new("TextButton")
local Frame = Instance.new("Frame")
local KILLTP = Instance.new("TextButton")
local SPEED = Instance.new("TextButton")
local COINS = Instance.new("TextButton")
local ESP = Instance.new("TextButton")
local RADIENT = Instance.new("TextButton")
local ILLUMINATE = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

openclose.Name = "openclose"
openclose.Parent = ScreenGui
openclose.BackgroundColor3 = Color3.fromRGB(85, 0, 0)
openclose.BorderColor3 = Color3.fromRGB(53, 48, 50)
openclose.Position = UDim2.new(0.94696641, 0, 0.940448761, 0)
openclose.Size = UDim2.new(0, 36, 0, 26)
openclose.Font = Enum.Font.SourceSans
openclose.Text = "o"
openclose.TextColor3 = Color3.fromRGB(255, 0, 127)
openclose.TextSize = 32.000

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 252, 219)
Frame.BackgroundTransparency = 1.000
Frame.BorderColor3 = Color3.fromRGB(0, 2, 53)
Frame.Position = UDim2.new(0.858007669, 0, 0.392097384, 0)
Frame.Size = UDim2.new(0, 124, 0, 152)

KILLTP.Name = "KILLTP"
KILLTP.Parent = Frame
KILLTP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
KILLTP.BackgroundTransparency = 0.650
KILLTP.BorderColor3 = Color3.fromRGB(27, 42, 53)
KILLTP.Position = UDim2.new(0.0115160942, 0, -0.00285528647, 0)
KILLTP.Size = UDim2.new(0, 126, 0, 31)
KILLTP.Font = Enum.Font.SourceSans
KILLTP.Text = "KILL TP"
KILLTP.TextColor3 = Color3.fromRGB(170, 76, 153)
KILLTP.TextSize = 18.000

SPEED.Name = "SPEED"
SPEED.Parent = Frame
SPEED.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SPEED.BackgroundTransparency = 0.650
SPEED.Position = UDim2.new(0.0118125007, 0, 0.19940342, 0)
SPEED.Size = UDim2.new(0, 126, 0, 31)
SPEED.Font = Enum.Font.SourceSans
SPEED.Text = "SPEED"
SPEED.TextColor3 = Color3.fromRGB(245, 210, 255)
SPEED.TextSize = 18.000

COINS.Name = "COINS"
COINS.Parent = Frame
COINS.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
COINS.BackgroundTransparency = 0.650
COINS.Position = UDim2.new(0.0118125007, 0, 0.39715308, 0)
COINS.Size = UDim2.new(0, 126, 0, 31)
COINS.Font = Enum.Font.SourceSans
COINS.Text = "COINS"
COINS.TextColor3 = Color3.fromRGB(111, 255, 123)
COINS.TextSize = 18.000

ESP.Name = "ESP"
ESP.Parent = Frame
ESP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ESP.BackgroundTransparency = 0.650
ESP.Position = UDim2.new(0.0118125007, 0, 0.601100445, 0)
ESP.Size = UDim2.new(0, 126, 0, 31)
ESP.Font = Enum.Font.SourceSans
ESP.Text = "ESP"
ESP.TextColor3 = Color3.fromRGB(255, 255, 0)
ESP.TextSize = 18.000

RADIENT.Name = "RADIENT"
RADIENT.Parent = Frame
RADIENT.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RADIENT.BackgroundTransparency = 0.650
RADIENT.BorderColor3 = Color3.fromRGB(27, 42, 53)
RADIENT.Position = UDim2.new(0.0115160942, 0, -0.206802651, 0)
RADIENT.Size = UDim2.new(0, 126, 0, 31)
RADIENT.Font = Enum.Font.SourceSans
RADIENT.Text = "RADIENT"
RADIENT.TextColor3 = Color3.fromRGB(170, 26, 28)
RADIENT.TextSize = 18.000

ILLUMINATE.Name = "ILLUMINATE"
ILLUMINATE.Parent = Frame
ILLUMINATE.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ILLUMINATE.BackgroundTransparency = 0.650
ILLUMINATE.BorderColor3 = Color3.fromRGB(27, 42, 53)
ILLUMINATE.Position = UDim2.new(0.0115160942, 0, -0.410750031, 0)
ILLUMINATE.Size = UDim2.new(0, 126, 0, 31)
ILLUMINATE.Font = Enum.Font.SourceSans
ILLUMINATE.Text = "ILLUMINATE"
ILLUMINATE.TextColor3 = Color3.fromRGB(255, 255, 255)
ILLUMINATE.TextSize = 18.000

repeat wait() until game.Players.LocalPlayer
ScreenGui.Parent = game:GetService("CoreGui")
-- Scripts:

local function GKHNEU_fake_script() -- openclose.LocalScript 
	local script = Instance.new('LocalScript', openclose)

	script.Parent.MouseButton1Down:connect(function()
		if script.Parent.Parent.Frame.Visible == false then
			script.Parent.Parent.Frame.Visible = true
			script.Parent.Text = "o"
		else
			script.Parent.Parent.Frame.Visible = false
			script.Parent.Text = "o"
		end
	end)
	
	
end
coroutine.wrap(GKHNEU_fake_script)()
local function XOYTA_fake_script() -- KILLTP.LocalScript 
	local script = Instance.new('LocalScript', KILLTP)

	KILLTP.MouseButton1Click:connect(function()
	game.StarterGui:SetCore("SendNotification", {
			Title = "KILL TP";
			Duration = 0.3;
			Text = "";
	
		})
		StopSwordTp = false
		size = 33
		while true do
			wait()
			if StopSwordTp then return end
			for i,v in pairs(game.Players:GetPlayers()) do
				if v.Name ~= game:GetService("Players").LocalPlayer.Name then
					pcall(function()
						HRP = game.Players.LocalPlayer.Character:FindFirstChild("Head")
						if (HRP.Position - v.Character.HumanoidRootPart.Position).Magnitude <= size then
							v.Character['Left Arm']:BreakJoints()
							v.Character['Left Leg']:BreakJoints()
							v.Character['Right Arm']:BreakJoints()
							v.Character['Right Leg']:BreakJoints()
							v.Character['Left Arm'].CanCollide = false
							v.Character['Left Leg'].CanCollide = false
							v.Character['Right Arm'].CanCollide = false
							v.Character['Right Leg'].CanCollide = false
							v.Character['Left Arm'].Massless = true
							v.Character['Left Leg'].Massless = true
							v.Character['Right Arm'].Massless = true
							v.Character['Right Leg'].Massless = true
							v.Character['Left Arm'].Transparency = 1
							v.Character['Left Leg'].Transparency = 1
							v.Character['Right Arm'].Transparency = 1
							v.Character['Right Leg'].Transparency = 1
							v.Character['Left Arm'].Position = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Handle.Position
							v.Character['Left Leg'].Position = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Handle.Position
							v.Character['Right Arm'].Position = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Handle.Position
							v.Character['Right Leg'].Position = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Handle.Position
	
						end
					end)
				end
			end
		end
	end)
end
coroutine.wrap(XOYTA_fake_script)()
local function XBVMGTZ_fake_script() -- SPEED.LocalScript 
	local script = Instance.new('LocalScript', SPEED)

	SPEED.MouseButton1Click:connect(function()
		--memorize--
		game.StarterGui:SetCore("SendNotification", {
			Title = "SPEED";
			Duration = 0.3;
			Text = "";
	
		})
		local player = game.Players.LocalPlayer
		local mouse = player:GetMouse()
	
		-- Settings
	
		bind = "x" -- has to be lowercase
		bind2 = "c"
	
		-- Script
	
		mouse.KeyDown:connect(function(key)
			if key == bind then
	
				game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed=120
				game.StarterGui:SetCore("SendNotification", {
					Title = "on";
					Duration = 0.8;
					Text = "";
	
				})
			end
		end)
	
	
		mouse.KeyDown:connect(function(key2)
			if key2 == bind2 then
				game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed=16
				game.StarterGui:SetCore("SendNotification", {
					Title = "off";
					Duration = 0.8;
					Text = "";
				})
			end
		end)
	end)
end
coroutine.wrap(XBVMGTZ_fake_script)()
local function VBHXZU_fake_script() -- COINS.LocalScript 
	local script = Instance.new('LocalScript', COINS)

	COINS.MouseButton1Click:connect(function()
	
	
		game.StarterGui:SetCore("SendNotification", {
			Title = "COINS";
			Duration = 0.6;
			Text = "";
		})
	
	
		local uis = Game:GetService("UserInputService")
		uis.InputBegan:connect(function(inst)
			if inst.KeyCode == Enum.KeyCode.F then
				local PlayerHead = game.Players.LocalPlayer.Character.Head
				for i,v in pairs(game:GetService("Workspace").Coins:GetDescendants()) do 
					if v.Name == "TouchInterest" and v.Parent then
						firetouchinterest(PlayerHead, v.Parent, 0)
						firetouchinterest(PlayerHead, v.Parent, 1)
					end
				end
			end
		end)
	end)
	
end
coroutine.wrap(VBHXZU_fake_script)()
local function WVEN_fake_script() -- ESP.LocalScript 
	local script = Instance.new('LocalScript', ESP)

	ESP.MouseButton1Click:connect(function()
		function isnil(thing)
			return (thing == nil)
		end
	
	
		local function round(n)
			return math.floor(tonumber(n) + 0.5)
		end
	
		function UpdatePlayerChams()
			for i,v in pairs(game:GetService'Players':GetChildren()) do
				pcall(function()
					if not isnil(v.Character) then
						for _,k in pairs(v.Character:GetChildren()) do
							if k:IsA'BasePart' and not k:FindFirstChild'Cham' then
								local cham = Instance.new('BoxHandleAdornment',k)
								cham.ZIndex= 10
								cham.Adornee=k
								cham.AlwaysOnTop=true
								cham.Size=k.Size
								cham.Transparency=1
								cham.Color3=Color3.new(1,0,0)
								cham.Name = 'Cham'
							end
						end
						if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild'NameEsp' then
							local bill = Instance.new('BillboardGui',v.Character.Head)
							bill.Name = 'NameEsp'
							bill.Size=UDim2.new(1,20,1,2)
							bill.Adornee=v.Character.Head
							bill.AlwaysOnTop=true
							local name = Instance.new('TextLabel',bill)
							name.TextWrapped=true
							name.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..'m')
							name.Size = UDim2.new(1,0,1,0)
							name.TextYAlignment='Top'
							name.TextColor3=Color3.new(1,1,0)
							name.BackgroundTransparency=1
						else
							v.Character.Head.NameEsp.TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..'m')
						end
					end
				end)
			end
		end
	
		while wait() do
			UpdatePlayerChams()
		end
	
		
	end)
	
end
coroutine.wrap(WVEN_fake_script)()
local function NIUDK_fake_script() -- RADIENT.LocalScript 
	local script = Instance.new('LocalScript', RADIENT)

	RADIENT.MouseButton1Click:connect(function()
	
		game:GetService("StarterGui"):SetCore("SendNotification",{
			Title = "Radiant";
			Text = "Radiant has laoded"
		})
	
	
		local active = true
		local trueActive = true
		local reachType = "Sphere"
		local dmgEnabled = true
		local visualizerEnabled = false
	
		local visualizer = Instance.new("Part")
		visualizer.BrickColor = BrickColor.Red()
		visualizer.Transparency = 0.6
		visualizer.Anchored = true
		visualizer.CanCollide = false
		visualizer.Size = Vector3.new(0.5,0.5,0.5)
		visualizer.BottomSurface = Enum.SurfaceType.Smooth
		visualizer.TopSurface = Enum.SurfaceType.Smooth
	
		local ScreenGui = Instance.new("ScreenGui")
		local Frame = Instance.new("Frame")
		local TextLabel = Instance.new("TextLabel")
		local TextBox = Instance.new("TextBox")
		local TextLabel_2 = Instance.new("TextLabel")
		local TextLabel_3 = Instance.new("TextLabel")
		local TextLabel_4 = Instance.new("TextLabel")
		local TextButton = Instance.new("TextButton")
		local Frame_2 = Instance.new("Frame")
		local Frame_3 = Instance.new("Frame")
		local Frame_4 = Instance.new("Frame")
		local Frame_5 = Instance.new("Frame")
		local TextButton_2 = Instance.new("TextButton")
	
		--Properties:
	
		ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		ScreenGui.DisplayOrder = 999999999
		ScreenGui.ResetOnSpawn = false
	
		Frame.Parent = ScreenGui
		Frame.AnchorPoint = Vector2.new(0, 0.5)
		Frame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
		Frame.BackgroundTransparency = 0.300
		Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Frame.BorderSizePixel = 4
		Frame.Position = UDim2.new(0, 0, 0.600000024, 0)
		Frame.Size = UDim2.new(0.150000006, 0, 0.300000012, 0)
	
		TextLabel.Parent = Frame
		TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel.BackgroundTransparency = 1.000
		TextLabel.Size = UDim2.new(0.600000024, 0, 0.200000003, 0)
		TextLabel.Font = Enum.Font.SourceSans
		TextLabel.Text = "SIZE:"
		TextLabel.TextColor3 = Color3.fromRGB(120,0,0)
		TextLabel.TextScaled = true
		TextLabel.TextSize = 14.000
		TextLabel.TextWrapped = true
	
		TextBox.Parent = Frame
		TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TextBox.BackgroundTransparency = 1.000
		TextBox.Position = UDim2.new(0.600000024, 0, 0, 0)
		TextBox.Size = UDim2.new(0.400000006, 0, 0.200000003, 0)
		TextBox.Font = Enum.Font.SourceSans
		TextBox.Text = "3.5"
		TextBox.TextColor3 = Color3.fromRGB(255, 76, 76)
		TextBox.TextScaled = true
		TextBox.TextSize = 14.000
		TextBox.TextWrapped = true
	
		TextLabel_2.Parent = Frame
		TextLabel_2.BackgroundColor3 = Color3.fromRGB(0, 0, 250)
		TextLabel_2.BackgroundTransparency = 1.000
		TextLabel_2.Position = UDim2.new(0, 0, 0.200000003, 0)
		TextLabel_2.Size = UDim2.new(0.600000024, 0, 0.200000003, 0)
		TextLabel_2.Font = Enum.Font.SourceSans
		TextLabel_2.Text = "SHAPE:"
		TextLabel_2.TextColor3 = Color3.fromRGB(120, 0, 0)
		TextLabel_2.TextScaled = true
		TextLabel_2.TextSize = 14.000
		TextLabel_2.TextWrapped = true
	
		TextLabel_3.Parent = Frame
		TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel_3.BackgroundTransparency = 1.000
		TextLabel_3.Position = UDim2.new(0, 0, 0.400000006, 0)
		TextLabel_3.Size = UDim2.new(0.600000024, 0, 0.200000003, 0)
		TextLabel_3.Font = Enum.Font.SourceSans
		TextLabel_3.Text = "TOGGLE:"
		TextLabel_3.TextColor3 = Color3.fromRGB(120, 0, 0)
		TextLabel_3.TextScaled = true
		TextLabel_3.TextSize = 14.000
		TextLabel_3.TextWrapped = true
	
		TextLabel_4.Parent = Frame
		TextLabel_4.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
		TextLabel_4.BackgroundTransparency = 1.000
		TextLabel_4.Position = UDim2.new(0, 0, 0.600000024, 0)
		TextLabel_4.Size = UDim2.new(0.600000024, 0, 0.200000003, 0)
		TextLabel_4.Font = Enum.Font.SourceSans
		TextLabel_4.Text = "VISIBLE:"
		TextLabel_4.TextColor3 = Color3.fromRGB(120, 0, 0)
		TextLabel_4.TextScaled = true
		TextLabel_4.TextSize = 14.000
		TextLabel_4.TextWrapped = true
	
		TextButton.Parent = Frame
		TextButton.AnchorPoint = Vector2.new(0, 1)
		TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TextButton.BackgroundTransparency = 1.000
		TextButton.Position = UDim2.new(0, 0, 1, 0)
		TextButton.Size = UDim2.new(1, 0, 0.150000006, 0)
		TextButton.Font = Enum.Font.SourceSansBold
		TextButton.Text = "KILL RADIANT"
		TextButton.TextColor3 = Color3.fromRGB(120, 0, 0)
		TextButton.TextScaled = true
		TextButton.TextSize = 14.000
		TextButton.TextWrapped = true
	
		Frame_2.Parent = Frame
		Frame_2.Active = true
		Frame_2.AnchorPoint = Vector2.new(0, 0.5)
		Frame_2.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
		Frame_2.BorderSizePixel = 0
		Frame_2.Position = UDim2.new(0.725000024, 0, 0.699999988, 0)
		Frame_2.Size = UDim2.new(0, 25, 0, 25)
		Frame_2.ZIndex = 5
	
		Frame_3.Parent = Frame_2
		Frame_3.AnchorPoint = Vector2.new(0.5, 0.5)
		Frame_3.BackgroundColor3 = Color3.fromRGB(255, 76, 76)
		Frame_3.BorderSizePixel = 0
		Frame_3.LayoutOrder = 1
		Frame_3.Position = UDim2.new(0.5, 0, 0.5, 0)
	
		Frame_4.Parent = Frame
		Frame_4.Active = true
		Frame_4.AnchorPoint = Vector2.new(0, 0.5)
		Frame_4.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
		Frame_4.BorderSizePixel = 0
		Frame_4.Position = UDim2.new(0.725000024, 0, 0.5, 0)
		Frame_4.Size = UDim2.new(0, 25, 0, 25)
		Frame_4.ZIndex = 5
	
		Frame_5.Parent = Frame_4
		Frame_5.AnchorPoint = Vector2.new(0.5, 0.5)
		Frame_5.BackgroundColor3 = Color3.fromRGB(255, 76, 76)
		Frame_5.BorderSizePixel = 0
		Frame_5.LayoutOrder = 1
		Frame_5.Position = UDim2.new(0.5, 0, 0.5, 0)
		Frame_5.Size = UDim2.new(1, 0, 1, 0)
	
		TextButton_2.Parent = Frame
		TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TextButton_2.BackgroundTransparency = 1.000
		TextButton_2.Position = UDim2.new(0.600000024, 0, 0.200000003, 0)
		TextButton_2.Size = UDim2.new(0.400000006, 0, 0.200000003, 0)
		TextButton_2.Font = Enum.Font.SourceSans
		TextButton_2.Text = "Sphere"
		TextButton_2.TextColor3 = Color3.fromRGB(255, 76, 76)
		TextButton_2.TextScaled = true
		TextButton_2.TextSize = 14.000
		TextButton_2.TextWrapped = true
	
		repeat wait() until game.Players.LocalPlayer
		ScreenGui.Parent = game:GetService("CoreGui")
	
	
	
		Frame_4.InputBegan:connect(function(inp)
			if inp.UserInputType == Enum.UserInputType.MouseButton1 then
				dmgEnabled = not dmgEnabled
				local goal = {Size = UDim2.new(0,0,0,0)}
				if dmgEnabled then
					goal = {Size = UDim2.new(1,0,1,0)}
				end
				game:GetService("TweenService"):Create(Frame_5,TweenInfo.new(0.12,Enum.EasingStyle.Quad),goal):Play()
			end
		end)
		Frame_2.InputBegan:connect(function(inp)
			if inp.UserInputType == Enum.UserInputType.MouseButton1 then
				visualizerEnabled = not visualizerEnabled
				local goal = {Size = UDim2.new(0,0,0,0)}
				if visualizerEnabled then
					goal = {Size = UDim2.new(1,0,1,0)}
				end
				game:GetService("TweenService"):Create(Frame_3,TweenInfo.new(0.12,Enum.EasingStyle.Linear),goal):Play()
			end
		end)
		TextButton_2.MouseButton1Click:connect(function()
			if reachType == "Sphere" then
				reachType = "Box"
			else
				reachType = "Sphere"
			end
			TextButton_2.Text = reachType
		end)
		TextButton.MouseButton1Click:connect(function()
			trueActive = false
			ScreenGui:Destroy()
		end)
		game:GetService("UserInputService").InputBegan:connect(function(inp,gpe)
			if gpe then return end
			if inp.KeyCode == Enum.KeyCode.H then
				ScreenGui.Enabled = not ScreenGui.Enabled
			end
		end)
	
		local plr = game.Players.LocalPlayer
	
		local function onHit(hit,handle)
			local victim = hit.Parent:FindFirstChildOfClass("Humanoid")
			if victim and victim.Parent.Name ~= game.Players.LocalPlayer.Name then
				if dmgEnabled then
					for _,v in pairs(hit.Parent:GetChildren()) do
						if v:IsA("Part") then
							firetouchinterest(v,handle,0)
							firetouchinterest(v,handle,1)
						end
					end
				else
					firetouchinterest(hit,handle,0)
					firetouchinterest(hit,handle,1)
				end
			end
		end
	
		local function getWhiteList()
			local wl = {}
			for _,v in pairs(game.Players:GetPlayers()) do
				if v ~= plr then
					local char = v.Character
					if char then
						for _,q in pairs(char:GetChildren()) do
							if q:IsA("Part") then
								table.insert(wl,q)
							end
						end
					end
				end
			end
			return wl
		end
	
		game:GetService("RunService").RenderStepped:connect(function()
			if not active or not trueActive then return end
			local s = plr.Character and plr.Character:FindFirstChildOfClass("Tool")
			if not s then visualizer.Parent = nil end
			if s then
				local handle = s:FindFirstChild("Handle") or s:FindFirstChildOfClass("Part")
				if handle then
					if visualizerEnabled then
						visualizer.Parent = workspace
					else
						visualizer.Parent = nil
					end
					local reach = tonumber(TextBox.Text)
					if reach then
						if reachType == "Sphere" then
							visualizer.Shape = Enum.PartType.Ball
							visualizer.Size = Vector3.new(reach,reach,reach)
							visualizer.CFrame = handle.CFrame
							for _,v in pairs(game.Players:GetPlayers()) do
								local hrp = v.Character and v.Character:FindFirstChild("HumanoidRootPart")
								if hrp and handle then
									local mag = (hrp.Position-handle.Position).magnitude
									if mag <= reach then
										onHit(hrp,handle)
									end
								end
							end
						elseif reachType == "Box" then
							visualizer.Shape = Enum.PartType.Block
							visualizer.Size = Vector3.new(reach,reach,reach)
							visualizer.CFrame = handle.CFrame
							for _,v in pairs(game.Players:GetPlayers()) do
								local hrp = v.Character and v.Character:FindFirstChild("HumanoidRootPart")
								if hrp and handle then
									local mag = (hrp.Position-handle.Position).magnitude
									if mag <= reach then
										onHit(hrp,handle)
									end
								end
							end
						end
					end
				end
			end
		end)
	
	
		local AC = false
		local Key = Enum.KeyCode.V
	
		game:GetService("UserInputService").InputBegan:Connect(function(k,g)
			if not g and k.KeyCode == Key then
				AC = not AC
			end
		end)
	
		while wait() do
			if AC then
				pcall(function()
					local Sword = game:GetService'Players'.LocalPlayer.Character:FindFirstChildOfClass'Tool'
					Sword:Activate()
					Sword:Activate()
				end)
			end
		end
	end)
end
coroutine.wrap(NIUDK_fake_script)()
local function ORHZAQC_fake_script() -- ILLUMINATE.LocalScript 
	local script = Instance.new('LocalScript', ILLUMINATE)

	ILLUMINATE.MouseButton1Click:connect(function()
	
		_, Protected_by_MoonSecV2, Discord = 'discord.gg/gQEH2uZxUk'
	
	
		,nil,nil;(function() _msec=(function(o,e,n)local T=e[((0x60-69)+-#"subemelaradjo")];local W=n[o[(1467-0x31b)]][o[((-0x30+854)+-#'If not skid then return hasbitches end')]];local c=(8+-#{96;(function()return#{('Pfbhkf'):find("\98")}>0 and 1 or 0 end);96,(function()return#{('Pfbhkf'):find("\98")}>0 and 1 or 0 end)})/((-#"nico der hurensohn"+((0x100b80/160)/0x35))-104)local a=((118+((-68+0xd)+-#'I FUCKING HATE FEMBOYS'))+-0x27)-(84-0x53)local y=n[o[(-124+(-#"MoonsecV2 deobfuscator 2020 free 100 percent"+(0xc3c8/179)))]][o[(((0x3c4b00/144)/0x70)+-#"cruz pp is large")]];local p=(0x4e-(-#"i love minors"+(-90+((0xbd07/223)+-#'hypeblox likes sucking big black cock'))))+(-25+0x1b)local j=n[o[(595+-#{",";52;55;(function()return{','}end)(),(function()return{','}end)();55;{}})]][o[(821+-#{",";1;68,'nil'})]]local r=(-115+0x75)-(-#'if found dad when back from milk then print yay end'+((((((-#[[psx dupe is abd]]+(-0x1c08/184))+-24)+-#[[mald]])+254)+-#'Fucking Retarted')/0x3))local H=(8+-#{(function()return{','}end)();'}',(function()return#{('lkKMfM'):find("\75")}>0 and 1 or 0 end),'nil'})local P=(((((-0x716b5+232271)+-#[[You are an absolute baboon]])/0x16)/110)+100)local v=(-#{(function()return{','}end)(),{};{},'}'}+8)local z=(8+-#{{},{};86,","})local M=((-10-(-#[[sussy chat sussy sussy]]+(0x12fc/(-#{1,(function()return#{('hlmHob'):find("\109")}>0 and 1 or 0 end);{},1;'}';(function()return#{('hlmHob'):find("\109")}>0 and 1 or 0 end);1}+169))))+22)local D=(0x5e-(((-#[[i have found your porn folder i am now approaching your house at 83 miles per hour]]+((31923+-0x73)+-106))/155)+-0x72))local U=(0x138/((((-0x546/50)+217)+-78)+-#[[Gay porn]]))local x=(0xdb/(-0x77+(-#[[Gay porn]]+((-0xa20/96)+227))))local k=(-#'function howtofucknicuse print you cant fuck nicuse sorry haha you noooo end'+(17222/(((-#{(function()return{','}end)();63,'}';'}','nil'}+3201989)/0xd8)/0x44)))local t=(((-#{60,(function()return#{('KlfbKH'):find("\102")}>0 and 1 or 0 end);60;'}',{},1;(function()return#{('KlfbKH'):find("\102")}>0 and 1 or 0 end)}+276)-152)+-114)local s=(-#[[how to use visual studio jk jk dont take it seriously what 6 hours per messange]]+(282-(205+-#{109;{},(function()return#{('pbbOOP'):find("\98")}>0 and 1 or 0 end);'}',","})))local u=(9+-#{(function()return{','}end)();'}','}',{};1;","})local f=(8+-#{'}',49;{};'nil';'nil';(function()return#{('bLLBmK'):find("\76")}>0 and 1 or 0 end)})local h=(0x73-(0x132-(-#"send nudes"+(-0x72+(0x296-345)))))local b=((156-(-#"MSC 793z487nhvcgsdfgsudfza9889jgvz56gz56z547684z5g54z948g56z74j56475jzg645z6456 oh wait"+((-#'0nly was here mf'+(0x2419-4647))/21)))+-0x17)local O=((-#{(function()return{','}end)(),54,'nil',1;64,(function()return#{('kKfBOb'):find("\102")}>0 and 1 or 0 end);64}+369)/0xb5)local _=(-#{94;91;{},(function()return{','}end)();",";'}',1}+9)local g=(7+-#{{};{},1;19;(function()return#{('LhPOpH'):find("\80")}>0 and 1 or 0 end)})local R=o[(-29+0x546)];local F=n[o[((0xff+-118)+-#"Nicuse will go in history")]][o[(-#{78;'}',{},(function()return#{('OKKhmf'):find("\75")}>0 and 1 or 0 end),","}+493)]];local L=n[(function(e)return type(e):sub(1,1)..'\101\116'end)('}.#/:;%,')..'\109\101'..('\116\97'or'*/}:/$#/')..o[(0x1bd98/194)]];local w=n[o[(-91+(0x1ffe7/193))]][o[(-0x5b+1014)]];local B=(-#"zykem krul"+(0x6c-96))-(-#[[papier der afghaner wurde von nice dem bombenleger gefickt]]+(((0x483ca08/169)/45)/166))local S=(124-(-#"mama mo"+((-#[[Russian letters]]+(0x105+(-0x70+38)))+-0x2b)))-(0x16-20)local K=n[o[(-#'0nly was here mf'+(347-0xdb))]][o[(-#[[i have found your porn folder i am now approaching your house at 83 miles per hour]]+(-119+(0xa2b0/76)))]];local e=function(e,o)return e..o end local N=(-#{'nil',93,",";93;1}+9)*(-102+(-65+(-#[[MoonsecV2 deobfuscator 2020 free 100 percent]]+(0x12b+-84))))local G=n[o[(2353-(-0x68+1342))]];local d=(26-0x18)*(-0x3c+(0xb330/(-0x11+261)))local I=(2088-0x428)*(-#"if syn then haxor alert end"+(102-(4307/(-#[[goofy ahh uncle productions]]+(266-0xb4)))))local E=((0x5d84/((((149408-0x12404)-0x920b)/145)+-#'Bwomp'))+-#"why 6 hours cooldown to send a meme strings")local m=(250/(338-((0x137+-91)+-#'nigglet')))*(0x81-127)local C=n[o[(0x884-1124)]]or n[o[(-0x1d+(3702/0x6))]][o[(0x884-1124)]];local i=(19968/(-#[[windows xp startup sfx]]+((0x243-350)-129)))local o=n[o[(1226+-#{{},(function()return{','}end)();'nil'})]];local j=(function(d)local i,n=1,0x10 local o={j={},v={}}local l=-r local e=n+a while true do o[d:sub(e,(function()e=i+e return e-a end)())]=(function()l=l+r return l end)()if l==(N-r)then l=""n=B break end end local l=#d while e<l+a do o.v[n]=d:sub(e,(function()e=i+e return e-a end)())n=n+r if n%c==B then n=S w(o.j,(K((o[o.v[S]]*N)+o[o.v[r]])))end end return j(o.j)end)("..:::MoonSec::..!*%&/+^,;.:_#$}=:^._;#,=,%^,+./_&}&*%/*,!:=$=!}&$^#._#_^:%.+;;,_;$^*+//,&_%$%!*&!^=.}#$=$%#+_;:_.}.*;/,,^:+$+!/&&^%.*#!=!%=+};$}#}#*_/:,.:;$;!,&^^+./#&=&%%+*;!_=}=&}/$,#:_$_!:&.^;.,$^=^%++/:&_%}%*^%!,=:}$}!$&#^_.:#:!.,;+,;^_#}_/:+:&.^&.*!!&=^=_}$#=#/_+:.._;};*;^,;+:+!/!&/%^*.!#**&,}+$##_#!_*:/.,.!_%,!^;+^/.&#&!%%*.!;=_*#}*$/#,_#:$:!.&;^:,^#+=+%/+&;%_*}**&%=,}:$$$&#&_^:..#_$;%,+^;+#/}/*&/%,/!!$!/=&};$.#$_=_;#}.;;_,},$^/+;/:&}&!%,*^!.=#}=}}$+#.___%:*./;,,:;+^!+//^&=&_*=*%!+*!}_$=$*#+_,:}.$.!;&,^;*+#+!/%&_&,*_!=!*!#},$_#$#!_&::..;#,=,%,$+;/#&}&*^+*,!}=$=%}&$.#._#=!:%.:;;,}^}^&+//$/.%$%/*&*}=.}$$=$,#+_#:_.}.*;/;=^:+}+!/&,,%.%!!=!/=+}_$_#}!%_/:#.:.!;!,+^^+=,+&=&^%+&*!_===*}.$,#}_$_!:&.^:%,#,!^%++^^&_&%%**/!,=:}$}!$=#^_$:#:!.%;+,;^_,:+*/;&,%#*$*!!&=^!*$##=#%_^:;._;};/,/^,+:/$/;&&%^*./*===%}+$;.__}_*:/.,;:,$}!:&_=++&#%=%%;=,}^.^*&%/%*;*%!=*%!&$$#;,%+=+%/+:_.=.!,:,%+}*}$$$!#&_^:..#,=#*.!^#+_/}/*.,;=,_,=_,=,}^$.##%*%_*.=$/%;*,*^/+,_$_%.%/+*^!.=#!*%,$+#____*:*./;,,:;%^!+^/^&#%#%!*%!_*&}_}*$*#._,:_.$.*;&,:^.+#/=/%&:%;*#!}!+=/},$:#$#;_&:,...}#/,%^;+;/}&}&*%/*,*==$=&}&$.#._$:=:%_*;;,}^}^&+//,&:&=&**&!.=.=*$=$%#+#:=+.}.+;/,;^:+$+!++&^%.%*!=!,=+};$_#}#*_/:$.:;$;!,&^^^_/#&=&.%+*$!_=}=*};$,#:#%_!#*.^;:,#^=.$+++*&_&%%**/!,!#=!}!$$#^_$:#.=.%:+,;^_^;+*/}&,&!*$&!!&=^=/$##=#%_$:;._;};*;*^,^%/$/!&&%^*.!#!$=%}$$;#__}_*:/.,.+,$,}^&+;/.+#%=%%%!!;!^}}};$/#,_::$:_.&;;,.^}+=+%/+&;&^*}*#!/=:}:=$$!#&#*:.:,;=;/,+^;+_/}/_&/%.*:!=!!=&}^$.$!_=__:+:%;_,},*^/^!/:/!&!%+*^%.=#}=}+$+$*___!:*.;_.,:,%^!^*/^&:%#&*+,!+=$}_}*$*#/_,::#+.!;;,^^:+#+&/%&+//*_*%!*=^},$:#$#!#_:^..;#;!,%^++;::&}&*%/!%*&=$=!}&/$&;%}*:*+!+}.$}$&&%+;/,&:%$^;,;^,+$:&}}$%#+_;}#!%=+#.}$#=#_#/;_.,.,;!,_^,^,*$}/#}#*_/!}=_=:}+}^#_#,_=:/}.%$*;!_=}&&+&&_/&!/%.*+!+;:;!^=^%++;_.#:*;.%=**=:}$}!*:%_%$==!/!/=_}*#}#&}}/^&,%:*$,=,^#,}$$##=#%*#!.!;=&$!;/^,+:/$;;:;.&,:,:^}+_/.%:&:%$%+=/=;=#=*/*^$+^/.&#,+;_;,^$/}+&+&/:%#%#.;:+.&;^,.:=#,_,_;:#}%%%**!/=,&^/%&^&,;,_&.#;=;%#!$*_}_..*:!;;.&,%,%::=*$.##_=*+!$=$}}}.$/#+#&_^:%:%%/*=!.=#}=+.&:%:%&*$*!==$!_}&}^++&/^&.,.;};!^:,*!^}+$*#/_,!!!%=&=,}+$_;=%!/_&+%;*_;+^%^!+%/$&$%+*;!:.:./,=,%^+:__!_%;/;,;^,#^%#*};$^#._#=,**!&}$=/+.^;+//,&:,+./;,,^/!+*+&++#}_;:_.}$&=&$_}&:&_=_+..;};+*_!%=+};++//%=%,=;!;$}$;$+$;#.:&%:&^%+*;!_,%+:+*&#==#!_!:&.^}:}#$;.,^!/;&_%}^$,.^;+}+%+%&+&+*:*}!&:$;},;^_+}_/:#.;.#,},&,,+_+_/+$%#%_+:;!.=&=;%_^}+:/$/!...;;;,.+*&.%,!$$,_}_*:/}!=;=&$=#}__.#:*:*.;,:,:}^=%}*$/#,%*!}!$=;,*;!^#+=+%:.:*.};*;!,^+_;,}*$!#&_^=*!*=!}^%#,^+_/}/*._;;;,,%,&+;+//#&*}}*:*.!#=_!*,/^/+,/:;/.+.,},!==#}=}%%,%$%;*$*+=.+;;^^$^!+&;,.$.!^/;:,.^:/#%*&%&,*=,_:}.!;&,^__#*_=:}.};_,#;%^^+;&:/}&#&%*/!$=}/&;^,%^++;;}:$:&;.+},=^^:,}^$^#._#=/=+}++.;&^}^*+/.:.$.=;+;*/$^}++*/$_#+_;:_=+=%=!}%$$#$_+:;.:%:*=!=!%=+%.%_*,+}_$:,.:;$#$$/#$#,_+_&:,;.,$,/!^=*}/$,*%&*%/*&}^=;}=}&.,+$/;&_%}^&;&^_,&&/+./+&+%%#*.=.%;+$#$/$*_/_&:.;}/_,,^:%++!%$*/!:},*$=+!^$^$=;%+=/$/!&&,_+$,+^#%/&/}&#__}_*},!!=}}^}:#;#/_#:/.;.%.;!$=_}}}**,&&%.%/!}./;#,.^#+=:%_*..:/;&;&+&=}}:$$$!!_%:*$!#$^},}.*=^^/}/*&/^;,},:^.^*&;&}&.%}%^!:^.;=,},*^/.=:=.}./!}*=!.=#}=%+&$%.%$!=!/!;}#}#_#^*+&/^&.;_+/*;!+=;}_%_/!&%%%!=*^#+;,,^^.+#_=:&:,.#.}*/!*=/},$%#;%:^+&;=^/&;/,%^++;.*:$:&;,,#!_!_=!}&$^*,%*%^*^!/=^}}$$#,#;.*;$,#^}%}!}=.}#$=*+%^%/*,!!=%},}%^_^%+!/&&^,#,=,},/+:};$_#}#*_/:,$:$=#!//:%+./#&=../==..=/#_$+#!^=&;#/#:$.!&#=*;=/^$$.:/%$}.+&!}^;=&=$:;$&$:*;!&^$}/:*+$/;#%;$=,;%/.:;.%;$$;,%^##;/}:$%,!%%$*&#=._!+:=,_%%,%^!#===%/^/;&/}$%;!.=.=%}#$=#}#.,;+,&.%%*+!;^,+$/%&;&:%}*=!.!*}$./;!+=+%/+;_.!.%^*,^^!+,&}/%&#!^!:!}!&#+__$:_#__:^/=%$*:!$!!^_+^&#%$%_*}#!:&;_,},*$!_#:_:*.+.+;.,$+$^&++#!$!__:}:*$$=+}$}*#*#*:..},_%&*%!+=;+%&=&}%._;_*.$.!;&$}$$$!_=,#^/+,^:*;!*=/},/&/!%#*^*%!;===/}/#:+.++&}&*%/^:,=^=+^//&.%}!&%/!_/#:!,_^}^*#/:;:$:*;+,+^=^,*:/%/*&%},*$==!;_&}#_+.!;,;.:!^}.=*_!%=+};%=/!%:*_!}====#+}.#_#,#!*!/*%+*;!_^%^//:=,&&&!$!!_=,=_}.$_#,#;___}&%%**/!,/:/}+%/,_*_=:#.=.%=;}!###%#!__!;&**$*!!&&.+%+!&;&#*:*^;^..;*,/^,:^_#:&./.%^.,;^!^_/:/:}^#;_*:/.,}.$#}&#;_._}:}./;,;^&$!/}}}*$/*,%^!}*.=;=;#!}*#;;,/:&;%_*}^&^$+}+%+*+&#$_^:..#$.=+}/$^.=_&:/:&;_,=%;!/=&}^$.*^&%%**&/=.&,},*^/_._&_*+};+;},;^}#!};$+#;__}=!}!&=#};}*,_+#/^&.%#,^;*,,^&+}/}&%%,*#/,:+.!;&,^_*$*_#:&:&.,;/,%.}=,},$:#$!#*;!$};./,=,%^+#^_/:^,_^}.*;%^:$_}#$^#._#=***=.!*#*$$$&_,:#+*%$%!*&!;/%}#$=$%#+_;:_.}:&.;,,^:+$://&&^%.*#!=!%=+};$_#}#*_/:,.:;$;*,&^^+./#&=//%+*;!#=}!.}/$,#:#=_!:&.,;._+^=^%++^}&_%}%%*/*!=:}}}!!&#^_$:#.=.%;+;*^_+=+*///=%:*$*!!/=^}.$#$*!__+:.._;=;*,/^,^#,,/!&/%^,,!#===%=,$;#__=_*};.,;:,$;%^&+^/_&#/=%%*+!;*_}}}*$^#,_#:$$+.&.;,.^#^&+%:&&;%_*}%&!/=,}=$$*%#&_^:.:};=;%,_^;.,/}/*&/&.*:!$!,=&%,$.##_=_%:+.;;=,},;^/+./:&$&!%&*;!.!!}=}%$+#;}%:}:%./;,,:^=^!+&/,&.%$*=*&!+=.}_$}}.#/_,::.}.!;&,^");local w=(0x24+-23)local n=90 local l=r;local o={}o={[(((-0x10+159)+-#[[i shoved a whole bag of jellibeans up my ass]])-98)]=function()local e,o,a,r=y(j,l,l+p);l=l+m;n=(n+(w*m))%i;return(((r+n-(w)+d*(m*c))%d)*((c*I)^c))+(((a+n-(w*c)+d*(c^p))%i)*(d*i))+(((o+n-(w*p)+I)%i)*d)+((e+n-(w*m)+I)%i);end,[(26-0x18)]=function(e,e,e)local e=y(j,l,l);l=l+a;n=(n+(w))%i;return((e+n-(w)+I)%d);end,[(60/0x14)]=function()local e,o=y(j,l,l+c);n=(n+(w*c))%i;l=l+c;return(((o+n-(w)+d*(c*m))%d)*i)+((e+n-(w*c)+i*(c^p))%d);end,[(0x308/194)]=function(o,e,n)if n then local e=(o/c^(e-r))%c^((n-a)-(e-r)+a);return e-e%r;else local e=c^(e-a);return(o%(e+e)>=e)and r or S;end;end,[((-4394/0xa9)+0x1f)]=function()local n=o[(-#"howtodumpscript"+(65+-0x31))]();local e=o[((64+-0x37)+-#'lego hax')]();local _=r;local l=(o[((0x51-59)+-#[[Impulse youtube ez]])](e,a,N+m)*(c^(N*c)))+n;local n=o[(40-0x24)](e,21,31);local e=((-r)^o[(0x2a-38)](e,32));if(n==S)then if(l==B)then return e*S;else n=a;_=B;end;elseif(n==(d*(c^p))-a)then return(l==S)and(e*(a/B))or(e*(S/B));end;return W(e,n-((i*(m))-r))*(_+(l/(c^E)));end,[(420/(9170/0x83))]=function(e,c,c)local c;if(not e)then e=o[(0x7e-125)]();if(e==S)then return'';end;end;c=F(j,l,l+e-r);l=l+e;local e=''for o=a,#c do e=R(e,K((y(F(c,o,o))+n)%i))n=(n+w)%d end return e;end}local function F(...)return{...},G('#',...)end local function j()local _={};local l={};local e={};local t={_,l,nil,e};local n={}local u=(0x340/52)local d={[(507/0xa9)]=(function(e)return not(#e==o[(142/0x47)]())end),[((-72+0x5d)+-#[[impulse loves moonsex]])]=(function(e)return o[(-0x57+(0x24a8/102))]()end),[((0x7e+-111)+-#[[waste of sperm]])]=(function(e)return o[(96-0x5a)]()end),[(-#[[windows xp startup sfx]]+(((198+-0x52)+-#"dies of cringe")-76))]=(function(e)local n=o[((0xa3e/114)+-#"anime is for fags")]()local o=''local e=1 for l=1,#n do e=(e+u)%i o=R(o,K((y(n:sub(l,l))+e)%d))end return o end)};t[3]=o[(0x39-55)]();for e=a,o[(0x50-79)]()do l[e-a]=j();end;local e=o[(0x56+-85)]()for l=1,e do local e=o[((800/0x14)+-#[[If not skid then return hasbitches end]])]();local o;local e=d[e%((1271/0x1f)+-#[[W4rboy was here]])];n[l]=e and e({});end;for i=1,o[(-70+0x47)]()do local e=o[(93-0x5b)]();if(o[(916/0xe5)](e,r,a)==B)then local d=o[(0x33+-47)](e,c,p);local l=o[(396/0x63)](e,m,c+m);local e={o[(-#[[psx dupe is abd]]+(0x66-84))](),o[((143-0x7b)+-#'beliveri12 is gay')](),nil,nil};local t={[((141-0x66)+-#"psx real dupe steal all ur pets no joke")]=function()e[x]=o[(-#[[yeet]]+(0x85/19))]();e[P]=o[(0x16b/121)]();end,[(-#[[When the]]+(0x642/178))]=function()e[s]=o[(-0x14+21)]();end,[(0x1d8/236)]=function()e[k]=o[(83-0x52)]()-(c^N)end,[(25-0x16)]=function()e[U]=o[(75+-0x4a)]()-(c^N)e[v]=o[(0x53-80)]();end};t[d]();if(o[(-#'If not skid then return hasbitches end'+(0x88+(-#"brawl stars hard gay porn shelly nsked minecraft gay porn roblox rule34 hot"+(9-0x1c))))](l,a,r)==a)then e[g]=n[e[h]]end if(o[(0x42-62)](l,c,c)==r)then e[k]=n[e[x]]end if(o[(0x5f-91)](l,p,p)==a)then e[z]=n[e[D]]end _[i]=e;end end;return t;end;local function S(o,m,w)local d=o[c];local n=o[p];local o=o[r];return(function(...)local I={};local B={};local i=o;local o=n;local n={};local l=r;local y=F local N=d;local d={...};local j=G('#',...)-a;local p=r p*=-1 local p=p;for e=0,j do if(e>=o)then I[e-o]=d[e+a];else n[e]=d[e+r];end;end;local o=j-o+r local o;local d;while true do o=i[l];d=o[(122+-0x79)];e=(2750156)while(128-0x5c)>=d do e-= e e=(8742532)while(2822/0xa6)>=d do e-= e e=(4521030)while d<=((0x84+-103)+-#[[impulse loves moonsex]])do e-= e e=(133672)while(684/0xe4)>=d do e-= e e=(2143691)while(98-0x61)>=d do e-= e e=(4636465)while d>(-#'0nly segc'+(0x45-60))do e-= e n[o[_]]();break end while(e)/((31884/0xc))==1745 do l=o[t];break end;break;end while(e)/((0x1cea-3725))==583 do e=(1499406)while(0x16-(4280/0xd6))<d do e-= e local m;local d;local h;local e;n[o[f]]=w[o[t]];l=l+r;o=i[l];n[o[_]]=n[o[x]][o[D]];l=l+r;o=i[l];e=o[g];h=n[o[x]];n[e+1]=h;n[e]=h[o[v]];l=l+r;o=i[l];n[o[b]]=n[o[s]];l=l+r;o=i[l];n[o[_]]=n[o[x]];l=l+r;o=i[l];e=o[b]n[e]=n[e](C(n,e+r,o[s]))l=l+r;o=i[l];e=o[O];h=n[o[u]];n[e+1]=h;n[e]=h[o[z]];l=l+r;o=i[l];e=o[g]n[e]=n[e](n[e+a])l=l+r;o=i[l];d={n,o};d[a][d[c][O]]=d[r][d[c][M]]+d[a][d[c][t]];l=l+r;o=i[l];n[o[O]]=n[o[k]]%o[M];l=l+r;o=i[l];e=o[g]n[e]=n[e](n[e+a])l=l+r;o=i[l];h=o[k];m=n[h]for e=h+1,o[P]do m=m..n[e];end;n[o[g]]=m;l=l+r;o=i[l];d={n,o};d[a][d[c][_]]=d[r][d[c][D]]+d[a][d[c][k]];l=l+r;o=i[l];n[o[f]]=n[o[U]]%o[P];break end while(e)/(((0x475-583)+-#[[free pornhub premium]]))==2787 do if(n[o[b]]~=o[D])then l=l+a;else l=o[t];end;break end;break;end break;end while 62==(e)/((4432-0x8e4))do e=(565068)while d<=(-0x2d+50)do e-= e e=(1364424)while d>((0x3f-46)+-#"i love minors")do e-= e local e=o[f]n[e]=n[e](C(n,e+r,o[x]))break end while(e)/((1200-0x284))==2454 do n[o[f]]=o[t];break end;break;end while(e)/(((0x25f-345)+-#[[if syn request then print your mom then end and then kill yourself]]))==2883 do e=(2070450)while((0x75-96)+-#'Russian letters')>=d do e-= e local e={n,o};e[a][e[c][f]]=e[r][e[c][v]]+e[a][e[c][u]];break;end while 535==(e)/((-#[[Nicuse will go in history]]+(0xf90+-89)))do e=(2012745)while d>((0x168-220)-133)do e-= e do return n[o[_]]end break end while 3305==(e)/((((0x1542f00/154)/232)+-#[[W4rboy was here]]))do n[o[h]]=w[o[k]];break end;break;end break;end break;end break;end while 1110==(e)/(((0x58cdf/89)+-#"waste of sperm"))do e=(7690046)while(-0x16+34)>=d do e-= e e=(35685)while d<=(2510/0xfb)do e-= e e=(12923961)while d>((-#[[i dont fucking care if its your own ui]]+(245+-0x6f))+-0x57)do e-= e n[o[f]][n[o[t]]]=n[o[H]];break end while 3587==(e)/((0x1c3c-3625))do local e=o[O];local d=n[e]local r=n[e+2];if(r>0)then if(d>n[e+1])then l=o[k];else n[e+3]=d;end elseif(d<n[e+1])then l=o[x];else n[e+3]=d;end break end;break;end while 793==(e)/((-#'Suck Sus0587'+(-121+((0x213-324)+-#'Only a to Z 0 to 9 is allowed'))))do e=(2915588)while d>(0x6e/10)do e-= e n[o[h]]=(o[u]~=0);break end while(e)/((0x176e-3047))==988 do local e=o[_]local l,o=y(n[e](C(n,e+1,o[u])))p=o+e-1 local o=0;for e=e,p do o=o+r;n[e]=l[o];end;break end;break;end break;end while 2639==(e)/((5936-0xbce))do e=(26442)while d<=(0x38+-42)do e-= e e=(6044070)while d>((139+-0x79)+-#"Bwomp")do e-= e local e=o[O]n[e](n[e+a])break end while(e)/((-#"furries should die"+(4102-(-94+0x878))))==3007 do local e=o[b]n[e]=n[e](n[e+a])break end;break;end while(e)/((0x2f5-418))==78 do e=(7238973)while((1716/0x2c)+-#"fatee is gay 0nly on top")>=d do e-= e if(n[o[h]]==n[o[H]])then l=l+a;else l=o[U];end;break;end while(e)/((-#[[beliveri12 is gay]]+(4371-(0x11b9-2304))))==3413 do e=(2897211)while(-#[[nicowashere]]+(144+-0x75))<d do e-= e n[o[_]]=o[k];break end while(e)/((-#"impulse 2022"+(27495/0xf)))==1591 do local e=o[_];local l=n[o[s]];n[e+1]=l;n[e]=l[o[v]];break end;break;end break;end break;end break;end break;end while(e)/((((0x744c7-238234)/0x4b)+-#"mike litoris"))==2764 do e=(4855695)while(-0x4f+105)>=d do e-= e e=(1031849)while d<=(0x77+-98)do e-= e e=(6208160)while(0x76+-99)>=d do e-= e e=(511650)while(-#'holy shit'+(-0x2a+69))<d do e-= e n[o[b]]=S(N[o[x]],nil,w);break end while(e)/((-67+0xd96))==150 do n[o[f]]=n[o[t]][o[D]];break end;break;end while(e)/((-#'free bobux no skem'+(0x373f4/139)))==3856 do e=(6114600)while d>(-107+0x7f)do e-= e n[o[O]]=n[o[x]][n[o[z]]];break end while(e)/(((299937/0x95)+-#"pls free synapse x i am gamer girl uwu"))==3096 do w[o[u]]=n[o[g]];l=l+r;o=i[l];n[o[_]]={};l=l+r;o=i[l];n[o[_]]={};l=l+r;o=i[l];w[o[u]]=n[o[f]];l=l+r;o=i[l];n[o[O]]=w[o[s]];l=l+r;o=i[l];if(n[o[_]]~=o[P])then l=l+a;else l=o[k];end;break end;break;end break;end while 667==(e)/(((0xdb0ec0/232)/40))do e=(1950910)while(0xffe/178)>=d do e-= e e=(1770216)while(83+-0x3d)<d do e-= e n[o[f]]=(o[k]~=0);l=l+a;break end while 1799==(e)/(((0x84a-1118)+-#[[Impulse youtube real]]))do w[o[u]]=n[o[g]];break end;break;end while(e)/((-#"Crackzzzz"+(5665-0xb2d)))==698 do e=(10849440)while d<=(130+-0x6a)do e-= e do return end;break;end while(e)/((-0x5f+(-#[[null]]+(86528/0x1a))))==3360 do e=(3656592)while d>(-0x41+90)do e-= e m[o[s]]=n[o[h]];break end while 3216==(e)/((-#[[Bush Did 9 11]]+(-73+0x4c7)))do n[o[b]]={};break end;break;end break;end break;end break;end while 3365==(e)/(((-0x6e+1605)+-#"If LocalPlayer equals Dumbass then while true do end"))do e=(3236280)while d<=(56+-0x19)do e-= e e=(42453)while(88+-0x3c)>=d do e-= e e=(2643160)while(-#'pls free synapse x i am gamer girl uwu'+(153+-0x58))<d do e-= e do return n[o[h]]end break end while 884==(e)/(((-0x42+3099)+-0x2b))do if not n[o[f]]then l=l+a;else l=o[x];end;break end;break;end while(e)/((0x315e/142))==477 do e=(1615016)while d<=(178-0x95)do e-= e if(n[o[h]]~=o[z])then l=l+a;else l=o[U];end;break;end while(e)/((2371-0x4af))==1378 do e=(10626820)while d>(-52+0x52)do e-= e n[o[g]]=m[o[s]];l=l+r;o=i[l];n[o[O]]=#n[o[x]];l=l+r;o=i[l];m[o[t]]=n[o[O]];l=l+r;o=i[l];n[o[f]]=m[o[x]];l=l+r;o=i[l];n[o[h]]=#n[o[U]];l=l+r;o=i[l];m[o[u]]=n[o[h]];l=l+r;o=i[l];do return end;break end while 2956==(e)/(((7295-0xe6c)+-#"When the"))do n[o[f]]=(o[s]~=0);l=l+a;break end;break;end break;end break;end while 2715==(e)/(((0x448df/227)+-#'testpsx dupe no scam legit 2022 free no virus'))do e=(4711305)while d<=(0x79-88)do e-= e e=(3756140)while d>(84-0x34)do e-= e local e=o[h]n[e]=n[e](n[e+a])break end while(e)/(((0x8ac-1124)+-#'Ur mom'))==3446 do n[o[b]]=n[o[U]]-n[o[M]];break end;break;end while 2215==(e)/((-#[[I like watching videos of black men shaking their booty cheeks]]+(0x1154-2247)))do e=(5380908)while d<=(-#"MSC 793z487nhvcgsdfgsudfza9889jgvz56gz56z547684z5g54z948g56z74j56475jzg645z6456 oh wait bitch"+(0x682e/210))do e-= e local e=o[_];local r=n[e+2];local d=n[e]+r;n[e]=d;if(r>0)then if(d<=n[e+1])then l=o[u];n[e+3]=d;end elseif(d>=n[e+1])then l=o[t];n[e+3]=d;end break;end while(e)/((5411-0xac7))==2029 do e=(6131714)while d>(-#[[MSC 793z487nhvcgsdfgsudfza9889jgvz56gz56z547684z5g54z948g56z74j56475jzg645z6456 oh wait bitch]]+(0x4400/136))do e-= e n[o[b]]=n[o[u]][n[o[z]]];break end while 3854==(e)/((0xfecf/41))do do return end;break end;break;end break;end break;end break;end break;end break;end while 3841==(e)/((0x33e+(-0x79+7)))do e=(10657780)while d<=(0x138d/91)do e-= e e=(388892)while d<=(79+-0x22)do e-= e e=(5855838)while d<=(0x1fe0/204)do e-= e e=(1831630)while(0xcc4/86)>=d do e-= e e=(10792060)while(7622/0xce)<d do e-= e local e=o[b]n[e](n[e+a])break end while 2668==(e)/((0x101b+-78))do n[o[O]]=#n[o[t]];break end;break;end while 1213==(e)/((-#'furries should die'+(0xc06-1550)))do e=(2213512)while d>(0x70+-73)do e-= e n[o[_]][n[o[t]]]=n[o[H]];break end while 1316==(e)/((-#[[Ok guys relax Theyre just fucking socks Its impossible for socks to turn me gay My heterosexuality will be fine dudes]]+(0xe7d-1910)))do local e=o[_]n[e]=n[e](C(n,e+r,p))break end;break;end break;end while(e)/((-#"MoonsecV2 deobfuscator 2020 free 100 percent"+(0xe2b+-49)))==1657 do e=(2679600)while d<=(0x7e+-84)do e-= e e=(370594)while d>(-0x37+96)do e-= e local d;local c,f;local a;local e;w[o[U]]=n[o[g]];l=l+r;o=i[l];n[o[b]]=w[o[x]];l=l+r;o=i[l];n[o[b]]=w[o[s]];l=l+r;o=i[l];e=o[g];a=n[o[u]];n[e+1]=a;n[e]=a[o[M]];l=l+r;o=i[l];n[o[b]]=w[o[x]];l=l+r;o=i[l];n[o[h]]=o[U];l=l+r;o=i[l];n[o[g]]=o[t];l=l+r;o=i[l];n[o[_]]=o[u];l=l+r;o=i[l];e=o[b]n[e]=n[e](C(n,e+r,o[s]))l=l+r;o=i[l];e=o[O]c,f=y(n[e](C(n,e+1,o[t])))p=f+e-1 d=0;for e=e,p do d=d+r;n[e]=c[d];end;break end while(e)/((215880/0x78))==206 do if(n[o[b]]~=n[o[D]])then l=l+a;else l=o[U];end;break end;break;end while(e)/((-#"howtodumpscript"+(777240/0xfe)))==880 do e=(765056)while d<=((251-0xbd)+-#'Deeznutsbutinlualoo')do e-= e if(n[o[h]]~=n[o[M]])then l=l+a;else l=o[t];end;break;end while 2224==(e)/((0x51f8/61))do e=(10173735)while(0x1b28/158)<d do e-= e n[o[O]]={};break end while(e)/((-#'paidlancer'+(7768-0xf39)))==2635 do n[o[b]]=m[o[s]];break end;break;end break;end break;end break;end while 817==(e)/((1071-0x253))do e=(3453327)while(-#'how to join the kkk'+(0x3810/208))>=d do e-= e e=(6733296)while(0x78+-73)>=d do e-= e e=(6765560)while d>(6716/0x92)do e-= e if(n[o[_]]==n[o[M]])then l=l+a;else l=o[k];end;break end while(e)/((-#[[mf stfu]]+(-0x37+2203)))==3160 do n[o[b]]=n[o[k]];break end;break;end while 3496==(e)/(((4042-0x81d)+-#'psx real dupe steal all ur pets no joke'))do e=(3383446)while d<=(0x28b0/217)do e-= e l=o[u];break;end while(e)/((-#'Nicuse is good at sucking dick'+(0x3299b/149)))==2486 do e=(1429902)while d>(588/0xc)do e-= e local e=o[O];local r=n[e+2];local d=n[e]+r;n[e]=d;if(r>0)then if(d<=n[e+1])then l=o[t];n[e+3]=d;end elseif(d>=n[e+1])then l=o[u];n[e+3]=d;end break end while 678==(e)/(((928036-0x714b8)/0xdc))do n[o[_]]=#n[o[k]];break end;break;end break;end break;end while 2133==(e)/((0x63361/251))do e=(6463180)while d<=(0xa2+-110)do e-= e e=(2027655)while(0xbd-138)<d do e-= e n[o[f]]=(o[U]~=0);break end while 615==(e)/(((0x1a71-3421)+-#[[how to find my dad at the dollar store getting milk]]))do n[o[f]]=n[o[s]]%o[P];break end;break;end while 3631==(e)/((412960/0xe8))do e=(10039104)while(-#'balls'+(-0x35+111))>=d do e-= e local r=N[o[t]];local d;local e={};d=L({},{__index=function(n,o)local e=e[o];return e[1][e[2]];end,__newindex=function(l,o,n)local e=e[o]e[1][e[2]]=n;end;});for d=1,o[D]do l=l+a;local o=i[l];if o[(-0x5a+91)]==46 then e[d-1]={n,o[x]};else e[d-1]={m,o[x]};end;B[#B+1]=e;end;n[o[_]]=S(r,d,w);break;end while 2784==(e)/((-#'Deezbutts'+(0x3ea99/71)))do e=(2064699)while d>((271-0xc7)+-#"KFC and watermelon")do e-= e local e=o[g];local l=n[o[u]];n[e+1]=l;n[e]=l[o[D]];break end while 2521==(e)/(((0xd4f-1727)-0x35d))do w[o[t]]=n[o[_]];break end;break;end break;end break;end break;end break;end while(e)/((0x77f18/124))==2690 do e=(11000894)while(0x67+-39)>=d do e-= e e=(442834)while((0x1f9-277)-0xa9)>=d do e-= e e=(7684774)while d<=(0xbc-131)do e-= e e=(1168908)while(12488/0xdf)<d do e-= e m[o[s]]=n[o[h]];break end while(e)/((-40+0xc24))==381 do n[o[h]]();break end;break;end while 2207==(e)/((-0x26+3520))do e=(4412964)while d>(92+-0x22)do e-= e n[o[h]]=n[o[t]];break end while 2714==(e)/(((-0x3c+1704)+-#[[furries should die]]))do local e={n,o};e[a][e[c][h]]=e[r][e[c][M]]+e[a][e[c][x]];break end;break;end break;end while 329==(e)/((0xadd-1435))do e=(7229774)while d<=((-75+0x9c)+-#[[free pornhub premium]])do e-= e e=(15922368)while(0xd5c/(0x51+-24))<d do e-= e local e=o[f]n[e]=n[e](C(n,e+r,p))break end while 3949==(e)/(((-0x32+4132)+-#[[da hood money generator 2022 working free no virus]]))do n[o[O]]=m[o[s]];break end;break;end while(e)/((238418/0x47))==2153 do e=(242313)while(-#"if found dad when back from milk then print yay end"+((-#"i shoved a whole bag of jellibeans up my ass"+(363+-0x1d))-177))>=d do e-= e local l=o[x];local e=n[l]for o=l+1,o[M]do e=e..n[o];end;n[o[_]]=e;break;end while 177==(e)/((0x3dd51/185))do e=(13260060)while d>((272-0xc0)+-#[[anime is for fags]])do e-= e local c=N[o[t]];local r;local e={};r=L({},{__index=function(n,o)local e=e[o];return e[1][e[2]];end,__newindex=function(l,o,n)local e=e[o]e[1][e[2]]=n;end;});for d=1,o[M]do l=l+a;local o=i[l];if o[(0xe6/230)]==46 then e[d-1]={n,o[k]};else e[d-1]={m,o[s]};end;B[#B+1]=e;end;n[o[h]]=S(c,r,w);break end while 3663==(e)/((0x1c5e-3642))do local e=o[b]local l,o=y(n[e](C(n,e+1,o[x])))p=o+e-1 local o=0;for e=e,p do o=o+r;n[e]=l[o];end;break end;break;end break;end break;end break;end while 3709==(e)/((3021+-0x37))do e=(2657967)while d<=(0xd1-(258+-0x76))do e-= e e=(1219729)while d<=(99+-0x21)do e-= e e=(519184)while(-#'bigchungus'+(0x26ac/132))<d do e-= e n[o[h]]=n[o[s]]%o[P];break end while(e)/(((0x10a7/21)+-55))==3508 do n[o[O]]=n[o[u]]-n[o[P]];break end;break;end while(e)/((0x4cd+(-0x1ad0/78)))==1069 do e=(3537450)while(-#[[Deeznutsbutinlualoo]]+(19866/0xe7))>=d do e-= e n[o[_]]=n[o[U]][o[M]];break;end while 3369==(e)/((-#"Russian letters"+(0x884-1115)))do e=(6614064)while d>(-#"psx dupe is abd"+(-110+0xc1))do e-= e n[o[_]]=w[o[U]];break end while(e)/((606096/0xb7))==1997 do local l=o[u];local e=n[l]for o=l+1,o[v]do e=e..n[o];end;n[o[f]]=e;break end;break;end break;end break;end while(e)/((-#[[get some bitches]]+(0xe4c+-57)))==741 do e=(1176600)while d<=((277-0xb8)+-#"I FUCKING HATE FEMBOYS")do e-= e e=(1306547)while(-123+0xc1)<d do e-= e if not n[o[b]]then l=l+a;else l=o[u];end;break end while(e)/((52767/0x75))==2897 do local e=o[b]n[e]=n[e](C(n,e+r,o[x]))break end;break;end while 2650==(e)/((-#'get some bitches'+(0x11120/152)))do e=(1410970)while(0x87+-63)>=d do e-= e local e=o[h];local d=n[e]local r=n[e+2];if(r>0)then if(d>n[e+1])then l=o[s];else n[e+3]=d;end elseif(d<n[e+1])then l=o[k];else n[e+3]=d;end break;end while 1397==(e)/((0x253be/151))do e=(742956)while d>(242-0xa9)do e-= e local a;local d;local e;n[o[b]]=o[x];l=l+r;o=i[l];n[o[f]]=o[u];l=l+r;o=i[l];n[o[h]]=#n[o[u]];l=l+r;o=i[l];n[o[_]]=o[t];l=l+r;o=i[l];e=o[_];d=n[e]a=n[e+2];if(a>0)then if(d>n[e+1])then l=o[t];else n[e+3]=d;end elseif(d<n[e+1])then l=o[k];else n[e+3]=d;end break end while(e)/((1337-0x2db))==1226 do n[o[f]]=S(N[o[x]],nil,w);break end;break;end break;end break;end break;end break;end break;end l+= a end;end);end;return S(j(),{},T())()end)_msec({[(0x8d+-29)]='\115\116'..(function(e)return(e and'((0x125-161)+-#"Me be like at 5am in the morning")')or'\114\105'or'\120\58'end)((0x3f+-58)==(-#'MSC 793z487nhvcgsdfgsudfza9889jgvz56gz56z547684z5g54z948g56z74j56475jzg645z6456 oh wait bitch'+(289-0xbe)))..'\110g',[((-0x30+854)+-#'If not skid then return hasbitches end')]='\108\100'..(function(e)return(e and'(-#"Cock and ball tortue"+(0xed+-117))')or'\101\120'or'\119\111'end)((0x2b+-38)==(0x4bc/(0x1f9-303)))..'\112',[(((0x3c4b00/144)/0x70)+-#"cruz pp is large")]=(function(e)return(e and'(0xd9-117)')and'\98\121'or'\100\120'end)((83-0x4e)==(52-0x2f))..'\116\101',[(-#[[i have found your porn folder i am now approaching your house at 83 miles per hour]]+(-119+(0xa2b0/76)))]='\99'..(function(e)return(e and'(24000/0xf0)')and'\90\19\157'or'\104\97'end)((-42+0x2f)==(27-0x18))..'\114',[(((0x41a4e-134478)/0xe0)+-#"mike litoris")]='\116\97'..(function(e)return(e and'(-32+0x84)')and'\64\113'or'\98\108'end)((198/0x21)==((0x69+-62)+-#'nicuses dick is so good hot emoji here'))..'\101',[(-#{78;'}',{},(function()return#{('OKKhmf'):find("\75")}>0 and 1 or 0 end),","}+493)]=(function(e)return(e and'(0x364c/139)')or'\115\117'or'\78\107'end)(((0x2b+-18)+-#"legend says i was here")==((-125+0xc6)+-#"Reduce meme string slowmode when plsplspls"))..'\98',[(821+-#{",";1;68,'nil'})]='\99\111'..(function(e)return(e and'((0x61d8/202)+-#"moonsec got deobfuscated")')and'\110\99'or'\110\105\103\97'end)((5301/0xab)==(0x41+-34))..'\97\116',[(0x292e0/251)]=(function(e,o)return(e and'(16400/0xa4)')and'\48\159\158\188\10'or'\109\97'end)(((0x135c4/130)/0x7a)==(-56+0x3e))..'\116\104',[(2665-0x540)]=(function(e,o)return(((0x16d-243)+-#[[Ok guys relax Theyre just fucking socks Its impossible for socks to turn me gay My heterosexuality will be fine dudes]])==(0xed/79)and'\48'..'\195'or e..((not'\20\95\69'and'\90'..'\180'or o)))or'\199\203\95'end),[(-0x5b+1014)]='\105\110'..(function(e,o)return(e and'(20100/0xc9)')and'\90\115\138\115\15'or'\115\101'end)((1265/0xfd)==(163-((0x4085/83)+-#"give me moonsex v4 or i will attach a car battery to your testicles")))..'\114\116',[(0x884-1124)]='\117\110'..(function(e,o)return(e and'((-135+0x2c)+0xbf)')or'\112\97'or'\20\38\154'end)(((108-0x5f)+-#'Omg guys')==(0x2f+-16))..'\99\107',[(2353-(-0x68+1342))]='\115\101'..(function(e)return(e and'(19500/0xc3)')and'\110\112\99\104'or'\108\101'end)((-#[[Impulse youtube ez]]+(1403/(0xcde/54)))==((8850/0xb1)+-#"fix vg hub dekudimz"))..'\99\116',[(1226+-#{{},(function()return{','}end)();'nil'})]='\116\111\110'..(function(e,o)return(e and'(0x129-197)')and'\117\109\98'or'\100\97\120\122'end)(((62+-0x29)+-#'warboy hates you')==((110/(1837/0xa7))+-#'ballz'))..'\101\114'},{[(126/0x9)]=((getfenv))},((getfenv))()) end)()
	
	
	
	end)
end
coroutine.wrap(ORHZAQC_fake_script)()


game.StarterGui:SetCore("SendNotification", {
               Title = "NERD🤓 bypassed";
               Duration = 9;
               Text = "";
})
local GSR = game:GetService('ReplicatedStorage')
local GSRR = GSR:FindFirstChild('Remotes')

local function AlreadyBypassed()
    if GSRR:FindFirstChild('YoshinoBestFr') then
    warn('Already bypassed!')
        return true
        else
        return false
    end
end

if AlreadyBypassed() == false then
if GSRR:FindFirstChild('crateDevProduct') then
GSRR:FindFirstChild('crateDevProduct').Name = 'YoshinoBestFr'
print('Disabled Anti-Cheat.')
end 
end
