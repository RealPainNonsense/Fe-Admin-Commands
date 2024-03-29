local StarterGui = game:GetService("StarterGui")
local Player = game:GetService("Players")

StarterGui:SetCore("SendNotification", {
	Title = "Loaded FE Admin Commands";
	Text = "Made by Solaris Hub Official Team";
	Duration = 5;
})

local CmdGui = Instance.new("ScreenGui")
local Background = Instance.new("Frame")
local CmdName = Instance.new("TextLabel")
local FindCmd = Instance.new("TextBox")
local CmdHandler = Instance.new("ScrollingFrame")
local CmdText = Instance.new("TextButton")
local UIListLayout = Instance.new("UIListLayout")
local Background2 = Instance.new("Frame")
local Label = Instance.new("TextLabel")
local Execute = Instance.new("TextBox")
local Minimum = Instance.new("TextButton")
local Close = Instance.new("TextButton")
local Background3 = Instance.new("Frame")
local Topbar = Instance.new("TextLabel")
local CmdTitle = Instance.new("TextLabel")
local CloseBar = Instance.new("TextButton")
local TransparencyBar = Instance.new("TextButton")

local Prefix = ":"

CmdGui.Name = "CmdGui"
CmdGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
CmdGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Background.Name = "Background"
Background.Parent = CmdGui
Background.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Background.BorderSizePixel = 0
Background.Position = UDim2.new(0.368556708, 0, 0.11490047, 0)
Background.Size = UDim2.new(0, 350, 0, 350)
Background.Visible = false
Background.Active = true
Background.Draggable = true

CmdName.Name = "CmdName"
CmdName.Parent = Background
CmdName.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CmdName.BorderSizePixel = 0
CmdName.Size = UDim2.new(0, 350, 0, 25)
CmdName.Font = Enum.Font.GothamBlack
CmdName.Text = "Commands"
CmdName.TextColor3 = Color3.fromRGB(255, 255, 255)
CmdName.TextScaled = true
CmdName.TextSize = 14.000
CmdName.TextWrapped = true

FindCmd.Name = "FindCmd"
FindCmd.Parent = Background
FindCmd.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
FindCmd.BorderColor3 = Color3.fromRGB(0, 0, 0)
FindCmd.BorderSizePixel = 0
FindCmd.Position = UDim2.new(0.0714285746, 0, 0.0702347234, 0)
FindCmd.Size = UDim2.new(0, 300, 0, 20)
FindCmd.Font = Enum.Font.SourceSans
FindCmd.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
FindCmd.PlaceholderText = "Search For Command"
FindCmd.Text = ""
FindCmd.TextColor3 = Color3.fromRGB(255, 255, 255)
FindCmd.TextSize = 14.000
FindCmd.TextWrapped = true

CmdHandler.Name = "CmdHandler"
CmdHandler.Parent = Background
CmdHandler.Active = true
CmdHandler.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CmdHandler.BackgroundTransparency = 1.000
CmdHandler.BorderSizePixel = 0
CmdHandler.AutomaticCanvasSize = "Y"
CmdHandler.Position = UDim2.new(0.0714285746, 0, 0.142857149, 0)
CmdHandler.Size = UDim2.new(0, 300, 0, 290)
CmdHandler.ScrollBarThickness = 2

CmdText.Name = "CmdText"
CmdText.Parent = nil
CmdText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CmdText.BackgroundTransparency = 1.000
CmdText.BorderSizePixel = 0
CmdText.Size = UDim2.new(0, 300, 0, 25)
CmdText.Font = Enum.Font.SourceSans
CmdText.Text = "Text"
CmdText.TextColor3 = Color3.fromRGB(255, 255, 255)
CmdText.TextScaled = true
CmdText.TextSize = 14.000
CmdText.TextWrapped = true

UIListLayout.Parent = CmdHandler
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

Minimum.Name = "Minimum"
Minimum.Parent = Background
Minimum.BackgroundColor3 = Color3.fromRGB(0, 170, 127)
Minimum.BorderSizePixel = 0
Minimum.Position = UDim2.new(0.842857122, 0, 0.00571428565, 0)
Minimum.Size = UDim2.new(0, 20, 0, 20)
Minimum.Font = Enum.Font.SourceSans
Minimum.Text = "-"
Minimum.TextColor3 = Color3.fromRGB(255, 255, 255)
Minimum.TextSize = 14.000
Minimum.TextScaled = true
Minimum.MouseButton1Click:Connect(function()
	if Background.BackgroundTransparency == 0 then
		Background.BackgroundTransparency = 1
		Background.Size = UDim2.new(0, 350, 0, 25)
		FindCmd.Visible = false
		CmdHandler.Visible = false
	elseif Background.BackgroundTransparency == 1 then
		Background.BackgroundTransparency = 0
		Background.Size = UDim2.new(0, 350, 0, 350)
		FindCmd.Visible = true
		CmdHandler.Visible = true
	end
end)

Close.Name = "Close"
Close.Parent = Background
Close.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.928571403, 0, 0.00571428565, 0)
Close.Size = UDim2.new(0, 20, 0, 20)
Close.Font = Enum.Font.SourceSans
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(255, 255, 255)
Close.TextSize = 14.000
Close.MouseButton1Click:Connect(function()
	Background.Visible = false
end)

Background2.Name = "Background"
Background2.Parent = CmdGui
Background2.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Background2.BorderSizePixel = 0
Background2.Position = UDim2.new(0, 0,0.889, 0)
Background2.Size = UDim2.new(0.215, 0,0.108, 0)
Background2.Active = true
Background2.Draggable = true

Label.Name = "Label"
Label.Parent = Background2
Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Label.BackgroundTransparency = 1
Label.BorderSizePixel = 0
Label.Position = UDim2.new(0, 0,0, 0)
Label.Size = UDim2.new(1, 0,0.313, 0)
Label.Font = Enum.Font.GothamBlack
Label.Text = "Execute Bar"
Label.TextColor3 = Color3.fromRGB(255, 255, 255)
Label.TextScaled = true
Label.TextSize = 14.000
Label.TextWrapped = true

Execute.Name = "Execute"
Execute.Parent = Background2
Execute.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Execute.BorderColor3 = Color3.fromRGB(0, 255, 0)
Execute.Position = UDim2.new(0.1, 0,0.45, 0)
Execute.Size = UDim2.new(0.8, 0,0.375, 0)
Execute.Font = Enum.Font.SourceSans
Execute.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
Execute.PlaceholderText = "Press "..Prefix.." To Enter"
Execute.Text = ""
Execute.TextColor3 = Color3.fromRGB(255, 255, 255)
Execute.TextSize = 16.000
Execute.TextWrapped = true

Background3.Name = "Background3"
Background3.Parent = CmdGui
Background3.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Background3.BorderSizePixel = 0
Background3.Position = UDim2.new(0.306701034, 0, 0.288421065, 0)
Background3.Size = UDim2.new(0, 200, 0, 100)
Background3.Active = true
Background3.Visible = false

Topbar.Name = "Topbar"
Topbar.Parent = Background3
Topbar.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Topbar.BorderSizePixel = 0
Topbar.Size = UDim2.new(0, 200, 0, 25)
Topbar.Font = Enum.Font.GothamBlack
Topbar.Text = ""
Topbar.TextColor3 = Color3.fromRGB(255, 255, 255)
Topbar.TextScaled = true
Topbar.TextSize = 14.000
Topbar.TextWrapped = true

CmdTitle.Name = "CmdTitle"
CmdTitle.Parent = Background3
CmdTitle.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
CmdTitle.BackgroundTransparency = 1.000
CmdTitle.BorderSizePixel = 0
CmdTitle.Position = UDim2.new(0.0500000007, 0, 0.379999995, 0)
CmdTitle.Size = UDim2.new(0, 180, 0, 40)
CmdTitle.Font = Enum.Font.GothamBlack
CmdTitle.Text = ""
CmdTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
CmdTitle.TextSize = 14.000
CmdTitle.TextWrapped = true

CloseBar.Name = "CloseBar"
CloseBar.Parent = Background4
CloseBar.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
CloseBar.BorderSizePixel = 0
CloseBar.Position = UDim2.new(0.899999976, 0, -0.210084036, 0)
CloseBar.Size = UDim2.new(0, 25, 0, 25)
CloseBar.Font = Enum.Font.GothamBlack
CloseBar.Text = "X"
CloseBar.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseBar.TextScaled = true
CloseBar.TextSize = 14.000
CloseBar.TextWrapped = true
CloseBar.MouseButton1Click:Connect(function()
	Background4.Visible = false
end)

local UseCommand = false
local Cmd = {}

Cmd[#Cmd + 1] =		{Text = "giveadmin / addrank [plr]",Title = "Give a commands to player"}
Cmd[#Cmd + 1] =		{Text = "removeadmin / removeadmin [plr]",Title = "Remove a commands from player"}
Cmd[#Cmd + 1] =		{Text = "btools",Title = "Give local player btools"}
Cmd[#Cmd + 1] =		{Text = "rejoin",Title = "Rejoin the game"}
Cmd[#Cmd + 1] = 	{Text = "cuffs [plr]",Title = "Gives player hand cuffs"}
Cmd[#Cmd + 1] = 	{Text = "keycard / key [plr]",Title = "Gives player key card"}
Cmd[#Cmd + 1] =		{Text = "leave / leaveserver / quit",Title = "Leave the server"}
Cmd[#Cmd + 1] = 	{Text = "antitp / antibring",Title = "You are cannot be bring by another exploiter"}
Cmd[#Cmd + 1] = 	{Text = "unantitp / unantibring",Title = "You are can be bring by another exploiter"}
Cmd[#Cmd + 1] = 	{Text = "addaura / giveaura /  aura [plr]",Title = "Gives player a kill aura"}
Cmd[#Cmd + 1] = 	{Text = " removeaura / unaura [plr]",Title = "Remove a kill aura from player"}
Cmd[#Cmd + 1] =		{Text = "kill [plr]",Title = "Kill the player"}
Cmd[#Cmd + 1] =		{Text = "killall / oof",Title = "Kill all players"}
Cmd[#Cmd + 1] =		{Text = "killguards",Title = "Kill all guards"}
Cmd[#Cmd + 1] =		{Text = "killinmate / killsinmate",Title = "Kill all inmates"}
Cmd[#Cmd + 1] =		{Text = "killcriminals",Title = "Kill all criminals"}
Cmd[#Cmd + 1] =		{Text = "tase [plr]",Title = "Tase the player"}
Cmd[#Cmd + 1] = 	{Text = "taseall",Title = "Tase all everyone"}
Cmd[#Cmd + 1] =		{Text = "loopkill / loopkills [plr]",Title = "Loop kills player"}
Cmd[#Cmd + 1] =		{Text = "unloopkill / unloopkills [plr]",Title = "Unloop kills player"}
Cmd[#Cmd + 1] =		{Text = "loopkillall",Title = "Loop kills all players"}
Cmd[#Cmd + 1] =		{Text = "unloopkillall",Title = "Unloop kills all players"}
Cmd[#Cmd + 1] =		{Text = "loopkillguards",Title = "Loop kills all guards"}
Cmd[#Cmd + 1] =		{Text = "loopkillinmates",Title = "Loop kills all inmates"}
Cmd[#Cmd + 1] =		{Text = "loopkillcriminals",Title = "Loop kills all criminals"}
Cmd[#Cmd + 1] =		{Text = "unloopkillguards",Title = "Unloop kills all guards"}
Cmd[#Cmd + 1] =		{Text = "unloopkillinmates",Title = "Unloop kills all inmates"}
Cmd[#Cmd + 1] =		{Text = "unloopkillcriminals",Title = "Unloop kills all criminals"}
Cmd[#Cmd + 1] =		{Text = "guards",Title = "Become guard team"}
Cmd[#Cmd + 1] =		{Text = "inmates",Title = "Become inmate team"}
Cmd[#Cmd + 1] =		{Text = "neutral",Title = "Become neutral team"}
Cmd[#Cmd + 1] =		{Text = "crim / criminals / criminal",Title = "Become criminal team"}
Cmd[#Cmd + 1] =		{Text = "re / refresh",Title = "Respawn on old position"}
Cmd[#Cmd + 1] =		{Text = "goto / to [plr]",Title = "Teleport to the player"}
Cmd[#Cmd + 1] =		{Text = "bring [plr]",Title = "Teleport player to you"}
Cmd[#Cmd + 1] = 	{Text = "fly [speed]",Title = "Activate fly"}
Cmd[#Cmd + 1] = 	{Text = "unfly",Title = "Unactivate fly"}
Cmd[#Cmd + 1] =		{Text = "tp / teleport [plr] [plr2]",Title = "Teleport player to another player"}
Cmd[#Cmd + 1] =		{Text = "arrest [plr] [time]",Title = "Arrest player that is a criminal"}
Cmd[#Cmd + 1] =		{Text = "arrestall / arrestothers",Title = "Arrest all criminals"}
Cmd[#Cmd + 1] =		{Text = "clearloopkill / clearloopkills",Title = "clear all loop kills table"}
Cmd[#Cmd + 1] =		{Text = "nokillaura / unkillaura",Title = "Unactivate kill aura"}
Cmd[#Cmd + 1] = 	{Text = "antifling",Title = "Activate anti fling"}
Cmd[#Cmd + 1] = 	{Text = "unantifling",Title = "Unactivate anti fling"}
Cmd[#Cmd + 1] = 	{Text = "god",Title = "Become a god mode"}
Cmd[#Cmd + 1] = 	{Text = "ungod",Title = "Unbecome a god mode"}
Cmd[#Cmd + 1] =		{Text = "view / spectate / watch [plr]",Title = "Spectates the player"}
Cmd[#Cmd + 1] =		{Text = "unview / unspectate / stopwatch",Title = "Unspectates the player"}
Cmd[#Cmd + 1] =		{Text = "superpunch / onepunch",Title = "Activate super punch"}
Cmd[#Cmd + 1] =		{Text = "nosuperpunch / normalpunch",Title = "Unactivate super punch"}
Cmd[#Cmd + 1] = 	{Text = "antilag / boostfps",Title = "Boost a little fps"}
Cmd[#Cmd + 1] = 	{Text = "unantilag",Title = "Stop boost the fps"}
Cmd[#Cmd + 1] = 	{Text = "noclip / noclips",Title = "Activate no clips"}
Cmd[#Cmd + 1] = 	{Text = "clip / clips",Title = "Unactivate no clips"}
Cmd[#Cmd + 1] =		{Text = "orange",Title = "Changes name tag color to orange color"}
Cmd[#Cmd + 1] =		{Text = "blue",Title = "Changes name tag color to blue color"}
Cmd[#Cmd + 1] =		{Text = "white",Title = "Changes name tag color to white color"}
Cmd[#Cmd + 1] =		{Text = "red",Title = "Changes name tag color to red color"}
Cmd[#Cmd + 1] =		{Text = "green",Title = "Changes name tag color to green color"}
Cmd[#Cmd + 1] =		{Text = "yellow",Title = "Changes name tag color to yellow color"}
Cmd[#Cmd + 1] =		{Text = "lagserver / startlagserver / disconnect",Title = "Lag server and disconnect after 5 minutes of lagging"}
Cmd[#Cmd + 1] =		{Text = "unlagserver / stoplagserver / undisconnect",Title = "Stop lag server"}
Cmd[#Cmd + 1] =		{Text = "speed / setspeed / walkspeed [count]",Title = "Changes walk speeds"}
Cmd[#Cmd + 1] =		{Text = "jumppower / setjumppower [count]",Title = "Changes jump powers"}
Cmd[#Cmd + 1] =		{Text = "base / crimbase [plr]",Title = "Make the player become a criminal"}
Cmd[#Cmd + 1] =		{Text = "prison [plr]",Title = "Bring player teleport you in prison"}
Cmd[#Cmd + 1] =		{Text = "guardsroom [plr]",Title = "Bring player teleport you in guards room"}
Cmd[#Cmd + 1] =		{Text = "yard [plr]",Title = "Bring player teleport you in yard"}
Cmd[#Cmd + 1] =		{Text = "trap",Title = "Teleport you in trap"}
Cmd[#Cmd + 1] =		{Text = "trap [plr]",Title = "Bring player teleport you in trap"}
Cmd[#Cmd + 1] =		{Text = "cafeteria / cafe [plr]",Title = "Bring player teleport you in cafe"}
Cmd[#Cmd + 1] =		{Text = "tower [plr]",Title = "Bring player teleport you in tower"}
Cmd[#Cmd + 1] =		{Text = "roof",Title = "Teleport you in roof"}
Cmd[#Cmd + 1] =		{Text = "roof [plr]",Title = "Bring player teleport you in roof"}
Cmd[#Cmd + 1] =		{Text = "roof [plr]",Title = "Bring player teleport you in roof"}
Cmd[#Cmd + 1] =		{Text = "gatetower [plr]",Title = "Bring player teleport you in gatetower"}
Cmd[#Cmd + 1] =		{Text = "loopbring [plr]",Title = "Loop bring player"}
Cmd[#Cmd + 1] =		{Text = "unloopbring ",Title = "Unloop bring player"}
Cmd[#Cmd + 1] =		{Text = "baseballbat / bat",Title = "Gets bat"}
Cmd[#Cmd + 1] =		{Text = "superknife",Title = "Gets super knife"}
Cmd[#Cmd + 1] =		{Text = "autofire",Title = "Changes gun ststes to auto fire"}
Cmd[#Cmd + 1] =		{Text = "auto",Title = "Auto respawn on old position when died"}
Cmd[#Cmd + 1] =		{Text = "unauto",Title = "Stop auto respawn on old position when died"}
Cmd[#Cmd + 1] =		{Text = "nodoors / deletedoors / removedoors",Title = "Deletes all doors"}
Cmd[#Cmd + 1] =		{Text = "restoredoors / doors",Title = "Restores all doors"}
Cmd[#Cmd + 1] =		{Text = "removefences / nofences",Title = "Remove all fences"}
Cmd[#Cmd + 1] =		{Text = "restorefences / fences",Title = "Restores all fences"}
Cmd[#Cmd + 1] =		{Text = "nowalls / deletewalls",Title = "Deletes all walls"}
Cmd[#Cmd + 1] =		{Text = "walls / restorewalls",Title = "Restore all walls"}
Cmd[#Cmd + 1] =		{Text = "gatetower",Title = "Teleport to the gate tower"}
Cmd[#Cmd + 1] = 	{Text = "tower",Title = "Teleport to the yard tower"}
Cmd[#Cmd + 1] =	 	{Text = "sewer",Title = "Telepor to the sewer"}
Cmd[#Cmd + 1] = 	{Text = "yard",Title = "Teleport to yard"}
Cmd[#Cmd + 1] =		{Text = "gate",Title = "Teleport to the gate"}
Cmd[#Cmd + 1] =		{Text = "prison",Title = "Teleport to the prison"}
Cmd[#Cmd + 1] = 	{Text = "rapidfire",Title = "Activate rapid fire"}
Cmd[#Cmd + 1] = 	{Text = "autorapidfire",Title = "Auto activate rapid fire"}
Cmd[#Cmd + 1] = 	{Text = "unautorapidfire",Title = "Unauto activate rapid fire"}
Cmd[#Cmd + 1] =		{Text = "armory",Title = "Teleports to the armory"}
Cmd[#Cmd + 1] =		{Text = "cafeteria / cafe",Title = "Teleports to the cafeteria"}
Cmd[#Cmd + 1] =		{Text = "crimbase / criminalbase",Title = "Teleports to the criminals base"}
Cmd[#Cmd + 1] =		{Text = "cellblock",Title = "Teleport to the cellblock"}
Cmd[#Cmd + 1] =		{Text = "Hallway / Way",Title = "Teleport to the Hallway"}
Cmd[#Cmd + 1] =		{Text = "kitchen",Title = "Teleport to the Kitchen"}
Cmd[#Cmd + 1] =		{Text = "surveilance / surve / surveroom",Title = "Teleport to the surveilance room"}
Cmd[#Cmd + 1] =		{Text = "prison",Title = "Teleport to the prison"}
Cmd[#Cmd + 1] =		{Text = "otuside / escape",Title = "Teleport to the outside prison"}
Cmd[#Cmd + 1] =		{Text = "opengate",Title = "Open the gate"}
Cmd[#Cmd + 1] =		{Text = "antifell / antivoid",Title = "Activate anti fell to the void when respawn as custom team"}
Cmd[#Cmd + 1] =		{Text = "unantifell / unantivoid",Title = "Unactivate anti fell to the void when respawn as custom team"}
Cmd[#Cmd + 1] =		{Text = "clickarrest / click",Title = "Click arrest any players, activate click arrest"}
Cmd[#Cmd + 1] =		{Text = "crashserver / crash / server",Title = "It will make server crash"}
Cmd[#Cmd + 1] =		{Text = "fullbright  / normalbright",Title = "It makes full brightness in the game"}
Cmd[#Cmd + 1] =		{Text = "flycar",Title = "Activate fly car"}
Cmd[#Cmd + 1] =		{Text = "invisible / invis",Title = "Make your character become invisible"}
Cmd[#Cmd + 1] =		{Text = "slasher",Title = "Loaded FE Slasher"}
Cmd[#Cmd + 1] =		{Text = "sonic",Title = "Loaded FE Sonic"}

local Material = {}

local Mouse = game.Players.LocalPlayer:GetMouse()

for i = 1,#Cmd do
	local clone = CmdText:Clone()
	clone.Text = Cmd[i].Text
	clone.Name = "COMMANDS"
	local Ins = Instance.new("StringValue", clone)
	Ins.Name = "Title"
	Ins.Value = Cmd[i].Title
	local Ins2 = Instance.new("StringValue", clone)
	Ins2.Name = "TopbarName"
	Ins2.Value = Cmd[i].Text:split(" ")[1]
	clone.Parent = CmdHandler
	clone.MouseButton1Click:Connect(function()
		Execute:CaptureFocus()
		Execute.Text = clone.Text:split(" ")[1]
		Execute.CursorPosition = #Execute.Text + 1
	end)
end

Mouse.Move:Connect(function()
	local Guis = game:GetService("CoreGui"):GetGuiObjectsAtPosition(Mouse.X, Mouse.Y)
	local Gui
	for i,v in pairs(Guis) do
		if v.Parent == CmdHandler then
			Gui = v
		end
	end
	if Gui ~= nil then
		local PositionX
		local PositionY
		local X = Mouse.X
		local Y = Mouse.Y
		if Mouse.X > 200 then
			PositionX = Mouse.X - 201
		else
			PositionX = Mouse.X + 21
		end
		if Mouse.Y > (Mouse.ViewSizeY-96) then
			PositionY = Mouse.Y - 97
		else
			PositionY = Mouse.Y
		end
		Background3.Visible = true
		Background3.Position = UDim2.new(0, PositionX, 0, PositionY)
		Topbar.Text = Gui.TopbarName.Value
		CmdTitle.Text = Gui.Title.Value
	else
		Background3.Visible = false
	end
end)

if DisableScript then
	DisableScript()
end

local connections = getconnections(game.ReplicatedStorage.ReplicateEvent.OnClientEvent)
local tazePlayer = getconnections(workspace.Remote.tazePlayer.OnClientEvent)

local StringsLowerMessage = false -- If this true: if commands is 'Kill' but when you say k or i or l it will match to 'Kill' and you can turns this off or on when you are ingame with cmd 'slm' and 'uslm'
local ScriptDisabled = false
local LoopBeam = {}
local LoopKill = {}
local Virus = {}
local KillAura = {}
local LoopTase = {}
local Admin = {}
local Watching = nil
local States = {}
local BuyGamepass = game:GetService("MarketplaceService"):UserOwnsGamePassAsync(tonumber((game:GetService("Players").LocalPlayer.CharacterAppearance):split('=')[#((game:GetService("Players").LocalPlayer.CharacterAppearance):split('='))]), 96651)

local function GetPlayer(String)
	if not String then return end
	local Yes = {}
	for _, Player in ipairs(game.Players:GetPlayers()) do
		if string.lower(Player.Name):match(string.lower(String)) or string.lower(Player.DisplayName):match(string.lower(String)) then
			table.insert(Yes, Player)
		end
	end
	if #Yes > 0 then
		return Yes[1]
	elseif #Yes < 1 then
		return nil
	end
end

local function GetOrientation()
	local PosX, PosY, PosZ = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame:ToOrientation()
	return CFrame.new(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame.X, game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame.Y, game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame.Z) * CFrame.fromOrientation(0, PosY, 0)
end

local function GetPos()
	return game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end

local function GetCamPos()
	return workspace.CurrentCamera.CFrame
end

local function GetTeam()
	return game.Players.LocalPlayer.TeamColor.Name
end

function Goto(Player, Distance)
	local Distance = Distance or CFrame.new(0, 0, 0)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Player.Character.HumanoidRootPart.CFrame * Distance
end

function Split(Arguaments, Split)
	if not Arguaments or not Split then return end
	return Arguaments:split(Split)
end

function ChatNotify(Message, Colors, Size)
	game.StarterGui:SetCore("ChatMakeSystemMessage", {
		Text = Message,
		Color = Colors or Color3.fromRGB(255, 255, 255),
		Font = Enum.Font.SourceSans,
		FontSize = Size or Enum.FontSize.Size48
	})
end

function Chat(Message, Whisper)
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(Message, Whisper or "ALl")
end

function WaitForChild(Time, Parent, Child)
	if not Parent or not Child then return end
	if Parent == "LocalPlayer" then Parent = game.Players.LocalPlayer end
	if Parent == "Character" then Parent = game.Players.LocalPlayer.Character end
	if Parent == "Backpack" then Parent = game.Players.LocalPlayer.Character.Backpack end
	local Times = Time * 10 or 1
	repeat wait(.1)
		Time = Time - 1
	until Parent:FindFirstChild(Child) or Time <= 0
	if Parent and Parent:FindFirstChild(Child) then
		return Parent:FindFirstChild(Child)
	else
		return nil
	end
end

function Kill(Player)
	local events = {}
	local gun = nil
	workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
	for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		if v.Name ~= "Taser" and v:FindFirstChild("GunStates") then
			gun = v
		end
	end
	if gun == nil then
		for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v.Name ~= "Taser" and v:FindFirstChild("GunStates") then
				gun = v
			end
		end
	end
	coroutine.wrap(function()
		for i = 1,30 do
			game.ReplicatedStorage.ReloadEvent:FireServer(gun)
			wait(.5)
		end
	end)()
	for i = 1,5 do
		events[#events + 1] = {
			Hit = Player.Character:FindFirstChild("Head") or Player.Character:FindFirstChildOfClass("Part"),
			Cframe = CFrame.new(),
			RayObject = Ray.new(Vector3.new(), Vector3.new()),
			Distance = 0
		}
	end
	game.ReplicatedStorage.ShootEvent:FireServer(events, gun)
end

function KillTeam(Team)
	local events = {}
	local gun = nil
	for i,v in pairs(game.Players:GetPlayers()) do
		if v ~= game.Players.LocalPlayer and v.TeamColor.Name == Team then
			if v.TeamColor.Name == game.Players.LocalPlayer.TeamColor.Name then
				local savedcf = GetOrientation()
				local camcf = workspace.CurrentCamera.CFrame
				workspace.Remote.loadchar:InvokeServer(nil, BrickColor.random().Name)
				workspace.CurrentCamera.CFrame = camcf
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
			end
			for i = 1,10 do
				events[#events + 1] = {
					Hit = v.Character:FindFirstChild("Head") or v.Character:FindFirstChildOfClass("Part"),
					Cframe = CFrame.new(),
					RayObject = Ray.new(Vector3.new(), Vector3.new()),
					Distance = 0
				}
			end
		end
	end
	workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
	for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		if v.Name ~= "Taser" and v:FindFirstChild("GunStates") then
			gun = v
		end
	end
	if gun == nil then
		for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v.Name ~= "Taser" and v:FindFirstChild("GunStates") then
				gun = v
			end
		end
	end
	coroutine.wrap(function()
		for i = 1,30 do
			game.ReplicatedStorage.ReloadEvent:FireServer(gun)
			wait(.5)
		end
	end)()
	game.ReplicatedStorage.ShootEvent:FireServer(events, gun)
end

function KillAll()
	local events = {}
	local gun = nil
	for i,v in pairs(game.Players:GetPlayers()) do
		if v ~= game.Players.LocalPlayer then
			if v.TeamColor.Name == game.Players.LocalPlayer.TeamColor.Name then
				local savedcf = GetOrientation()
				local camcf = workspace.CurrentCamera.CFrame
				workspace.Remote.loadchar:InvokeServer(nil, BrickColor.random().Name)
				workspace.CurrentCamera.CFrame = camcf
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
			end
			for i = 1,10 do
				events[#events + 1] = {
					Hit = v.Character:FindFirstChild("Head") or v.Character:FindFirstChildOfClass("Part"),
					Cframe = CFrame.new(),
					RayObject = Ray.new(Vector3.new(), Vector3.new()),
					Distance = 0
				}
			end
		end
	end
	workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
	for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		if v.Name ~= "Taser" and v:FindFirstChild("GunStates") then
			gun = v
		end
	end
	if gun == nil then
		for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v.Name ~= "Taser" and v:FindFirstChild("GunStates") then
				gun = v
			end
		end
	end
	coroutine.wrap(function()
		for i = 1,30 do
			game.ReplicatedStorage.ReloadEvent:FireServer(gun)
			wait(.5)
		end
	end)()
	game.ReplicatedStorage.ShootEvent:FireServer(events, gun)
end

function Tase(Player)
	local events = {}
	local gun = nil
	local savedteam = game.Players.LocalPlayer.TeamColor.Name
	if not game.Players.LocalPlayer.Character:FindFirstChild("Taser") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Taser") then
		savedteam = game.Players.LocalPlayer.TeamColor.Name
		local savedcf = GetOrientation()
		local camcf = workspace.CurrentCamera.CFrame
		workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Bright blue").Name)
		workspace.CurrentCamera.CFrame = camcf
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
	end
	for i = 1,1 do
		events[#events + 1] = {
			Hit = Player.Character:FindFirstChildOfClass("Part"),
			Cframe = CFrame.new(),
			RayObject = Ray.new(Vector3.new(), Vector3.new()),
			Distance = 0
		}
	end
	game.ReplicatedStorage.ShootEvent:FireServer(events, gun)
	local savedcf = GetOrientation()
	local camcf = workspace.CurrentCamera.CFrame
	workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new(savedteam).Name)
	workspace.CurrentCamera.CFrame = camcf
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
end

function TaseTeam(Team)
	local events = {}
	local gun = nil
	local savedteam = game.Players.LocalPlayer.TeamColor.Name
	for i,v in pairs(game.Players:GetPlayers()) do
		if v ~= game.Players.LocalPlayer and v.TeamColor.Name == Team then
			events[#events + 1] = {
				Hit = v.Character:FindFirstChildOfClass("Part"),
				Cframe = CFrame.new(),
				RayObject = Ray.new(Vector3.new(), Vector3.new()),
				Distance = 0
			}
		end
	end
	if not game.Players.LocalPlayer.Character:FindFirstChild("Taser") and not game.Players.LocalPlayer:FindFirstChild("Backpack"):FindFirstChild("Taser") then
		savedteam = game.Players.LocalPlayer.TeamColor.Name
		local savedcf = GetOrientation()
		local camcf = workspace.CurrentCamera.CFrame
		workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Bright blue").Name)
		workspace.CurrentCamera.CFrame = camcf
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
	end
	gun = game.Players.LocalPlayer.Character:FindFirstChild("Taser") or game.Players.LocalPlayer.Backpack:FindFirstChild("Taser")
	game.ReplicatedStorage.ShootEvent:FireServer(events, gun)
	local savedcf = GetOrientation()
	local camcf = workspace.CurrentCamera.CFrame
	workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new(savedteam).Name)
	workspace.CurrentCamera.CFrame = camcf
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
end

function TaserAll()
	local events = {}
	local gun = nil
	local savedteam = game.Players.LocalPlayer.TeamColor.Name
	for i,v in pairs(game.Players:GetPlayers()) do
		if v ~= game.Players.LocalPlayer then
			events[#events + 1] = {
				Hit = v.Character:FindFirstChildOfClass("Part"),
				Cframe = CFrame.new(),
				RayObject = Ray.new(Vector3.new(), Vector3.new()),
				Distance = 0
			}
		end
	end
	if not game.Players.LocalPlayer.Character:FindFirstChild("Taser") and not game.Players.LocalPlayer:FindFirstChild("Backpack"):FindFirstChild("Taser") then
		savedteam = game.Players.LocalPlayer.TeamColor.Name
		local savedcf = GetOrientation()
		local camcf = workspace.CurrentCamera.CFrame
		workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Bright blue").Name)
		workspace.CurrentCamera.CFrame = camcf
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
	end
	gun = game.Players.LocalPlayer.Character:FindFirstChild("Taser") or game.Players.LocalPlayer.Backpack:FindFirstChild("Taser")
	game.ReplicatedStorage.ShootEvent:FireServer(events, gun)
	local savedcf = GetOrientation()
	local camcf = workspace.CurrentCamera.CFrame
	workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new(savedteam).Name)
	workspace.CurrentCamera.CFrame = camcf
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
end

local NOW = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

game:GetService("RunService").Stepped:Connect(function()
	if States.LoopBring then
		game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
		UseCommand = true
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = NOW
	end
end)

function DoLoop()
	local pos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
	repeat wait() until not States.LoopBring
	workspace.Remote.loadchar:InvokeServer()
	UseCommand = true
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
end

function LoopBring(Player)
	workspace.Remote.loadchar:InvokeServer()
	workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.single.Hammer.ITEMPICKUP)
	if not game.Players.LocalPlayer:FindFirstChild("Backpack"):FindFirstChild("Hammer") then
		workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver.M9.ITEMPICKUP)
	end
	local CHAR = game.Players.LocalPlayer.Character
	CHAR.Humanoid.Name = "1"
	local c = CHAR["1"]:Clone()
	c.Name = "Humanoid"
	c.Parent = CHAR
	CHAR["1"]:Destroy()
	game.Workspace.CurrentCamera.CameraSubject = CHAR
	CHAR.Animate.Disabled = true
	wait()
	CHAR.Animate.Disabled = false
	CHAR.Humanoid.DisplayDistanceType = "None"
	local Tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Hammer") or game.Players.LocalPlayer.Backpack:FindFirstChild("M9")
	if not game.Players.LocalPlayer.Character:FindFirstChild("Hammer") and not game.Players.LocalPlayer.Character:FindFirstChild("M9") then
		Tool.Parent = game.Players.LocalPlayer.Character
	end
	local stop = 0
	repeat wait(.1)
		stop = stop + 1
		Player.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -0.75)
	until (not game.Players.LocalPlayer.Character:FindFirstChild("Hammer") and not game.Players.LocalPlayer.Character:FindFirstChild("M9") or not game.Players.LocalPlayer.Character or not game.Players.LocalPlayer.Character.HumanoidRootPart or not game.Players[Player.Name] or stop > 500)
end

function Teleport(Player, Position)
	if Player == nil or Position == nil then return end
	local savedcf = GetPos()
	workspace.Remote.loadchar:InvokeServer()
	UseCommand = true
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
	workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.single.Hammer.ITEMPICKUP)
	if not game.Players.LocalPlayer:FindFirstChild("Backpack"):FindFirstChild("Hammer") then
		workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver.M9.ITEMPICKUP)
	end
	local CHAR = game.Players.LocalPlayer.Character
	CHAR.Humanoid.Name = "1"
	local c = CHAR["1"]:Clone()
	c.Name = "Humanoid"
	c.Parent = CHAR
	CHAR["1"]:Destroy()
	game.Workspace.CurrentCamera.CameraSubject = CHAR
	CHAR.Animate.Disabled = true
	wait()
	CHAR.Animate.Disabled = false
	CHAR.Humanoid.DisplayDistanceType = "None"
	local tool = game.Players.LocalPlayer:FindFirstChild("Backpack"):FindFirstChild("Hammer") or game.Players.LocalPlayer:FindFirstChild("Backpack"):FindFirstChild("M9")
	tool.Parent = CHAR
	local STOP = 0
	repeat wait(.1)
		STOP = STOP + 1
		Player.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -0.75)
	until (not game.Players.LocalPlayer.Character:FindFirstChild("M9") and not game.Players.LocalPlayer.Character:FindFirstChild("Hammer") or not game.Players.LocalPlayer.Character.HumanoidRootPart or not Player.Character.HumanoidRootPart or not game.Players.LocalPlayer.Character.HumanoidRootPart.Parent or not Player.Character.HumanoidRootPart.Parent or STOP > 500) and STOP > 3
	wait(.2)
	workspace.Remote.loadchar:InvokeServer()
	UseCommand = true
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
end

function Void(Player)
	if Player == nil then return end
	local savedcf = GetOrientation()
	workspace.Remote.loadchar:InvokeServer()
	UseCommand = true
	workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.single.Hammer.ITEMPICKUP)
	if not game.Players.LocalPlayer:FindFirstChild("Backpack"):FindFirstChild("Hammer") then
		workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver.M9.ITEMPICKUP)
	end
	local CHAR = game.Players.LocalPlayer.Character
	CHAR.Humanoid.Name = "1"
	local c = CHAR["1"]:Clone()
	c.Name = "Humanoid"
	c.Parent = CHAR
	CHAR["1"]:Destroy()
	game.Workspace.CurrentCamera.CameraSubject = CHAR
	CHAR.Animate.Disabled = true
	wait()
	CHAR.Animate.Disabled = false
	CHAR.Humanoid.DisplayDistanceType = "None"
	local tool = game.Players.LocalPlayer:FindFirstChild("Backpack"):FindFirstChild("Hammer") or game.Players.LocalPlayer:FindFirstChild("Backpack"):FindFirstChild("M9")
	tool.Parent = CHAR
	local STOP = 0
	repeat wait(.1)
		STOP = STOP + 1
		Player.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -0.75)
	until (not game.Players.LocalPlayer.Character:FindFirstChild("M9") and not game.Players.LocalPlayer.Character:FindFirstChild("Hammer") or not game.Players.LocalPlayer.Character.HumanoidRootPart or not Player.Character.HumanoidRootPart or not game.Players.LocalPlayer.Character.HumanoidRootPart.Parent or not Player.Character.HumanoidRootPart.Parent or STOP > 500) and STOP > 3
	for i = 1,10 do
		wait()
		UseCommand = true
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(99999999999999, 99999999999999, 99999999999999)
	end
	workspace.Remote.loadchar:InvokeServer()
	UseCommand = true
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
end

function TeleportV(Player, Player2)
	if Player == nil or Player2 == nil then return end
	local savedcf = GetPos()
	workspace.Remote.loadchar:InvokeServer()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
	workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.single.Hammer.ITEMPICKUP)
	if not game.Players.LocalPlayer:FindFirstChild("Backpack"):FindFirstChild("Hammer") then
		workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver.M9.ITEMPICKUP)
	end
	local CHAR = game.Players.LocalPlayer.Character
	CHAR.Humanoid.Name = "1"
	local c = CHAR["1"]:Clone()
	c.Name = "Humanoid"
	c.Parent = CHAR
	CHAR["1"]:Destroy()
	game.Workspace.CurrentCamera.CameraSubject = CHAR
	CHAR.Animate.Disabled = true
	wait()
	CHAR.Animate.Disabled = false
	CHAR.Humanoid.DisplayDistanceType = "None"
	local tool = game.Players.LocalPlayer:FindFirstChild("Backpack"):FindFirstChild("Hammer") or game.Players.LocalPlayer:FindFirstChild("Backpack"):FindFirstChild("M9")
	tool.Parent = CHAR
	local STOP = 0
	repeat wait(.1)
		STOP = STOP + 1
		Player.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -0.75)
	until (not game.Players.LocalPlayer.Character:FindFirstChild("M9") and not game.Players.LocalPlayer.Character:FindFirstChild("Hammer") or not game.Players.LocalPlayer.Character.HumanoidRootPart or not Player.Character.HumanoidRootPart or not game.Players.LocalPlayer.Character.HumanoidRootPart.Parent or not Player.Character.HumanoidRootPart.Parent or STOP > 500) and STOP > 3
	for i = 1,10 do
		wait()
		UseCommand = true
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Player2.Character.HumanoidRootPart.CFrame
	end
	workspace.Remote.loadchar:InvokeServer()
	UseCommand = true
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
end

function ArrestEvent(Player, Time)
	for i = 1,Time do
		workspace.Remote.arrest:InvokeServer(Player.Character.Head)
	end
end

function Arrest(Player, Time)
	local Time = tonumber(Time) or 1
	local savedcf = GetPos()
	local savedcamcf = GetCamPos()
	local savedteam = GetTeam()
	if Player then
		repeat wait()
			UseCommand = true
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Player.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1)
			for i = 1,Time do
				coroutine.wrap(function()
					workspace.Remote.arrest:InvokeServer(Player.Character.Head)
				end)()
			end
		until (Player.Character:FindFirstChild("Head"):FindFirstChild("handcuffedGui") or not game.Players:FindFirstChild(Player.Name))
		wait()
	end
	workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new(savedteam).Name)
	game.Players.LocalPlayer.Character.Humanoid.Sit = false
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
	workspace.CurrentCamera.CFrame = savedcamcf
end

function CreateBeam(Player, Distance, Position)
	if Player then
		pcall(function()
			local Backpack = game.Players.LocalPlayer.Backpack
			local Character = game.Players.LocalPlayer.Character
			local Gun = Backpack:FindFirstChild("Remington 870") or Character:FindFirstChild("Remington 870")
			if not Gun then
				workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
			end
			Gun = Backpack:FindFirstChild("Remington 870") or Character:FindFirstChild("Remington 870")
			local Head = Player.Character.Head
			if Head and Player and Character and Backpack and Gun and Distance and Position then
				local events = {}
				for i = 1,100 do
					events[i] = {
						RayObject = Ray.new(Vector3.new(), Vector3.new()),
						Distance = Distance,
						Cframe = Position,
						Hit = Head
					}
				end
				game.ReplicatedStorage.ShootEvent:FireServer(events, Gun)
			end
			Gun.Parent = game.Players.LocalPlayer.Character
			game.Players.LocalPlayer.Character:FindFirstChild("Remington 870"):Destroy()
		end)
	end
end

function CreateBeam2(Player, Distance, Position)
	if Player then
		pcall(function()
			local Backpack = game.Players.LocalPlayer.Backpack
			local Character = game.Players.LocalPlayer.Character
			local Gun = Backpack:FindFirstChild("AK-47") or Character:FindFirstChild("AK-47")
			if not Gun then
				workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
			end
			Gun = Backpack:FindFirstChild("AK-47") or Character:FindFirstChild("AK-47")
			local Head = Player.Character.Head
			if Head and Player and Character and Backpack and Gun and Distance and Position then
				game.ReplicatedStorage.ShootEvent:FireServer({
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
				}, Gun)
			end
			Gun.Parent = game.Players.LocalPlayer.Character
			game.Players.LocalPlayer.Character:FindFirstChild("AK-47"):Destroy()
		end)
	end
end

function CreateBeam3(Player, Distance, Position)
	if Player then
		pcall(function()
			local Backpack = game.Players.LocalPlayer.Backpack
			local Character = game.Players.LocalPlayer.Character
			local Gun = Backpack:FindFirstChild("M9") or Character:FindFirstChild("M9")
			if not Gun then
				workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
			end
			Gun = Backpack:FindFirstChild("M9") or Character:FindFirstChild("M9")
			local Head = Player.Character.Head
			if Head and Player and Character and Backpack and Gun and Distance and Position then
				game.ReplicatedStorage.ShootEvent:FireServer({
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head}
				}, Gun)
			end
			Gun.Parent = game.Players.LocalPlayer.Character
			game.Players.LocalPlayer.Character:FindFirstChild("M9"):Destroy()
		end)
	end
end

function Esp(player)
	pcall(function()
		local Billboard = Instance.new("BillboardGui", game.Players.LocalPlayer.PlayerGui)
		local Frame = Instance.new("Frame", Billboard)
		local Label_Billboard = Instance.new("TextLabel", Billboard)

		Billboard.Name = "ESP"
		Billboard.Adornee = workspace:FindFirstChild(player.Name).Head
		Billboard.AlwaysOnTop = true
		Billboard.ExtentsOffset = Vector3.new(0, 1.25, 0)
		Billboard.Size = UDim2.new(0, 6, 0, 6)

		Frame.Name = "ESP_2"
		Frame.BackgroundColor = BrickColor.new(player.TeamColor.Name)
		Frame.BorderSizePixel = 0
		Frame.BackgroundTransparency = 0.250
		Frame.Position = UDim2.new(-0.5, 0, -0.5, 0)
		Frame.Visible = true
		Frame.Size = UDim2.new(2, 0, 2, 0)
		Frame.ZIndex = 1

		Label_Billboard.Name = "ESP_3"
		Label_Billboard.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Label_Billboard.BackgroundTransparency = 1.000
		Label_Billboard.Text = player.DisplayName
		Label_Billboard.Font = Enum.Font.GothamBlack
		Label_Billboard.FontSize = Enum.FontSize.Size18
		Label_Billboard.BorderSizePixel = 0
		Label_Billboard.Visible = true
		Label_Billboard.Position = UDim2.new(0, 0, 0, -40)
		Label_Billboard.TextColor3 = Color3.fromRGB(0, 0, 0)
		Label_Billboard.ZIndex = 2
		Label_Billboard.Size = UDim2.new(2, 0, 10, 0)
	end)
end

function Unesp(player)
	for i,v in pairs(game.Players.LocalPlayer.PlayerGui:GetChildren()) do
		if v:FindFirstChild("ESP_3") then
			if v.ESP_3.Text == player.DisplayName then
				v:Destroy()
			end
		end
	end
end

function ClearEsp()
	for i,v in pairs(game.Players.LocalPlayer.PlayerGui:GetChildren()) do
		if v.Name == "ESP" then
			v:Destroy()
		end
	end
end

function Beam(Player, Distance, Time)
	if Player and Distance then
		local RunService = game:GetService("RunService")
		RunService:BindToRenderStep(Player.Name, math.huge, function()
			coroutine.wrap(function()
				CreateBeam(Player, Distance, Player.Character.HumanoidRootPart.CFrame)
			end)()
		end)
		delay(Time, function()
			pcall(function()
				RunService:UnbindFromRenderStep(Player.Name)
			end)
		end)
	end
end

function LagBeam(Player, Distance, Time)
	if Player and Distance then
		local RunService = game:GetService("RunService")
		RunService:BindToRenderStep(Player.Name, math.huge, function()
			coroutine.wrap(function()
				CreateBeam(Player, Distance, Player.Character.HumanoidRootPart.CFrame)
			end)()
			coroutine.wrap(function()
				CreateBeam2(Player, Distance, Player.Character.HumanoidRootPart.CFrame)
			end)()
			coroutine.wrap(function()
				CreateBeam3(Player, Distance, Player.Character.HumanoidRootPart.CFrame)
			end)()
		end)
		delay(Time, function()
			pcall(function()
				RunService:UnbindFromRenderStep(Player.Name)
			end)
		end)
	end
end

function DetectMove(Player)
	local oldpos = Player.Character.HumanoidRootPart.CFrame
	local Move
	local Time = 0
	repeat wait(.1)
		Time = Time + 1
		if oldpos ~= Player.Character.HumanoidRootPart.CFrame then
			Move = true
		else
			Move = false
		end
	until (Time >= 500 and Move == false) or Move == true
	return Move
end

function FeGodMode()
	game.Players.LocalPlayer.Character.Humanoid.Name = 1
	local l = game.Players.LocalPlayer.Character["1"]:Clone()
	l.Parent = game.Players.LocalPlayer.Character
	l.Name = "Humanoid"
	game.Players.LocalPlayer.Character.Animate.Disabled = true
	wait()
	game.Players.LocalPlayer.Character.Animate.Disabled = false
	game.Players.LocalPlayer.Character["1"]:Destroy()
	game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
end

local function GetPlayerPart(Player)
	if not Player then return end
	if Player:FindFirstChild("HumanoidRootPart") then
		return Player.HumanoidRootPart
	elseif Player:FindFirstChild("Torso") then
		return Player.Torso
	end
end

local Mouse = game.Players.LocalPlayer:GetMouse()

function CopyChat(Player)
	Player.Chatted:Connect(function(Message)
		if States.CopyChat then
			Chat("["..Player.DisplayName.."]: "..Message)
		end
	end)
end

function Died(Player)
	pcall(function()
		if Player.Character.Humanoid.Health < 1 then
			if States.ChatNotify then
				Chat(Player.DisplayName.." Died")
			end
			if States.Notify then
				game.StarterGui:SetCore("SendNotification", {
					Title = "Game",
					Text = Player.DisplayName.." Died",
					Icon = game.Players:GetUserThumbnailAsync(Player.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size352x352)
				})
			end
		end
	end)
end

function PlayerPickUp(Player)
	Player.Backpack.ChildAdded:Connect(function(Item)
		if States.ChatNotify then
			Chat(Player.DisplayName.." Pick Up "..Item.Name)
		end
		if States.Notify then
			game.StarterGui:SetCore("SendNotification", {
				Title = "Game",
				Text = Player.DisplayName.." Pick Up "..Item.Name,
				Icon = game.Players:GetUserThumbnailAsync(Player.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size352x352)
			})
		end
	end)
end

local function Loadstring(Https)
	if not Https then return end
	loadstring(game:HttpGet((Https), true))()
end

local function Command(Cmd)
	if StringsLowerMessage then
		return Arg1 == Prefix..(string.lower(Cmd))
	else
		return Arg1 == Prefix..Cmd
	end
end

local function PrefixCommand(Cmd)
	if StringsLowerMessage then
		return Arg1 == "!"..string.lower(Cmd)
	else
		return Arg1 == "!"..Cmd
	end
end

local Walls = {
	game.Workspace.Prison_Halls.walls,
	game.Workspace.Prison_Halls.roof,
	game.Workspace.Prison_Halls.outlines,
	game.Workspace.Prison_Halls.lights,
	game.Workspace.Prison_Halls.accent,
	game.Workspace.Prison_Halls.glass,
	game.Workspace.Prison_Cellblock.b_front,
	game.Workspace.Prison_Cellblock.doors,
	game.Workspace.Prison_Cellblock.c_tables,
	game.Workspace.Prison_Cellblock.a_front,
	game.Workspace.Prison_Cellblock.b_outerwall,
	game.Workspace.Prison_Cellblock.c_wall,
	game.Workspace.Prison_Cellblock.b_wall,
	game.Workspace.Prison_Cellblock.c_hallwall,
	game.Workspace.Prison_Cellblock.a_outerwall,
	game.Workspace.Prison_Cellblock.b_ramp,
	game.Workspace.Prison_Cellblock.a_ramp,
	game.Workspace.Prison_Cellblock.a_walls,
	game.Workspace.Prison_Cellblock.Cells_B,
	game.Workspace.Prison_Cellblock.Cells_A,
	game.Workspace.Prison_Cellblock.c_corner,
	game.Workspace.Prison_Cellblock.Wedge,
	game.Workspace.Prison_Cellblock.a_ceiling,
	game.Workspace.Prison_Cellblock.b_ceiling,
	game.Workspace.City_buildings,
	game.Workspace.Prison_OuterWall,
	game.Workspace.Prison_Guard_Outpost,
	game.Workspace.Prison_Cafeteria.building,
	game.Workspace.Prison_Cafeteria.glass,
	game.Workspace.Prison_Cafeteria.oven,
	game.Workspace.Prison_Cafeteria.shelves,
	game.Workspace.Prison_Cafeteria.vents,
	game.Workspace.Prison_Cafeteria.accents,
	game.Workspace.Prison_Cafeteria["vending machine"],
	game.Workspace.Prison_Cafeteria.Prison_table1,
	game.Workspace.Prison_Cafeteria.counter,
	game.Workspace.Prison_Cafeteria.boxes,
	game.Workspace.Prison_Cafeteria["trash bins"],
	game.Workspace.Prison_Administration
}

local Gyro = nil
local Velocity = nil
local SuperKnife = {}

function PlayerChatted(Message)
	if ScriptDisabled then return end
	Split = Message:split(" ")
	Arg1 = Split[1]
	Arg2 = Split[2]
	Arg3 = Split[3]
	Arg4 = Split[4]
	UseCommand = true

	if Command("giveaura") or Command("addaura") or Command("aura") then
		local plr = GetPlayer(Arg2)
		if plr ~= nil and not KillAura[plr.UserId] then
			KillAura[plr.UserId] = {Player = plr}

			StarterGui:SetCore("SendNotification", {
				Title = "Success";
				Text = "Gave "..Player.Name.." aura";
				Duration = 5;
			})

		else
			StarterGui:SetCore("SendNotification", {
				Title = "Error";
				Text = "No player found";
				Duration = 5;
			})
		end
	end

	if Command("removeaura") or Command("unaura") then
		local plr = GetPlayer(Arg2)
		if plr ~= nil and KillAura[plr.UserId] then
			KillAura[plr.UserId] = nil

			StarterGui:SetCore("SendNotification", {
				Title = "Success";
				Text = "remove "..Player.Name.." aura";
				Duration = 5;
			})

		else
			StarterGui:SetCore("SendNotification", {
				Title = "Error";
				Text = "No player found";
				Duration = 5;
			})
		end
	end

	if Command("slasher") then

		StarterGui:SetCore("SendNotification", {
			Title = "Loaded FE Slasher";
			Text = "Please wait";
			Duration = 5;
		})

		loadstring(game:HttpGet("https://raw.githubusercontent.com/RealErickDenisDavid/Loaded-FE-Slasher/main/FE%20Slasher.lua", true))()
	end

	if Command("bringall") then
		for i,v in pairs(game.Players:GetPlayers()) do
			if v ~= game.Players.LocalPlayer then
				Teleport(v, GetPos())
			end
		end
		StarterGui:SetCore("SendNotification", {
			Title = "Success";
			Text = "Broght all";
			Duration = 5;
		})
	end

	if Command("giveadmin") or Command("addrank") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil and not Admin[Player.UserId] then
			Admin[Player.UserId] = {Player = Player}
			Chat("/w "..Player.Name.." You've got admin permissions! Type "..Prefix.." cmds to see all commands")

			StarterGui:SetCore("SendNotification", {
				Title = "Success";
				Text = "Gave "..Player.Name.." admin commands";
				Duration = 5;
			})

			else
				StarterGui:SetCore("SendNotification", {
					Title = "Error";
					Text = "No player found / already admin";
					Duration = 5;
				})
		end
	end
	if Command("removeadmin") or Command("removerank") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil and Admin[Player.UserId] then
			Admin[Player.UserId] = nil
			Chat("/w "..Player.Name.." You are bad you've been removed admin permissions")

			StarterGui:SetCore("SendNotification", {
				Title = "Error";
				Text = "Removed admins from "..Player.Name;
				Duration = 5;
			})

		else
			StarterGui:SetCore("SendNotification", {
			Title = "Error";
			Text = "No player found / already remove admin";
			Duration = 5;
		})
		end
	end

	if Command("auto") then
		States.Auto_Refresh = true
		
		StarterGui:SetCore("SendNotification", {
			Title = "Success";
			Text = "Turn auto refresh on";
			Duration = 5;
		})
		
		while wait() do
			if States.Auto_Refresh == true then
				pcall(function()
					if game.Players.LocalPlayer.Character.Humanoid.Health < 1 then
						if game.Players.LocalPlayer.TeamColor.Name ~= "Medium stone grey" then
							if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
								local savedcf = GetPos()
								local savedcamcf = GetCamPos()
								workspace.Remote.loadchar:InvokeServer()
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
								workspace.CurrentCamera.CFrame = savedcamcf
							end
						else
							if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
								local savedcf = GetPos()
								local savedcamcf = GetCamPos()
								workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Bright orange").Name)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
								workspace.CurrentCamera.CFrame = savedcamcf
								workspace.Remote.TeamEvent:FireServer("Medium stone grey")
							end
						end
					end
				end)
			end
		end
	end
	if Command("unauto") then
		States.Auto_Refresh = false

		StarterGui:SetCore("SendNotification", {
			Title = "Success";
			Text = "Turn auto refresh off";
			Duration = 5;
		})
	end
	
	if Command("sonic") then
		StarterGui:SetCore("SendNotification", {
			Title = "Loaded FE Sonic";
			Text = "Please wait";
			Duration = 5;
		})
		loadstring(game:HttpGetAsync("https://pastebin.com/raw/SyF5t70A", true))()
	end

	if Command("cmds") then
		if Background.Visible == true then
			Background.Visible = false
		else
			Background.Visible = true
		end
		StarterGui:SetCore("SendNotification", {
			Title = "Success";
			Text = "Showed Commands";
			Duration = 5;
		})
	end

	if Command("flycar") then
		local hint = Instance.new("Hint",game.Players.LocalPlayer.PlayerGui)
		hint.Text = "Press X To Toggle"
		hint.Name = game.JobId
		repeat wait()
		until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Torso") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid")
		local mouse = game.Players.LocalPlayer:GetMouse()
		repeat wait() until mouse
		local plr = game.Players.LocalPlayer
		local torso = plr.Character.Torso
		local flying = true
		local deb = true
		local ctrl = {f = 0, b = 0, l = 0, r = 0}
		local lastctrl = {f = 0, b = 0, l = 0, r = 0}
		local maxspeed = 500
		local speed = 0

		function Fly()
			local bg = Instance.new("BodyGyro", torso)
			bg.P = 9e4
			bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
			bg.cframe = torso.CFrame
			local bv = Instance.new("BodyVelocity", torso)
			bv.velocity = Vector3.new(0,0.1,0)
			bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
			repeat wait()
				plr.Character.Humanoid.PlatformStand = false
				if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
					speed = speed+125.0+(speed/maxspeed)
					if speed > maxspeed then
						speed = maxspeed
					end
				elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
					speed = speed-250
					if speed < 0 then
						speed = 0
					end
				end
				if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
					bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
					lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
				elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
					bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
				else
					bv.velocity = Vector3.new(0,0.1,0)
				end
				bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
			until not flying
			ctrl = {f = 0, b = 0, l = 0, r = 0}
			lastctrl = {f = 0, b = 0, l = 0, r = 0}
			speed = 0
			bg:Destroy()
			bv:Destroy()
			plr.Character.Humanoid.PlatformStand = false
		end
		mouse.KeyDown:connect(function(key)
			if key:lower() == "x" then
				if flying then flying = false
				else
					flying = true
					Fly()
				end
			elseif key:lower() == "w" then
				ctrl.f = 1
			elseif key:lower() == "s" then
				ctrl.b = -1
			elseif key:lower() == "a" then
				ctrl.l = -1
			elseif key:lower() == "d" then
				ctrl.r = 1
			end
		end)
		mouse.KeyUp:connect(function(key)
			if key:lower() == "w" then
				ctrl.f = 0
			elseif key:lower() == "s" then
				ctrl.b = 0
			elseif key:lower() == "a" then
				ctrl.l = 0
			elseif key:lower() == "d" then
				ctrl.r = 0
			end
			wait(5)
			hint:Destroy()
		end)
		Fly()
	end

	if Command("keycard") or Command("key") then
		local plr = GetPlayer(Arg2)
		if plr ~= nil then
			local savedteam = game.Players.LocalPlayer.TeamColor.Name
			repeat wait(.2)
				game.Players.LocalPlayer.Character.Humanoid.Health = 0
				workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Bright blue").Name)
			until workspace.Prison_ITEMS.single:FindFirstChild("Key card")
			wait()
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.single["Key card"].ITEMPICKUP)
			local Item = game.Players.LocalPlayer:FindFirstChild("Backpack"):FindFirstChild("Key card") or game.Players.LocalPlayer.Character:FindFirstChild("Key card")
			local savedcf = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			UseCommand = true
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = plr.Character.HumanoidRootPart.CFrame
			local CHAR = game.Players.LocalPlayer.Character
			CHAR.Humanoid.Name = "1"
			local c = CHAR["1"]:Clone()
			c.Name = "Humanoid"
			c.Parent = CHAR
			CHAR["1"]:Destroy()
			game.Workspace.CurrentCamera.CameraSubject = CHAR
			CHAR.Animate.Disabled = true
			wait()
			CHAR.Animate.Disabled = false
			CHAR.Humanoid.DisplayDistanceType = "None"
			if not game.Players.LocalPlayer.Character:FindFirstChild(Item.Name) then
				Item.Parent = game.Players.LocalPlayer.Character
			end
			local STOP = 0
			repeat wait(.1)
				STOP = STOP + 1
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = plr.Character.Torso.CFrame * CFrame.new(0, 0, 0.75)
			until (not game.Players.LocalPlayer.Character:FindFirstChild(Item.Name) or not game.Players.LocalPlayer.Character or not game.Players.LocalPlayer.Character.HumanoidRootPart or STOP > 500)
			wait(.2)
			workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new(savedteam).Name)
			UseCommand = true
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
		end
	end

	if Command("cuffs") then
		local plr = GetPlayer(Arg2)
		if plr ~= nil then
			local savedteam = game.Players.LocalPlayer.TeamColor.Name
			workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Bright blue").Name)
			local Item = game.Players.LocalPlayer:FindFirstChild("Backpack"):FindFirstChild("Handcuffs") or game.Players.LocalPlayer.Character:FindFirstChild("Handcuffs")
			local savedcf = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			UseCommand = true
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = plr.Character.HumanoidRootPart.CFrame
			local CHAR = game.Players.LocalPlayer.Character
			CHAR.Humanoid.Name = "1"
			local c = CHAR["1"]:Clone()
			c.Name = "Humanoid"
			c.Parent = CHAR
			CHAR["1"]:Destroy()
			game.Workspace.CurrentCamera.CameraSubject = CHAR
			CHAR.Animate.Disabled = true
			wait()
			CHAR.Animate.Disabled = false
			CHAR.Humanoid.DisplayDistanceType = "None"
			if not game.Players.LocalPlayer.Character:FindFirstChild(Item.Name) then
				Item.Parent = game.Players.LocalPlayer.Character
			end
			local STOP = 0
			repeat wait(.1)
				STOP = STOP + 1
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = plr.Character.Torso.CFrame * CFrame.new(0, 0, 0.75)
			until (not game.Players.LocalPlayer.Character:FindFirstChild(Item.Name) or not game.Players.LocalPlayer.Character or not game.Players.LocalPlayer.Character.HumanoidRootPart or STOP > 500)
			wait(.2)
			workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new(savedteam).Name)
			UseCommand = true
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
		end
	end

	if Command("antitp") or Command("antibring") then

		StarterGui:SetCore("SendNotification", {
			Title = "Success";
			Text = "Turn anti bring on";
			Duration = 5;
		})
		States.Anti_Bring = true
	end

	if Command("unantitp") or Command("unantibring") then

		StarterGui:SetCore("SendNotification", {
			Title = "Success";
			Text = "Turn anti bring off";
			Duration = 5;
		})
		States.Anti_Bring = false
	end

	if Command("fly") then
		States.Fly = true
		States.FlySpeed = tonumber(Arg2) or tonumber(States.FlySpeed) or 1
		pcall(function()
			Gyro.P = 0
			Gyro.MaxTorque = Vector3.new(0, 0, 0)
			Gyro.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			Velocity.MaxForce = Vector3.new(0, 0, 0)
			Velocity.Velocity = Vector3.new(0, 0, 0)
			Gyro:Destroy()
			Velocity:Destroy()
			Gyro = nil
			Velocity = nil
		end)

		pcall(function()
			Gyro = Instance.new("BodyGyro", game.Players.LocalPlayer.Character.HumanoidRootPart)
			Velocity = Instance.new("BodyVelocity", game.Players.LocalPlayer.Character.HumanoidRootPart)
			Gyro.MaxTorque = Vector3.new(9e4, 9e4, 9e4)
			Gyro.P = 9e4
			Gyro.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			Velocity.MaxForce = Vector3.new(9e4, 9e4, 9e4)
			Velocity.Velocity = Vector3.new(0, 0, 0)
		end)

		local controls = {"w","a","s","d","e","q"}
		local controlsValues = {1, -1, -1, 1, -1, 1}
		local controlsStats = {w = 0, a = 0, s = 0, d = 0, e = 0, q = 0}
		game:GetService("RunService").Stepped:Connect(function()
			if States.Fly then
				Gyro.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position, workspace.CurrentCamera.CFrame.p) * CFrame.Angles(0, math.rad(180), 0)
				Velocity.Velocity = ((Gyro.CFrame.lookVector + Vector3.new(0, 0.25, 0)) * (controlsStats["w"] + controlsStats["s"])) + ((Gyro.CFrame * CFrame.new(controlsStats["a"] + controlsStats["d"], controlsStats["e"] + controlsStats["q"], 0).p) - (Gyro.CFrame.p))
				game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true
			end
		end)

		game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(key)
			for i,v in pairs(controls) do
				if key == v then
					controlsStats[key] = controlsValues[i] * 25 * States.FlySpeed
				end
			end
		end)

		game.Players.LocalPlayer:GetMouse().KeyUp:Connect(function(key)
			for i,v in pairs(controls) do
				if key == v then
					controlsStats[key] = controlsValues[i] * 0
				end
			end
		end)

		game.Players.LocalPlayer.CharacterAdded:Connect(function()
			if States.Fly then
				States.Fly = false
				pcall(function()
					Gyro.P = 0
					Gyro.MaxTorque = Vector3.new(0, 0, 0)
					Gyro.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
					Velocity.MaxForce = Vector3.new(0, 0, 0)
					Velocity.Velocity = Vector3.new(0, 0, 0)
					Gyro:Destroy()
					Velocity:Destroy()
					Gyro = nil
					Velocity = nil
					game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
				end)
				game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
				pcall(function()
					Gyro = Instance.new("BodyGyro", game.Players.LocalPlayer.Character.HumanoidRootPart)
					Velocity = Instance.new("BodyVelocity", game.Players.LocalPlayer.Character.HumanoidRootPart)
					Gyro.MaxTorque = Vector3.new(9e4, 9e4, 9e4)
					Gyro.P = 9e4
					Gyro.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
					Velocity.MaxForce = Vector3.new(9e4, 9e4, 9e4)
					Velocity.Velocity = Vector3.new(0, 0, 0)
				end)
				States.Fly = true
			end
		end)
	end

	if Command("unfly") then
		States.Fly = false
		pcall(function()
			Gyro.P = 0
			Gyro.MaxTorque = Vector3.new(0, 0, 0)
			Gyro.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			Velocity.MaxForce = Vector3.new(0, 0, 0)
			Velocity.Velocity = Vector3.new(0, 0, 0)
			Gyro:Destroy()
			Velocity:Destroy()
			Gyro = nil
			Velocity = nil
			game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
		end)

	end

	if Command("inmates") then

		StarterGui:SetCore("SendNotification", {
			Title = "Success";
			Text = "Become a inmate";
			Duration = 5;
		})

		workspace.Remote.TeamEvent:FireServer("Bright orange")
	end

	if Command("guards") then

		StarterGui:SetCore("SendNotification", {
			Title = "Success";
			Text = "Become a guards";
			Duration = 5;
		})

		if game.Players.LocalPlayer.TeamColor.Name == "Bright blue" then
		else
			workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Bright blue").Name)
		end
	end

	if Command("criminal") or Command("criminals") or Command("crim") then

		StarterGui:SetCore("SendNotification", {
			Title = "Success";
			Text = "Become a criminal";
			Duration = 5;
		})

		local savedcf = GetPos()
		local savedcamcf = GetCamPos()
		workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Really red").Name)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
		workspace.CurrentCamera.CFrame = savedcamcf
	end

	if Command("neutral") then
		StarterGui:SetCore("SendNotification", {
			Title = "Success";
			Text = "Become a neutral";
			Duration = 5;
		})
		workspace.Remote.TeamEvent:FireServer("Medium stone grey")
	end

	if Command("tase") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil then
			Tase(Player)
		end
	end

	if Command("taseall") then
		TaserAll()
	end
	if Command("kill") or Command("kills") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil then
			Kill(Player)

			StarterGui:SetCore("SendNotification", {
				Title = "Success";
				Text = "Killed "..Player.Name;
				Duration = 5;
			})

		else
			StarterGui:SetCore("SendNotification", {
				Title = "Error";
				Text = "No player found";
				Duration = 5;
			})
		end
	end

	if Command("killall") or Command("oof")  then
		StarterGui:SetCore("SendNotification", {
			Title = "Success";
			Text = "Killed all players";
			Duration = 5;
		})
		KillAll()
	end
	if Command("fullbright") or Command("normalbright") then
		if not _G.FullBrightExecuted then

			_G.FullBrightEnabled = false

			_G.NormalLightingSettings = {
				Brightness = game:GetService("Lighting").Brightness,
				ClockTime = game:GetService("Lighting").ClockTime,
				FogEnd = game:GetService("Lighting").FogEnd,
				GlobalShadows = game:GetService("Lighting").GlobalShadows,
				Ambient = game:GetService("Lighting").Ambient
			}

			game:GetService("Lighting"):GetPropertyChangedSignal("Brightness"):Connect(function()
				if game:GetService("Lighting").Brightness ~= 1 and game:GetService("Lighting").Brightness ~= _G.NormalLightingSettings.Brightness then
					_G.NormalLightingSettings.Brightness = game:GetService("Lighting").Brightness
					if not _G.FullBrightEnabled then
						repeat
							wait()
						until _G.FullBrightEnabled
					end
					game:GetService("Lighting").Brightness = 1
				end
			end)

			game:GetService("Lighting"):GetPropertyChangedSignal("ClockTime"):Connect(function()
				if game:GetService("Lighting").ClockTime ~= 12 and game:GetService("Lighting").ClockTime ~= _G.NormalLightingSettings.ClockTime then
					_G.NormalLightingSettings.ClockTime = game:GetService("Lighting").ClockTime
					if not _G.FullBrightEnabled then
						repeat
							wait()
						until _G.FullBrightEnabled
					end
					game:GetService("Lighting").ClockTime = 12
				end
			end)

			game:GetService("Lighting"):GetPropertyChangedSignal("FogEnd"):Connect(function()
				if game:GetService("Lighting").FogEnd ~= 786543 and game:GetService("Lighting").FogEnd ~= _G.NormalLightingSettings.FogEnd then
					_G.NormalLightingSettings.FogEnd = game:GetService("Lighting").FogEnd
					if not _G.FullBrightEnabled then
						repeat
							wait()
						until _G.FullBrightEnabled
					end
					game:GetService("Lighting").FogEnd = 786543
				end
			end)

			game:GetService("Lighting"):GetPropertyChangedSignal("GlobalShadows"):Connect(function()
				if game:GetService("Lighting").GlobalShadows ~= false and game:GetService("Lighting").GlobalShadows ~= _G.NormalLightingSettings.GlobalShadows then
					_G.NormalLightingSettings.GlobalShadows = game:GetService("Lighting").GlobalShadows
					if not _G.FullBrightEnabled then
						repeat
							wait()
						until _G.FullBrightEnabled
					end
					game:GetService("Lighting").GlobalShadows = false
				end
			end)

			game:GetService("Lighting"):GetPropertyChangedSignal("Ambient"):Connect(function()
				if game:GetService("Lighting").Ambient ~= Color3.fromRGB(178, 178, 178) and game:GetService("Lighting").Ambient ~= _G.NormalLightingSettings.Ambient then
					_G.NormalLightingSettings.Ambient = game:GetService("Lighting").Ambient
					if not _G.FullBrightEnabled then
						repeat
							wait()
						until _G.FullBrightEnabled
					end
					game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
				end
			end)

			game:GetService("Lighting").Brightness = 1
			game:GetService("Lighting").ClockTime = 12
			game:GetService("Lighting").FogEnd = 786543
			game:GetService("Lighting").GlobalShadows = false
			game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)

			local LatestValue = true
			spawn(function()
				repeat
					wait()
				until _G.FullBrightEnabled
				while wait() do
					if _G.FullBrightEnabled ~= LatestValue then
						if not _G.FullBrightEnabled then
							game:GetService("Lighting").Brightness = _G.NormalLightingSettings.Brightness
							game:GetService("Lighting").ClockTime = _G.NormalLightingSettings.ClockTime
							game:GetService("Lighting").FogEnd = _G.NormalLightingSettings.FogEnd
							game:GetService("Lighting").GlobalShadows = _G.NormalLightingSettings.GlobalShadows
							game:GetService("Lighting").Ambient = _G.NormalLightingSettings.Ambient
						else
							game:GetService("Lighting").Brightness = 1
							game:GetService("Lighting").ClockTime = 12
							game:GetService("Lighting").FogEnd = 786543
							game:GetService("Lighting").GlobalShadows = false
							game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
						end
						LatestValue = not LatestValue
					end
				end
			end)
		end

		_G.FullBrightExecuted = true
		_G.FullBrightEnabled = not _G.FullBrightEnabled
	end

	if Command("invisible") or Command("invis") then
		local player = game.Players.LocalPlayer
		position = player.Character.HumanoidRootPart.Position
		wait(0.1)
		player.Character:MoveTo(position + Vector3.new(0, 1000000, 0))
		wait(0.1)
		humanoidrootpart = player.Character.HumanoidRootPart:clone()
		wait(0.1)
		player.Character.HumanoidRootPart:Destroy()
		humanoidrootpart.Parent = player.Character
		player.Character:MoveTo(position)
		wait()
		game.Players.LocalPlayer.Character.Torso.Transparency = 1
		game.Players.LocalPlayer.Character.Head.Transparency  = 1
		game.Players.LocalPlayer.Character["Left Arm"].Transparency = 1
		game.Players.LocalPlayer.Character["Right Arm"].Transparency = 1
		game.Players.LocalPlayer.Character["Left Leg"].Transparency = 1
		game.Players.LocalPlayer.Character["Right Leg"].Transparency = 1
		game.Players.LocalPlayer.Character.Humanoid:RemoveAccessories()
		game.Players.LocalPlayer.Character.Head.face:Remove()
	end

	if Command("killinmates") then
		KillTeam(BrickColor.new("Bright orange").Name)
	end

	if Command("killguard") or Command("killsguard") or Command("killguards") or Command("killsguards") then
		KillTeam(BrickColor.new("Bright blue").Name)
	end

	if Command("killcriminals") then
		KillTeam(BrickColor.new("Really red").Name)
	end

	if Command("loopkill") or Command("loopkills") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil and not LoopKill[Player.UserId] then
			LoopKill[Player.UserId] = {Player = Player}
			StarterGui:SetCore("SendNotification", {
				Title = "Success";
				Text = "Looping kills "..Player.name;
				Duration = 5;
			})

		else
			StarterGui:SetCore("SendNotification", {
				Title = "Error";
				Text = "No player found";
				Duration = 5;
			})

		end
	end

	if Command("unloopkill") or Command("unloopkills") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil and LoopKill[Player.UserId] then
			LoopKill[Player.UserId] = nil
			StarterGui:SetCore("SendNotification", {
				Title = "Success";
				Text = "Unloop kills "..Player.name;
				Duration = 5;
			})

		else
			StarterGui:SetCore("SendNotification", {
				Title = "Error";
				Text = "No player found";
				Duration = 5;
			})
		end
	end

	if Command("loopkillguards") then
		StarterGui:SetCore("SendNotification", {
			Title = "Success";
			Text = "Looping kills all guards";
			Duration = 5;
		})
		
		States.LoopKill_Guards = true
	end

	if Command("unloopkillguards") then
		StarterGui:SetCore("SendNotification", {
			Title = "Success";
			Text = "Unloop kills all guards";
			Duration = 5;
		})
		States.LoopKill_Guards = false
	end

	if Command("loopkillinmates") then
		StarterGui:SetCore("SendNotification", {
			Title = "Success";
			Text = "Looping kills all inmates";
			Duration = 5;
		})
		States.LoopKill_Inmates = true
	end

	if Command("unloopkillinmates") then
		StarterGui:SetCore("SendNotification", {
			Title = "Success";
			Text = "Unloop kills all inmates";
			Duration = 5;
		})
		States.LoopKill_Inmates = false
	end

	if Command("loopkillcriminals") then
		StarterGui:SetCore("SendNotification", {
			Title = "Success";
			Text = "Looping kills all criminals";
			Duration = 5;
		})
		States.LoopKill_Criminals = true
	end

	if Command("unloopkillcriminals") then
		StarterGui:SetCore("SendNotification", {
			Title = "Success";
			Text = "Unlooping kills all criminals";
			Duration = 5;
		})
		States.LoopKill_Criminals = false
	end

	if Command("loopkillall") then
		StarterGui:SetCore("SendNotification", {
			Title = "Success";
			Text = "Looping kills all players";
			Duration = 5;
		})
		States.LoopKill_Others = true
	end

	if Command("unloopkillall") then
		StarterGui:SetCore("SendNotification", {
			Title = "Success";
			Text = "Unlooping kills all players";
			Duration = 5;
		})
		States.LoopKill_Criminals = false
		States.LoopKill_Guards = false
		States.LoopKill_Inmates = false
		States.LoopKill_Others = false
	end

	if Command("goto") or Command("to") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace[Player.Name].HumanoidRootPart.CFrame
			StarterGui:SetCore("SendNotification", {
				Title = "Success";
				Text = "Go to "..Player.Name;
				Duration = 5;
			})
		else
			StarterGui:SetCore("SendNotification", {
				Title = "Error";
				Text = "No player found";
				Duration = 5;
			})
		end
	end

	if Command("re") or Command("refresh") then
		if game.Players.LocalPlayer.TeamColor.Name ~= "Medium stone grey" then
			if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
				local savedcf = GetPos()
				local savedcamcf = GetCamPos()
				workspace.Remote.loadchar:InvokeServer()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
				workspace.CurrentCamera.CFrame = savedcamcf
			end
		else
			if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
				local savedcf = GetPos()
				local savedcamcf = GetCamPos()
				workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Bright orange").Name)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
				workspace.CurrentCamera.CFrame = savedcamcf
				workspace.Remote.TeamEvent:FireServer("Medium stone grey")
			end
		end
		StarterGui:SetCore("SendNotification", {
			Title = "Success";
			Text = "Refreshed";
			Duration = 5;
		})
	end

	if Command("res") or Command("respawn") then
		if game.Players.LocalPlayer.TeamColor.Name ~= "Medium stone grey" then
			workspace.Remote.loadchar:InvokeServer()
		else
			workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Bright orange").Name)
			local savedcf = GetPos()
			local savedcamcf = GetCamPos()
			workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Really red").Name)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
			workspace.CurrentCamera.CFrame = savedcamcf
			workspace.Remote.TeamEvent:FireServer("Medium stone grey")
		end
		StarterGui:SetCore("SendNotification", {
			Title = "Success";
			Text = "Respawned";
			Duration = 5;
		})
	end

	if Command("antifling") then
		StarterGui:SetCore("SendNotification", {
			Title = "Success";
			Text = "Turn anti fling on";
			Duration = 5;
		})
		States.Anti_Fling = true
		game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Size = Vector3.new(math.huge, game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Size.Y, math.huge)
	end

	if Command("noclip") then
		StarterGui:SetCore("SendNotification", {
			Title = "Success";
			Text = "Turn no clips on";
			Duration = 5;
		})
		States.Noclips = true

		game:GetService("RunService").Stepped:Connect(function()
			if States.Noclips then
				pcall(function()
					game.Players.LocalPlayer.Character:FindFirstChild("Head").CanCollide = false
					game.Players.LocalPlayer.Character:FindFirstChild("Torso").CanCollide = false
				end)
			end
		end)
	end

	if Command("unnoclip") then
		StarterGui:SetCore("SendNotification", {
			Title = "Success";
			Text = "Turn no clips off";
			Duration = 5;
		})
		States.Noclips = false
	end

	if Command("unantifling") then
		StarterGui:SetCore("SendNotification", {
			Title = "Success";
			Text = "Turn anti fling off";
			Duration = 5;
		})
		States.Anti_Fling = false
	end

	if Command("superpunch") or Command("onepunch") then
		local ReplicatedStorage = game:GetService("ReplicatedStorage")
		local MeleeEvent = ReplicatedStorage:FindFirstChild("meleeEvent")
		local Mouse = game.Players.LocalPlayer:GetMouse()
		local Punch = false
		local Cooldown = false
		States.SuperPunch = true
		StarterGui:SetCore("SendNotification", {
			Title = "Success";
			Text = "Turn super punch on";
			Duration = 5;
		})

		local function Punch()
			if not States.Fast_Punch then
				Cooldown = true
				local Part = Instance.new("Part", game.Players.LocalPlayer.Character)
				Part.Transparency = 1
				Part.Size = Vector3.new(5, 2, 3)
				Part.CanCollide = false
				local Weld = Instance.new("Weld", Part)
				Weld.Part0 = game.Players.LocalPlayer.Character.Torso
				Weld.Part1 = Part
				Weld.C1 = CFrame.new(0, 0, 2)
				Part.Touched:connect(function(Touch)
					if game.Players:FindFirstChild(Touch.Parent.Name) then
						local plr = game.Players:FindFirstChild(Touch.Parent.Name) 
						if plr.Name ~= game.Players.LocalPlayer.Name then
							Part:Destroy()
							for i = 1,100 do
								MeleeEvent:FireServer(plr)
							end
						end
					end
				end)
				wait(0.9)
				Cooldown = false
				Part:Destroy()
			else
				Cooldown = true
				local Part = Instance.new("Part", game.Players.LocalPlayer.Character)
				Part.Transparency = 1
				Part.Size = Vector3.new(5, 2, 3)
				Part.CanCollide = false
				local Weld = Instance.new("Weld", Part)
				Weld.Part0 = game.Players.LocalPlayer.Character.Torso
				Weld.Part1 = Part
				Weld.C1 = CFrame.new(0, 0, 2)
				Part.Touched:connect(function(Touch)
					if game.Players:FindFirstChild(Touch.Parent.Name) then
						local plr = game.Players:FindFirstChild(Touch.Parent.Name) 
						if plr.Name ~= game.Players.LocalPlayer.Name then
							Part:Destroy()
							for i = 1,100 do
								MeleeEvent:FireServer(plr)
							end
						end
					end
				end)
				wait(0.1)
				Cooldown = false
				Part:Destroy()
			end
		end
		Mouse.KeyDown:connect(function(Key)
			if not Cooldown and States.SuperPunch then
				if Key:lower() == "f" then
					Punch()
				end				
			end
		end)
	end

	if Command("normalpunch") then
		StarterGui:SetCore("SendNotification", {
			Title = "Success";
			Text = "Turn super punch off";
			Duration = 5;
		})
		States.SuperPunch = false
	end

	if Command("superknife") then
		local player = GetPlayer(Arg2)
		if player ~= nil and player ~= game.Players.LocalPlayer then
			local savedteam = game.Players.LocalPlayer.TeamColor.Name
			workspace.Remote.TeamEvent:FireServer("Bright orange")
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.single["Crude Knife"].ITEMPICKUP)
			local Item = game.Players.LocalPlayer:FindFirstChild("Backpack"):FindFirstChild("Crude Knife") or game.Players.LocalPlayer.Character:FindFirstChild("Crude Knife")
			local savedcf = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			UseCommand = true
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame
			local CHAR = game.Players.LocalPlayer.Character
			CHAR.Humanoid.Name = "1"
			local c = CHAR["1"]:Clone()
			c.Name = "Humanoid"
			c.Parent = CHAR
			CHAR["1"]:Destroy()
			game.Workspace.CurrentCamera.CameraSubject = CHAR
			CHAR.Animate.Disabled = true
			wait()
			CHAR.Animate.Disabled = false
			CHAR.Humanoid.DisplayDistanceType = "None"
			if not game.Players.LocalPlayer.Character:FindFirstChild(Item.Name) then
				Item.Parent = game.Players.LocalPlayer.Character
			end
			local STOP = 0
			repeat wait(.1)
				STOP = STOP + 1
				UseCommand = true
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = player.Character.Torso.CFrame * CFrame.new(0, 0, 0.75)
			until (not game.Players.LocalPlayer.Character:FindFirstChild(Item.Name) or not game.Players[player.Name] or not game.Players.LocalPlayer.Character or not game.Players.LocalPlayer.Character.HumanoidRootPart or STOP > 500)
			wait(.2)
			workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new(savedteam).Name)
			UseCommand = true
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
			SuperKnife[player.UserId] = {Player = player}
			player.CharacterAdded:Wait()
			SuperKnife[player.UserId] = nil
		elseif player == nil or player == game.Players.LocalPlayer then
			local Knife = game.Players.LocalPlayer.Backpack:FindFirstChild("Crude Knife") or game.Players.LocalPlayer.Character:FindFirstChild("Crude Knife")
			if not Knife then
				workspace.Remote.ItemHandler:InvokeServer(workspace["Prison_ITEMS"].single["Crude Knife"].ITEMPICKUP)
			end
			wait()
			Knife = game.Players.LocalPlayer.Backpack:FindFirstChild("Crude Knife") or game.Players.LocalPlayer.Character:FindFirstChild("Crude Knife")
			if Knife then
				local Cooldown = false
				local Hitting = false
				local Hitted = false
				Knife.Equipped:Connect(function()
					Knife.Activated:Connect(function()
						if not Cooldown then
							Cooldown = true
							Hitting = true
							for i,v in pairs(Knife:GetChildren()) do
								if v:IsA("Part") then
									v.Touched:Connect(function(Hit)
										if Hit and Hit.Parent ~= game.Players.LocalPlayer and not Hitted and Hitting then
											Hitted = true
											for i = 1,25 do
												game.ReplicatedStorage.meleeEvent:FireServer(game.Players[Hit.Parent.Name])
											end
										end
									end)
								end
							end
							wait(0.5)
							Cooldown = false
							Hitting = false
							Hitted = false
						end
					end)
				end)
			end
		end
		StarterGui:SetCore("SendNotification", {
			Title = "Success";
			Text = "Obtained super knife";
			Duration = 5;
		})
	end

	if Command("red") then
		local savedcf = GetPos()
		local savedcamcf = GetCamPos()
		workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Bright red").Name)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
		workspace.CurrentCamera.CFrame = savedcamcf
		StarterGui:SetCore("SendNotification", {
			Title = "Success";
			Text = "Changed name tag color to red";
			Duration = 5;
		})
	end

	if Command("blue") then
		local savedcf = GetPos()
		local savedcamcf = GetCamPos()
		workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Deep blue").Name)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
		workspace.CurrentCamera.CFrame = savedcamcf
		StarterGui:SetCore("SendNotification", {
			Title = "Success";
			Text = "Changed name tag color to blue";
			Duration = 5;
		})
	end

	if Command("white") then
		local savedcf = GetPos()
		local savedcamcf = GetCamPos()
		workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("White").Name)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
		workspace.CurrentCamera.CFrame = savedcamcf
		StarterGui:SetCore("SendNotification", {
			Title = "Success";
			Text = "Changed name tag color to white";
			Duration = 5;
		})
	end

	if Command("green") then
		local savedcf = GetPos()
		local savedcamcf = GetCamPos()
		workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Bright green").Name)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
		workspace.CurrentCamera.CFrame = savedcamcf
		StarterGui:SetCore("SendNotification", {
			Title = "Success";
			Text = "Changed name tag color to green";
			Duration = 5;
		})
	end

	if Command("yellow") then
		local savedcf = GetPos()
		local savedcamcf = GetCamPos()
		workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Bright yellow").Name)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
		workspace.CurrentCamera.CFrame = savedcamcf
		StarterGui:SetCore("SendNotification", {
			Title = "Success";
			Text = "Changed name tag color to yellow";
			Duration = 5;
		})
	end

	if Command("orange") then
		local savedcf = GetPos()
		local savedcamcf = GetCamPos()
		workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Neon orange").Name)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
		workspace.CurrentCamera.CFrame = savedcamcf
		StarterGui:SetCore("SendNotification", {
			Title = "Success";
			Text = "Changed name tag color to orange";
			Duration = 5;
		})
	end

	if Command("view") or Command("spectate") or Command("watch") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil then
			Watching = Player

			StarterGui:SetCore("SendNotification", {
				Title = "Success";
				Text = "Viewing "..Player.Name;
				Duration = 5;
			})
		else
			StarterGui:SetCore("SendNotification", {
				Title = "Error";
				Text = "No player found ";
				Duration = 5;
			})
		end
		while wait() do
			if Watching ~= nil then
				pcall(function()
					workspace.CurrentCamera.CameraSubject = workspace[Watching.Name]
				end)
			end
		end
	end

	if Command("unview") then
		StarterGui:SetCore("SendNotification", {
			Title = "Success";
			Text = "Unviewed";
			Duration = 5;
		})
		Watching = nil
		workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
	end

	if Command("antivoid") or Command("antifell") then
		StarterGui:SetCore("SendNotification", {
			Title = "Success";
			Text = "Turn anti void on";
			Duration = 5;
		})
		States.Anti_Void = true
	end

	if Command("unantivoid") or Command("unantifell") then
		StarterGui:SetCore("SendNotification", {
			Title = "Success";
			Text = "Turn anti void off";
			Duration = 5;
		})
		States.Anti_Void = false
	end

	if Command("bring") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil then
			Teleport(GetPlayer(Arg2), game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
			StarterGui:SetCore("SendNotification", {
				Title = "Success";
				Text = "Brought "..Player.Name;
				Duration = 5;
			})
			else
				StarterGui:SetCore("SendNotification", {
					Title = "Error";
					Text = "No player found";
					Duration = 5;
				})
		end
	end

	if Command("teleport") or Command("tp") then
		local Player = GetPlayer(Arg2)
		local Player2 = GetPlayer(Arg3)
		if Player ~= nil and Player2 ~= nil then
			TeleportV(Player, Player2)
			StarterGui:SetCore("SendNotification", {
				Title = "Success";
				Text = "Teleported "..Player.Name;
				Duration = 5;
			})
			else
				StarterGui:SetCore("SendNotification", {
					Title = "Error";
					Text = "No player found";
					Duration = 5;
				})
		end
	end

	if Command("void") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil then
			Void(Player)
			StarterGui:SetCore("SendNotification", {
				Title = "Success";
				Text = "Voided "..Player.Name;
				Duration = 5;
			})

			else
				StarterGui:SetCore("SendNotification", {
					Title = "Error";
					Text = "No player found";
					Duration = 5;
				})
		end
	end

	if Command("killaura") then
		StarterGui:SetCore("SendNotification", {
			Title = "Success";
			Text = "Turn kill aura on";
			Duration = 5;
		})
		States.Kill_Aura = true
	end

	if Command("unkillaura") then
		StarterGui:SetCore("SendNotification", {
			Title = "Success";
			Text = "Turn kill aura off";
			Duration = 5;
		})
		States.Kill_Aura = false
	end

	if Command("crashserver") or Command("server") then
		StarterGui:SetCore("SendNotification", {
			Title = "Success";
			Text = "Server crashed";
			Duration = 5;
		})
		local Gun = "Remington 870"
		local Player = game.Players.LocalPlayer.Name
		game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver[Gun].ITEMPICKUP)
		for i,v in pairs(game.Players[Player].Backpack:GetChildren()) do
			if v.name == (Gun) then
				v.Parent = game.Players.LocalPlayer.Character
			end
		end

		Gun = game.Players[Player].Character[Gun]

		game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):UnequipTools()

		function FireGun(target)
			coroutine.resume(coroutine.create(function()
				local bulletTable = {}
				table.insert(bulletTable, {
					Hit = target,
					Distance = 100,
					Cframe = CFrame.new(0,1,1),
					RayObject = Ray.new(Vector3.new(0.1,0.2), Vector3.new(0.3,0.4))
				})
				game.ReplicatedStorage.ShootEvent:FireServer(bulletTable, Gun)
				wait()
			end))
		end

		while game:GetService("RunService").Stepped:wait() do
			for count = 0, 10, 10 do
				FireGun()
			end
		end		
	end

	if Command("speed") or Command("walkspeed") or Command("setspeed") or Command("setwalkspeed") then
		local WalkSpeed = tonumber(Arg2)
		if WalkSpeed ~= nil then
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = WalkSpeed
			StarterGui:SetCore("SendNotification", {
				Title = "Success";
				Text = "Changed walkspeed";
				Duration = 5;
			})

		else
			StarterGui:SetCore("SendNotification", {
				Title = "Success";
				Text = "Count needed";
				Duration = 5;
			})
		end
	end

	if Command("jumppower") then
		local JumpPower = tonumber(Arg2)
		if JumpPower ~= nil then
			game.Players.LocalPlayer.Character.Humanoid.JumpPower = JumpPower
			StarterGui:SetCore("SendNotification", {
				Title = "Success";
				Text = "Changed jumppower";
				Duration = 5;
			})
		else
			StarterGui:SetCore("SendNotification", {
				Title = "Success";
				Text = "Count needed";
				Duration = 5;
			})
		end
	end

	if Command("lagserver") or Command("startlagserver") or Command("disconnect") then
		StarterGui:SetCore("SendNotification", {
			Title = "Success";
			Text = "Lagging server";
			Duration = 5;
		})
		States.Lag_Server = true
	end

	if Command("unlagserver") then
		StarterGui:SetCore("SendNotification", {
			Title = "Success";
			Text = "Unlagging server";
			Duration = 5;
		})
		States.Lag_Server = false
	end

	if Command("makecrim") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil then
			Teleport(Player, CFrame.new(-919, 96, 2138))
			StarterGui:SetCore("SendNotification", {
				Title = "Success";
				Text = "Crimmed "..player.Name;
				Duration = 5;
			})
		else
			StarterGui:SetCore("SendNotification", {
				Title = "Error";
				Text = "No player found";
				Duration = 5;
			})
		end
	end

	if Command("base") or Command("crimbase") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil then
			Teleport(Player, CFrame.new(-943, 95, 2055))
			StarterGui:SetCore("SendNotification", {
				Title = "Success";
				Text = "Teleported crimbase "..Player.Name;
				Duration = 5;
			})
		else
			StarterGui:SetCore("SendNotification", {
				Title = "Error";
				Text = "No player found";
				Duration = 5;
			})
		end
	end

	if Command("tower") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil then
			Teleport(Player, CFrame.new(822, 131, 2588))
			StarterGui:SetCore("SendNotification", {
				Title = "Success";
				Text = "Teleported tower "..Player.Name;
				Duration = 5;
			})
		else
			StarterGui:SetCore("SendNotification", {
				Title = "Error";
				Text = "No player found";
				Duration = 5;
			})
		end
	end

	if Command("gatetower") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil then
			Teleport(Player, CFrame.new(502, 126, 2306))
			StarterGui:SetCore("SendNotification", {
				Title = "Success";
				Text = "Teleported gatetower "..Player.Name;
				Duration = 5;
			})
		else
			StarterGui:SetCore("SendNotification", {
				Title = "Error";
				Text = "No player found";
				Duration = 5;
			})
		end
	end

	if Command("roof") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil then
			Teleport(Player, CFrame.new(833.423, 118.99, 2339.43))
			StarterGui:SetCore("SendNotification", {
				Title = "Success";
				Text = "Teleported roof "..Player.Name;
				Duration = 5;
			})
		else
			StarterGui:SetCore("SendNotification", {
				Title = "Error";
				Text = "No player found";
				Duration = 5;
			})
		end
	end

	if Command("prison") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil then
			Teleport(Player, CFrame.new(918.77,100,2379.07))
			StarterGui:SetCore("SendNotification", {
				Title = "Success";
				Text = "Teleported prison "..Player.Name;
				Duration = 5;
			})
		else
			StarterGui:SetCore("SendNotification", {
				Title = "Error";
				Text = "No player found";
				Duration = 5;
			})
		end
	end

	if Command("yard") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil then
			Teleport(Player, CFrame.new(791, 98, 2498))
			StarterGui:SetCore("SendNotification", {
				Title = "Success";
				Text = "Teleported yard "..Player.Name;
				Duration = 5;
			})
		else
			StarterGui:SetCore("SendNotification", {
				Title = "Error";
				Text = "No player found";
				Duration = 5;
			})
		end
	end

	if Command("trap") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil then
			Teleport(Player, CFrame.new(-342.985, 54.2398, 2015.41))
			StarterGui:SetCore("SendNotification", {
				Title = "Success";
				Text = "Teleported trap "..Player.Name;
				Duration = 5;
			})

		else
			StarterGui:SetCore("SendNotification", {
				Title = "Error";
				Text = "No player found";
				Duration = 5;
			})
		end
	end

	if Command("guardsroom") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil then
			Teleport(Player, CFrame.new(836.5386352539062, 99.98998260498047, 2320.604248046875))
			StarterGui:SetCore("SendNotification", {
				Title = "Success";
				Text = "Teleported guardsroom "..Player.Name;
				Duration = 5;
			})
		else
			StarterGui:SetCore("SendNotification", {
				Title = "Error";
				Text = "No player found";
				Duration = 5;
			})
		end
	end

	if Command("cafeteria") or Command("cafe") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil then
			Teleport(Player, CFrame.new(877, 100, 2256))
			StarterGui:SetCore("SendNotification", {
				Title = "Success";
				Text = "Teleported cafeteria "..Player.Name;
				Duration = 5;
			})

		else
			StarterGui:SetCore("SendNotification", {
				Title = "Error";
				Text = "No player found";
				Duration = 5;
			})
		end
	end

	if Command("leave") or Command("leaveserver") then
		StarterGui:SetCore("SendNotification", {
			Title = "Success";
			Text = "Leaving server";
			Duration = 5;
		})
		wait(.1)
		game:Shutdown()
	end

	if Command("rejoin") then
		StarterGui:SetCore("SendNotification", {
			Title = "Success";
			Text = "Rejoining server";
			Duration = 5;
		})
		game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
	end

	if Command("nodoors") or Command("deletedoors") or Command("removedoors") then
		StarterGui:SetCore("SendNotification", {
			Title = "Success";
			Text = "Deleted doors";
			Duration = 5;
		})
		if workspace:FindFirstChild("Doors") then
			workspace.Doors.Parent = game.Lighting
		end
	end

	if Command("doors") or Command("restoredoors") then
		StarterGui:SetCore("SendNotification", {
			Title = "Success";
			Text = "Restored doors";
			Duration = 5;
		})
		if game.Lighting:FindFirstChild("Doors") then
			game.Lighting.Doors.Parent = workspace
		end
	end

	if Command("nowalls") or Command("deletewalls") then
		StarterGui:SetCore("SendNotification", {
			Title = "Success";
			Text = "Deleted walls";
			Duration = 5;
		})
		pcall(function()
			for i,v in pairs(Walls) do
				v.Parent = game.Lighting
			end
		end)

	end

	if Command("walls") or Command("restorewalls") then
		StarterGui:SetCore("SendNotification", {
			Title = "Success";
			Text = "Restored walls";
			Duration = 5;
		})
		pcall(function()
			for i,v in pairs(game.Lighting:GetChildren()) do
				if v.Name ~= "Doors" then
					v.Parent = workspace
				end
			end
		end)
	end

	if Command("removefences") or Command("nofences") then
		StarterGui:SetCore("SendNotification", {
			Title = "Success";
			Text = "Deleted fences";
			Duration = 5;
		})
		if workspace:FindFirstChild("Prison_Fences") then
			workspace.Prison_Fences.Parent = game.Lighting
		end
	end

	if Command("fences") or Command("restorefences") then
		StarterGui:SetCore("SendNotification", {
			Title = "Success";
			Text = "Restored fences";
			Duration = 5;
		})
		if game.Lighting:FindFirstChild("Prison_Fences") then
			game.Lighting.Prison_Fences.Parent = workspace
		end
	end
	if Command("god") or Command("godmode") then
		StarterGui:SetCore("SendNotification", {
			Title = "Success";
			Text = "Turn god mode on";
			Duration = 5;
		})
		States.God_Mode = true
	end

	if Command("ungod") or Command("ungodmode") then
		StarterGui:SetCore("SendNotification", {
			Title = "Success";
			Text = "Turn god mode off";
			Duration = 5;
		})
		States.God_Mode = false
	end

	if Command("arrest") or Command("handcuffs") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil then
			Arrest(Player, tonumber(Arg3))
			StarterGui:SetCore("SendNotification", {
				Title = "Success";
				Text = "Arrested "..Player.Name;
				Duration = 5;
			})
		else
			StarterGui:SetCore("SendNotification", {
				Title = "Error";
				Text = "No player found ";
				Duration = 5;
			})
		end
	end

	if Command("arrestall") or Command("arrestother") or Command("arrestothers") then
		for i,v in pairs(game.Players:GetPlayers()) do
			if v ~= game.Players.LocalPlayer then
				if v.TeamColor.Name == "Really red" then
					Arrest(v, 10)
					StarterGui:SetCore("SendNotification", {
						Title = "Success";
						Text = "Arrested all criminals";
						Duration = 5;
					})
				end
			end
		end
	end

	if Command("click") or Command("clickarrest") then
		local mouse = game.Players.LocalPlayer:GetMouse()
		local arrestEvent = game.Workspace.Remote.arrest
		mouse.Button1Down:connect(function()
			local obj = mouse.Target
			local response = arrestEvent:InvokeServer(obj)
		end)
	end

	if Command("opengate") then
		StarterGui:SetCore("SendNotification", {
			Title = "Success";
			Text = "Opened gate";
			Duration = 5;
		})
		workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.buttons["Prison Gate"]["Prison Gate"])
	end

	if Command("autorapidfire") then
		States.Auto_RapidFire = true
		StarterGui:SetCore("SendNotification", {
			Title = "Success";
			Text = "Turn auto rapid fire on";
			Duration = 5;
		})
		if game.Players.LocalPlayer.TeamColor.Name ~= "Medium stone grey" then
			local savedcf = GetOrientation()
			local savedcamcf = GetCamPos()
			workspace.Remote.loadchar:InvokeServer()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
			workspace.CurrentCamera.CFrame = savedcamcf
		else
			local savedcf = GetOrientation()
			local savedcamcf = GetCamPos()
			workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Bright orange").Name)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
			workspace.CurrentCamera.CFrame = savedcamcf
			workspace.Remote.TeamEvent:FireServer("Medium stone grey")
		end
	end

	if Command("unautorapidfire") then
		States.Auto_RapidFire = false
		StarterGui:SetCore("SendNotification", {
			Title = "Success";
			Text = "Turn auto rapid fire off";
			Duration = 5;
		})
		if game.Players.LocalPlayer.TeamColor.Name ~= "Medium stone grey" then
			local savedcf = GetOrientation()
			local savedcamcf = GetCamPos()
			workspace.Remote.loadchar:InvokeServer()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
			workspace.CurrentCamera.CFrame = savedcamcf
		else
			local savedcf = GetOrientation()
			local savedcamcf = GetCamPos()
			workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Bright orange").Name)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
			workspace.CurrentCamera.CFrame = savedcamcf
			workspace.Remote.TeamEvent:FireServer("Medium stone grey")
		end
	end

	if Command("baseballbat") or Command("bat") then
		local LocalPlayer = game.Players.LocalPlayer
		local Character = LocalPlayer.Character
		local Backpack = LocalPlayer.Backpack
		local Humanoid = Character.Humanoid
		if not Backpack:FindFirstChild("Bat") and not Character:FindFirstChild("Bat") then
			local BaseBallBat = Instance.new("Tool", Backpack)
			local Handle = Instance.new("Part", BaseBallBat)
			BaseBallBat.GripPos = Vector3.new(0, -1.15, 0)
			BaseBallBat.Name = "Bat"
			Handle.Name = "Handle"
			Handle.Size = Vector3.new(0.4, 5, 0.4)
			local Animation =Instance.new("Animation", BaseBallBat)
			Animation.AnimationId = "rbxassetid://218504594"
			local Track = Humanoid:LoadAnimation(Animation)
			local Cooldown = false
			local Attacked = false
			local Attacking = false
			BaseBallBat.Equipped:Connect(function()
				BaseBallBat.Activated:Connect(function()
					if not Cooldown then
						Cooldown = true
						Attacking = true
						Track:Play()
						Handle.Touched:Connect(function(Hit)
							if Hit.Parent and Hit.Parent ~= game.Players.LocalPlayer and not Attacked and Attacking then
								Attacked = true
								for i = 1,15 do
									game.ReplicatedStorage.meleeEvent:FireServer(game.Players[Hit.Parent.Name])
								end
							end
						end)
						wait(0.25)
						Cooldown = false
						Attacked = false
						Attacking = false
					end
				end)
			end)
		end
		StarterGui:SetCore("SendNotification", {
			Title = "Success";
			Text = "Obtained base ball bat";
			Duration = 5;
		})
	end

	if Command("btools") then

		local Backpack = game.Players.LocalPlayer.Backpack
		local Character = game.Players.LocalPlayer.Character
		if not Backpack:FindFirstChild("Bin_1") and not Character:FindFirstChild("Bin_1") then
			local HopperBin_1 = Instance.new("HopperBin", Backpack)
			HopperBin_1.BinType = 1
			HopperBin_1.Name = "Bin_1"
		end

		if not Backpack:FindFirstChild("Bin_2") and not Character:FindFirstChild("Bin_2") then
			local HopperBin_2 = Instance.new("HopperBin", Backpack)
			HopperBin_2.BinType = 2
			HopperBin_2.Name = "Bin_2"
		end

		if not Backpack:FindFirstChild("Bin_3") and not Character:FindFirstChild("Bin_3") then
			local HopperBin_3 = Instance.new("HopperBin", Backpack)
			HopperBin_3.BinType = 3
			HopperBin_3.Name = "Bin_3"
		end

		if not Backpack:FindFirstChild("Bin_4") and not Character:FindFirstChild("Bin_4") then
			local HopperBin_4 = Instance.new("HopperBin", Backpack)
			HopperBin_4.BinType = 4
			HopperBin_4.Name = "Bin_4"
		end
		loadstring(game:GetObjects("rbxassetid://552440069")[1].Source)()
		StarterGui:SetCore("SendNotification", {
			Title = "Success";
			Text = "Obtained btools";
			Duration = 5;
		})
	end

	if Command("antilag") or Command("boostfps") then
		States.BoostFps = true
		StarterGui:SetCore("SendNotification", {
			Title = "Success";
			Text = "Turn anti lag on";
			Duration = 5;
		})
		for _, v in pairs(game:GetDescendants()) do
			pcall(function()
				v.Material = Enum.Material.Plastic
				Material[v.Name] = {Material = v.Material}
			end)
		end
	end

	if Command("unantilag") then
		States.BoostFps = false
		StarterGui:SetCore("SendNotification", {
			Title = "Success";
			Text = "Turn anti lag off";
			Duration = 5;
		})
		for _, v in pairs(game:GetDescendants()) do
			pcall(function()
				v.Material = Material[v.Name].Material
			end)
		end
	end

	if Command("serverhop") or Command("newserver") or Command("changeserver") then
		StarterGui:SetCore("SendNotification", {
			Title = "Success";
			Text = "Changing server";
			Duration = 5;
		})
		wait(.1)
		game:GetService("TeleportService"):Teleport(game.PlaceId)
	end

	if Command("outside") or Command("escape") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(288.452, 69.999, 2206.731)
	end

	if Command("cafeteria") or Command("cafe") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(877, 100, 2256)
	end
	if Command("kitchen") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(906.641845703125, 99.98993682861328, 2237.67333984375)
	end

	if Command("yard") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(791, 98, 2498)
	end

	if Command("armory+") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(403.426, 11.4254, 1174.49)
	end

	if Command("lakesidegrocer") or Command("lake") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(474.3, 11.4254, 1171)
	end

	if Command("crimbase") or Command("criminalbase") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-943, 95, 2055)
	end

	if Command("armory") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(835.28918457031, 99.990005493164, 2285.4909667969)
	end

	if Command("gate") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(505, 103, 2250)
	end

	if Command("roof") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(833.423, 118.99, 2339.43)
	end

	if Command("tower") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(822, 131, 2588)
	end

	if Command("gatetower") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(502, 126, 2306)
	end

	if Command("hallway") or Command ("way") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(860.78448486328, 99.990005493164, 2362.9597167969)
	end

	if Command("guardsroom") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(836.5386352539062, 99.98998260498047, 2320.604248046875)
	end

	if Command("surveilance") or Command("surve") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(795.251953125, 99.98998260498047, 2327.720703125)
	end

	if Command("sewer") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(917.174, 76.406, 2426.199)
	end

	if Command("cellblock") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(918.43115234375, 99.989990234375, 2440.3828125)
	end

	if Command("prison") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(918.77,100,2379.07)
	end

	if Command("trap") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-342.985, 54.2398, 2015.41)
	end

	if Command("voidall") then
		for i,v in pairs(game.Players:GetPlayers()) do
			if v ~= game.Players.LocalPlayer then
				Void(v)
			end
		end
	end

	if Command("notify") then
		States.Notify = true
	end

	if Command("nonotify") then
		States.Notify = false
	end

	if Command("cmd") then
		if Background.Visible == true then
			Background.Visible = false
		else
			Background.Visible = true
		end
	end
end

function AdminPlayerChatted(Message, Player)
	if ScriptDisabled then return end
	Split = Message:split(" ")
	Arg1 = Split[1]
	Arg2 = Split[2]
	Arg3 = Split[3]
	Arg4 = Split[4]
	UseCommand = true

	if Command("cafe") then
		Teleport(Player, CFrame.new(877, 100, 2256))
	end

	if Command("prison") then
		Teleport(Player, CFrame.new(918.77,100,2379.07))
	end

	if Command("HallWay") then
		Teleport(Player, CFrame.new(860.78448486328, 99.990005493164, 2362.9597167969))		
	end
	if Command("cellblock") then
		Teleport(Player, CFrame.new(918.43115234375, 99.989990234375, 2440.3828125))
	end

	if Command("armory") then
		Teleport(Player, CFrame.new(835.28918457031, 99.990005493164, 2285.4909667969))
	end

	if Command("tower") then
		Teleport(Player, CFrame.new(822, 131, 2588))
	end

	if Command("crimbase") or Command("criminalbase") then
		Teleport(Player, CFrame.new(-942, 94, 2055))
	end

	if Command("bring") then
		TeleportV(GetPlayer(Arg2), Player)
	end

	if Command("void") then
		Void(GetPlayer(Arg2))
	end
	if Command("beam") then
		Beam(GetPlayer(Arg2), math.huge, 1)
	end

	if Command("yard") then
		Teleport(Player, CFrame.new(791, 98, 2498))
	end

	if Command("prison") then
		Teleport(Player, CFrame.new(918.77,100,2379.07))	
	end 

	if Command("hallway") then
		Teleport(Player, CFrame.new(860.78448486328, 99.990005493164, 2362.9597167969))	
	end 

	if Command("killguard") or Command("killguards") then
		wait(.075)
		KillTeam(BrickColor.new("Bright blue").Name)
	end
	if Command("killinmate") or Command("killinmates") then
		wait(.075)
		KillTeam(BrickColor.new("Bright orange").Name)
	end
	if Command("killcriminal") or Command("killcriminals") then
		wait(.075)
		KillTeam(BrickColor.new("Really red").Name)
	end
	if Command("killall") or Command("killothers") then
		wait(.075)
		KillAll()
	end
	if Command("kill") or Command("kills") then
		Kill(GetPlayer(Arg2))
	end

	if Command("loopkill") or Command("loopkills") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil and not LoopKill[Player.UserId] then
			LoopKill[Player.UserId] = {Player = Player}
		end
	end

	if Command("unloopkill") or Command("unloopkills") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil and LoopKill[Player.UserId] then
			LoopKill[Player.UserId] = nil
		end
	end

	if Command("superknife") then
		local player = GetPlayer(Arg2)
		if player ~= nil then
			local savedteam = game.Players.LocalPlayer.TeamColor.Name
			workspace.Remote.TeamEvent:FireServer("Bright orange")
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.single["Crude Knife"].ITEMPICKUP)
			local Item = game.Players.LocalPlayer:FindFirstChild("Backpack"):FindFirstChild("Crude Knife") or game.Players.LocalPlayer.Character:FindFirstChild("Crude Knife")
			local savedcf = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			UseCommand = true
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame
			local CHAR = game.Players.LocalPlayer.Character
			CHAR.Humanoid.Name = "1"
			local c = CHAR["1"]:Clone()
			c.Name = "Humanoid"
			c.Parent = CHAR
			CHAR["1"]:Destroy()
			game.Workspace.CurrentCamera.CameraSubject = CHAR
			CHAR.Animate.Disabled = true
			wait()
			CHAR.Animate.Disabled = false
			CHAR.Humanoid.DisplayDistanceType = "None"
			if not game.Players.LocalPlayer.Character:FindFirstChild(Item.Name) then
				Item.Parent = game.Players.LocalPlayer.Character
			end
			local STOP = 0
			repeat wait(.1)
				STOP = STOP + 1
				UseCommand = true
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = player.Character.Torso.CFrame * CFrame.new(0, 0, 0.75)
			until (not game.Players.LocalPlayer.Character:FindFirstChild(Item.Name) or not game.Players[player.Name] or not game.Players.LocalPlayer.Character or not game.Players.LocalPlayer.Character.HumanoidRootPart or STOP > 500)
			wait(.2)
			workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new(savedteam).Name)
			UseCommand = true
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
			SuperKnife[player.UserId] = {Player = player}
			player.CharacterAdded:Wait()
			SuperKnife[player.UserId] = nil
		end
	end

	if Command("tase") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil then
			Tase(Player)
		end
	end

	if Command("taseall") then
		TaserAll()
	end

	if Command("makecrim") then
		Teleport(GetPlayer(Arg2), CFrame.new(-919, 96, 2138))
	end

	if Command("arrest") then
		Arrest(GetPlayer(Arg2))
	end

	if Command("crim") then
		Teleport(Player, CFrame.new(-919, 96, 2138))
	end

	if Command("goto") or Command("to") then
		TeleportV(Player, GetPlayer(Arg2))
	end

	if  Command("cmds") then
		Chat("/w "..Player.Name.." "..Prefix.."goto [plr] "..Prefix.."to [plr] "..Prefix.."kill [plr] "..Prefix.."kills [plr] "..Prefix.."makecrim [plr] "..Prefix.."arrest [plr] "..Prefix.."tase [plr] "..Prefix.."loopkill [plr] "..Prefix.."unloopkill [plr]")
		Chat("/w "..Player.Name.." "..Prefix.."crim "..Prefix.."tower "..Prefix.."nexus "..Prefix.."backnexus "..Prefix.."cafe "..Prefix.."armory "..Prefix.."bring [plr]")
		Chat("/w "..Player.Name.." "..Prefix.."killall "..Prefix.."killothers "..Prefix.."killinmate "..Prefix.."killinmates "..Prefix.."killguard "..Prefix.."killguards "..Prefix.."killcriminals "..Prefix.."killcriminal "..Prefix.."void [plr] "..Prefix.."taseall ")
		Chat("/w "..Player.Name.." "..Prefix.."spamarrest [plr] "..Prefix.."unspamarrest "..Prefix.."disconnect "..Prefix.." "..Prefix.."beam [plr] "..Prefix.."virus [plr] "..Prefix.."revirus [plr] "..Prefix.."killaura "..Prefix.."nokillaura")
		Chat("/w "..Player.Name.." "..Prefix.."cmd "..Prefix.."cmds")
	end
end

game.Players.LocalPlayer.Chatted:Connect(PlayerChatted)

game.Players.LocalPlayer.CharacterAdded:Connect(function()
	--[[game.Players.LocalPlayer.Character:WaitForChild("ClientInputHandler").Disabled = true
	game.Players.LocalPlayer.Character:WaitForChild("Humanoid").JumpPower = 55
	game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = 24]]
	wait(.2)
	if States.Anti_Taser then
		for i,v in pairs(tazePlayer) do
			v:Disable()
		end
	else
		for i,v in pairs(tazePlayer) do
			v:Enable()
		end
	end
end)

spawn(function()
	while wait(.2) do
		for i,v in pairs(game.Players:GetPlayers()) do
			pcall(function()
				if v ~= game.Players.LocalPlayer then
					for _,p in pairs(SuperKnife) do
						if p.Player and p.Player.Character:FindFirstChild("Crude Knife") and v ~= p.Player then
							if (p.Player.Character:FindFirstChild("Crude Knife"):FindFirstChildOfClass("Part").CFrame.p-v.Character:FindFirstChildOfClass("Part").CFrame.p).magnitude < 2 and v.Character.Humanoid.Health > 0 then
								Kill(v)
							end
						end
					end
				end
			end)
		end
	end
end)

game:GetService("RunService").Stepped:Connect(function()
	if States.Anti_Bring then
		pcall(function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
			game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
		end)
	end
end)

spawn(function()
	while wait() do
		pcall(function()
			getsenv(game.Players.LocalPlayer.Character.ClientInputHandler).cs.isRunning = false
			getsenv(game.Players.LocalPlayer.Character.ClientInputHandler).cs.isTazed = false
		end)
	end
end)

spawn(function()
	while wait(.5) do
		for i,v in pairs(LoopKill) do
			pcall(function()
				if v.Player and game.Players:FindFirstChild(v.Player.Name) and v.Player.Character and v.Player.Character.Humanoid.Health > 0 and not v.Player.Character:FindFirstChild("Force Field") then
					local events = {}
					local gun = nil
					workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
					for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
						if v.Name ~= "Taser" and v:FindFirstChild("GunStates") then
							gun = v
						end
					end
					if gun == nil then
						for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
							if v.Name ~= "Taser" and v:FindFirstChild("GunStates") then
								gun = v
							end
						end
					end
					coroutine.wrap(function()
						for i = 1,30 do
							game.ReplicatedStorage.ReloadEvent:FireServer(gun)
							wait(.5)
						end
					end)()
					for i = 1,5 do
						events[#events + 1] = {
							Hit = v.Player.Character:FindFirstChild("Head") or v.Player.Character:FindFirstChildOfClass("Part"),
							Cframe = CFrame.new(),
							RayObject = Ray.new(Vector3.new(), Vector3.new()),
							Distance = 0
						}
					end
					game.ReplicatedStorage.ShootEvent:FireServer(events, gun)
				end
			end)
		end
	end
end)

spawn(function()
	while wait() do
		for i,v in pairs(LoopBeam) do
			pcall(function()
				if v and v.Player and v.Player.Character and v.Player.Character.Head and v.Player.Character.HumanoidRootPart then
					Beam(v.Player, math.huge, 1)
				end
			end)
		end
	end
end)

spawn(function()
	while wait() do
		for i,v in pairs(game.Players:GetPlayers()) do
			if v ~= game.Players.LocalPlayer then
				pcall(function()
					for i = 1,2000 do
						coroutine.wrap(function()
							v.Character.Head:FindFirstChild("handcuffedGui"):Destroy()
						end)()
					end
				end)
			end
		end
	end
end)

spawn(function()
	while wait() do
		if States.Fast_Punch == true then
			pcall(function()
				getsenv(game.Players.LocalPlayer.Character.ClientInputHandler).cs.isFighting = false
			end)
		end
	end
end)

spawn(function()
	while wait(1) do
		if States.LoopKill_Guards then
			pcall(function()
				KillTeam(BrickColor.new("Bright blue").Name)
			end)
		end
	end
end)

spawn(function()
	local Killed = {}
	while wait(1) do
		pcall(function()
			for i,v in pairs(game.Players:GetPlayers()) do
				if v ~= game.Players.LocalPlayer then
					for _,p in pairs(KillAura) do
						if game.Players:FindFirstChild(p.Player.Name) then
							if (v.Character:FindFirstChildOfClass("Part").Position-p.Player.Character:FindFirstChildOfClass("Part").Position).Magnitude < 20 then
								if v.Character:FindFirstChild("Humanoid").Health > 0 and v ~= p.Player then
									Kill(v)
								end
							end
						end
					end
				end
			end
		end)
	end
end)

coroutine.wrap(function()
	while wait(1) do
		if States.Kill_Aura then
			for i,v in pairs(game.Players:GetPlayers()) do
				pcall(function()
					if v ~= game.Players.LocalPlayer then
						local Distance = (v.Character:FindFirstChildOfClass("Part").Position - game.Players.LocalPlayer.Character:FindFirstChildOfClass("Part").Position).magnitude
						if Distance < 25 and v.Character.Humanoid.Health > 0 then
							Kill(v)
						end
					end
				end)
			end
		end
	end
end)()

function CheckPermissions(Player)
	Player.Chatted:Connect(function(Message)
		if Admin[Player.UserId] then
			AdminPlayerChatted(Message, Player)
		end
	end)
end

game.Players.PlayerRemoving:Connect(function(Player)
	if States.Notify then
		game.StarterGui:SetCore("SendNotification", {
			Title = "Game",
			Text = Player.DisplayName.." Rage Quit",
			Icon = game.Players:GetUserThumbnailAsync(Player.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size352x352)
		})
	end
	if States.ChatNotify then
		Chat(Player.DisplayName.." Rage Quit")
	end
end)

game.Players.PlayerAdded:Connect(function(Player)
	if States.Notify then
		game.StarterGui:SetCore("SendNotification", {
			Title = "Game",
			Text = Player.DisplayName.." Joined",
			Icon = game.Players:GetUserThumbnailAsync(Player.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size352x352)
		})
	end
	if States.ChatNotify then
		Chat(Player.DisplayName.." Joined The Server")
	end
	CheckPermissions(Player)
	CopyChat(Player)
	Died(Player)
	PlayerPickUp(Player)
end)

for i,v in pairs(game.Players:GetPlayers()) do
	if v ~= game.Players.LocalPlayer then
		CheckPermissions(v)
		CopyChat(v)
		Died(v)
		PlayerPickUp(v)
	end
end

spawn(function()
	while wait() do
		if States.Lag_Server then
			coroutine.wrap(function()
				pcall(function()
					workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)

					local Gun = game.Players.LocalPlayer.Backpack["Remington 870"] or game.Players.LocalPlayer.Character["Remington 870"]

					local args = {
						[1] = {
							["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
							["Distance"] = 0, 
							["Cframe"] = CFrame.new(), 
							["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
						}, [2] = {
							["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
							["Distance"] = 0, 
							["Cframe"] = CFrame.new(), 
							["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
						}, [3] = {
							["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
							["Distance"] = 0, 
							["Cframe"] = CFrame.new(), 
							["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
						}, [4] = {
							["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
							["Distance"] = 0, 
							["Cframe"] = CFrame.new(), 
							["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
						}, [5] = {
							["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
							["Distance"] = 0, 
							["Cframe"] = CFrame.new(), 
							["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
						}, [6] = {
							["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
							["Distance"] = 0, 
							["Cframe"] = CFrame.new(), 
							["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
						}, [7] = {
							["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
							["Distance"] = 0, 
							["Cframe"] = CFrame.new(), 
							["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
						}, [8] = {
							["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
							["Distance"] = 0, 
							["Cframe"] = CFrame.new(), 
							["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
						}
					}

					game:GetService("ReplicatedStorage").ShootEvent:FireServer(args, Gun)
				end)
			end)()
		end
	end
end)

spawn(function()
	while wait() do
		if States.Disconnect then
			coroutine.wrap(function()
				pcall(function()
					workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)

					local Gun = game.Players.LocalPlayer.Backpack["Remington 870"] or game.Players.LocalPlayer.Character["Remington 870"]

					local args = {
						[1] = {
							["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
							["Distance"] = 0, 
							["Cframe"] = CFrame.new(), 
							["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
						}, [2] = {
							["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
							["Distance"] = 0, 
							["Cframe"] = CFrame.new(), 
							["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
						}, [3] = {
							["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
							["Distance"] = 0, 
							["Cframe"] = CFrame.new(), 
							["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
						}, [4] = {
							["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
							["Distance"] = 0, 
							["Cframe"] = CFrame.new(), 
							["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
						}, [5] = {
							["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
							["Distance"] = 0, 
							["Cframe"] = CFrame.new(), 
							["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
						}, [6] = {
							["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
							["Distance"] = 0, 
							["Cframe"] = CFrame.new(), 
							["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
						}, [7] = {
							["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
							["Distance"] = 0, 
							["Cframe"] = CFrame.new(), 
							["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
						}, [8] = {
							["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
							["Distance"] = 0, 
							["Cframe"] = CFrame.new(), 
							["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
						}
					}

					game:GetService("ReplicatedStorage").ShootEvent:FireServer(args, Gun)
				end)
			end)()
		end
	end
end)

game.Players.LocalPlayer.CharacterAdded:Connect(function()
	States.CAN = false
end)

spawn(function()
	while wait() do
		if Watching ~= nil then
			pcall(function()
				workspace.CurrentCamera.CameraSubject = workspace[Watching.Name]
			end)
		end
	end
end)

spawn(function()
	while wait() do
		if States.BoostFps then
			for i,v in pairs(game.Players:GetChildren()) do
				if v ~= game.Players.LocalPlayer then
					pcall(function()
						if v.Character.Humanoid.Health < 1 then
							v.Character:Destroy()
						end
					end)
				end
			end
		end
	end
end)

spawn(function()
	while wait() do
		if States.SpamChat then
			wait(States.Spam_Wait)
			pcall(function()
				Chat(States.MessagesToChat[math.random(1, #States.MessagesToChat)])
			end)
		end
	end
end)

spawn(function()
	while wait() do
		if States.Anti_Spam_Arrest then
			pcall(function()
				if game.Players.LocalPlayer.TeamColor.Name == "Really red" then
					workspace.Remote.loadchar:InvokeServer(nil, BrickColor.random().Name)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(888, 100, 2388)
				end
				if game.Players.LocalPlayer.Character.Head:FindFirstChild("handucffedGui") then
					workspace.Remote.loadchar:InvokeServer(nil, BrickColor.random().Name)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(888, 100, 2388)
				end
			end)
		end
	end
end)

spawn(function()
	while wait() do
		if States.God_Mode then
			game.Players.LocalPlayer.Character.Humanoid.Name = 1
			local l = game.Players.LocalPlayer.Character["1"]:Clone()
			l.Parent = game.Players.LocalPlayer.Character
			l.Name = "Humanoid"
			game.Players.LocalPlayer.Character.Animate.Disabled = true
			wait()
			game.Players.LocalPlayer.Character.Animate.Disabled = false
			game.Players.LocalPlayer.Character["1"]:Destroy()
			game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
			game.Players.LocalPlayer.CharacterRemoving:Wait()
			local savedcf = GetPos()
			local savedcamcf = GetCamPos()
			local savedteam = GetTeam()
			workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new(savedteam).Name)
			workspace.CurrentCamera.CFrame = savedcamcf
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
		end
	end
end)

spawn(function()
	while wait() do
		if States.Auto_Refresh == true then
			pcall(function()
				if game.Players.LocalPlayer.Character.Humanoid.Health < 1 then
					if game.Players.LocalPlayer:FindFirstChild("PlayerGui"):FindFirstChild("Home").hud.Topbar.titleBar.Title.Text ~= "Lights out" then
						if game.Players.LocalPlayer.TeamColor.Name ~= "Medium stone grey" then
							if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
								local savedcf = GetOrientation()
								local savedcamcf = GetCamPos()
								workspace.Remote.loadchar:InvokeServer()
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
								workspace.CurrentCamera.CFrame = savedcamcf
							end
						else
							if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
								local savedcf = GetOrientation()
								local savedcamcf = GetCamPos()
								workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Bright orange").Name)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
								workspace.CurrentCamera.CFrame = savedcamcf
								workspace.Remote.TeamEvent:FireServer("Medium stone grey")
							end
						end
					else
						if game.Players.LocalPlayer.TeamColor.Name ~= "Medium stone grey" then
							if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
								local savedcf = GetOrientation()
								local savedcamcf = GetCamPos()
								workspace.Remote.loadchar:InvokeServer()
								wait(.075)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
								workspace.CurrentCamera.CFrame = savedcamcf
							end
						else
							if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
								local savedcf = GetOrientation()
								local savedcamcf = GetCamPos()
								workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Bright orange").Name)
								wait(.075)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
								workspace.CurrentCamera.CFrame = savedcamcf
								workspace.Remote.TeamEvent:FireServer("Medium stone grey")
							end
						end
					end
				end
			end)
		end
	end
end)

spawn(function()
	game.Players.LocalPlayer.CharacterAdded:Connect(function()
		game.Players.LocalPlayer.Character.ChildAdded:Connect(function(Item)
			if States.Auto_RapidFire then
				local Tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
				local Name
				local Req
				if Tool then
					States.CAN = true
					Name = Tool.Name
					if Tool:FindFirstChild("GunStates") then
						Req = require(Tool.GunStates)
						Req["MaxAmmo"] = Req["MaxAmmo"]
						Req["StoredAmmo"] = Req["StoredAmmo"]
						Req["AmmoPerClip"] = Req["AmmoPerClip"]
						Req["CurrentAmmo"] = Req["CurrentAmmo"]
						Req["FireRate"] = -math.huge
						Req["Bullets"] = 25
						Req["Range"] = math.huge
						Req["Damage"] = math.huge
						Req["ReloadTime"] = -math.huge
						Req["AutoFire"] = true
					end
				end
				while wait() do
					pcall(function()
						if game.Players.LocalPlayer.Character:FindFirstChild(Name) and States.CAN then
							if Req["CurrentAmmo"] < 1 then
								Tool:Destroy()
								workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver[Name].ITEMPICKUP)
								Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(Name)
								if Tool then
									Name = Tool.Name
									Tool.Parent = game.Players.LocalPlayer.Character
									Tool = game.Players.LocalPlayer.Character[Name]
									Req = require(Tool.GunStates)
									Req["MaxAmmo"] = Req["MaxAmmo"]
									Req["StoredAmmo"] = Req["StoredAmmo"]
									Req["AmmoPerClip"] = Req["AmmoPerClip"]
									Req["CurrentAmmo"] = Req["CurrentAmmo"]
									Req["FireRate"] = -math.huge
									Req["Bullets"] = 25
									Req["Range"] = math.huge
									Req["Damage"] = math.huge
									Req["ReloadTime"] = -math.huge
									Req["AutoFire"] = true
								end
							end
						end
					end)
				end
			end
		end)
	end)
end)

spawn(function()
	while wait() do
		if States.Anti_Crash then
			for i,v in pairs(game.Players:GetPlayers()) do
				for i = 1,25 do
					coroutine.wrap(function()
						pcall(function()
							v.Character.vest:Destroy()
						end)
					end)()
				end
			end
		end
	end
end)

spawn(function()
	while wait() do
		for i,v in pairs(game.Players:GetPlayers()) do
			pcall(function()
				if workspace[v.Name].Torso:FindFirstChild("ShieldFolder") then
					workspace[v.Name].Torso:FindFirstChild("ShieldFolder"):Destroy()
				end
			end)
		end
	end
end)

spawn(function()
	while wait() do
		if States.Anti_Void then
			pcall(function()
				if game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y < 1 then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(888, 100, 2388)
				end
			end)
		end
	end
end)

spawn(function()
	while wait(.75) do
		if States.LoopKill_Others then
			pcall(function()
				KillAll()
			end)
		end
	end
end)

spawn(function()
	while wait(1) do
		if States.LoopKill_Inmates then
			pcall(function()
				KillTeam(BrickColor.new("Bright orange").Name)
			end)
		end
	end
end)

spawn(function()
	while wait(1) do
		if States.LoopKill_Criminals then
			pcall(function()
				KillTeam(BrickColor.new("Really red").Name)
			end)
		end
	end
end)

game.Players.LocalPlayer.CharacterAdded:Connect(function(Character)
	if States.Anti_Fling then
		pcall(function()
			game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Size = Vector3.new(math.huge, game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Size.Y, math.huge)
		end)
	end
end)

local CurrentVirusPlayer = #Virus

FindCmd.Changed:Connect(function()
	if FindCmd.Text ~= "" then
		for i,v in pairs(CmdHandler:GetChildren()) do
			if v:IsA("TextButton") then
				if not string.lower(v.Text):match(string.lower(FindCmd.Text)) then
					v.Parent = Background
					v.Visible = false
				end
			end
		end
		for i,v in pairs(Background:GetChildren()) do
			if v.Name == "COMMANDS" then
				if string.lower(v.Text):match(string.lower(FindCmd.Text)) then
					v.Parent = CmdHandler
					v.Visible = true
				end
			end
		end
	elseif FindCmd.Text == "" and (#CmdHandler:GetChildren()-1) ~= #Cmd  then
		for i,v in pairs(CmdHandler:GetChildren()) do
			if v:IsA("TextButton") then
				v:Destroy()
			end
		end
		for i,v in pairs(Background:GetChildren()) do
			if v.Name == "COMMANDS" then
				v:Destroy()
			end
		end
		for i = 1,#Cmd do
			local clone = CmdText:Clone()
			clone.Text = Cmd[i].Text
			clone.Name = "COMMANDS"
			local Ins = Instance.new("StringValue", clone)
			Ins.Name = "Title"
			Ins.Value = Cmd[i].Title
			local Ins2 = Instance.new("StringValue", clone)
			Ins2.Name = "TopbarName"
			Ins2.Value = Cmd[i].Text:split(" ")[1]
			clone.Parent = CmdHandler
			clone.MouseButton1Click:Connect(function()
				Execute:CaptureFocus()
				Execute.Text = clone.Text:split(" ")[1]
				Execute.CursorPosition = #Execute.Text + 1
			end)
		end
	end
end)

game.Players.PlayerAdded:Connect(function()
	for i,v in pairs(game.Players:GetPlayers()) do
		if v.TeamColor.Name == "Bright orange" then
			v.CharacterAdded:Connect(function()
				if States.Esp_Inmates then
					Unesp(v)
					Esp(v)
				end
			end)
		end
		if v.TeamColor.Name == "Really red" then
			v.CharacterAdded:Connect(function()
				if States.Esp_Criminals then
					Unesp(v)
					Esp(v)
				end
			end)
		end
		if v.TeamColor.Name == "Bright blue" then
			v.CharacterAdded:Connect(function()
				if States.Esp_Guards then
					Unesp(v)
					Esp(v)
				end
			end)
		end
		if v.TeamColor.Name == "Medium stone grey" then
			v.CharacterAdded:Connect(function()
				if States.Esp_Neutral then
					Unesp(v)
					Esp(v)
				end
			end)
		end
		if v.TeamColor.Name ~= "Medium stone grey" and v.TeamColor.Name ~= "Bright blue" and v.TeamColor.Name ~= "Bright orange" and v.TeamColor.Name ~= "Really red" then
			v.CharacterAdded:Connect(function()
				if States.Esp_All then
					Unesp(v)
					Esp(v)
				end
			end)
		end
	end
end)

game.Players.PlayerRemoving:Connect(function(Player)
	Unesp(Player)
end)

spawn(function()
	local Killed = {}
	while wait(.2) do
		pcall(function()
			for i,v in pairs(game.Players:GetPlayers()) do
				if v ~= game.Players.LocalPlayer then
					for _,p in pairs(Virus) do
						if game.Players:FindFirstChild(p.Player.Name) then
							if (v.Character:FindFirstChildOfClass("Part").Position-p.Player.Character:FindFirstChildOfClass("Part").Position).Magnitude < 4 then
								if v.Character:FindFirstChild("Humanoid").Health > 0 and v ~= p.Player then
									Kill(v)
								end
							end
						end
					end
				end
			end
		end)
	end
end)

local KeyWDowned = false
local KeyADowned = false
local KeySDowned = false
local KeyDDowned = false
local KeySpaceDowned = false

Mouse.KeyDown:Connect(function(key)
	if key == "w" then
		KeyWDowned = true
	elseif key == "a" then
		KeyADowned = true
	elseif key == "s" then
		KeySDowned = true
	elseif key == "d" then
		KeyDDowned = true
	end
end)

Mouse.KeyUp:Connect(function(key)
	if key == "w" then
		KeyWDowned = false
	elseif key == "a" then
		KeyADowned = false
	elseif key == "s" then
		KeySDowned = false
	elseif key == "d" then
		KeyDDowned = false
	end
end)

game:GetService("UserInputService").InputBegan:Connect(function(key)
	if key.KeyCode == Enum.KeyCode.Space then
		KeySpaceDowned = true
	end
end)

local Old_Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
local Old_CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

spawn(function()
	while wait() do
		if States.Anti_Bring then
			pcall(function()
				if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Old_Position).magnitude > 6 and not UseCommand then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Old_CFrame
				elseif UseCommand then
					wait(.1)
					UseCommand = false
					Old_Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
					Old_CFrame = GetOrientation()
				end
				if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Old_Position).magnitude < 6 and not UseCommand then
					Old_Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
					Old_CFrame = GetOrientation()
				end
			end)
		end
	end
end)

game.Players.LocalPlayer.CharacterAdded:Connect(function()
	if States.Auto_Guns then
		pcall(function()
			if BuyGamepass then
				workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
				workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M4A1"].ITEMPICKUP)
				workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
				workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
			else
				workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
				workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
				workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
			end
		end)
	end
end)

game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(Key)
	if Key == Prefix then
		if Prefix ~= ":" then
			Execute:CaptureFocus()
		end
	end
end)

Execute.FocusLost:Connect(function(FocusLost)
	if FocusLost then
		if Execute.Text:sub(1,#Prefix) ~= Prefix then
			PlayerChatted(Prefix..Execute.Text)
		else
			PlayerChatted(Execute.Text)
		end
	end
end)

getgenv().DisableScript = function()
	pcall(function()
		CmdGui:Destroy()
		States = {}
		LoopKill = {}
		LoopTase = {}
		Admin = {}
		ScriptDisabled = true
		for i,v in pairs(game.Lighting:GetChildren()) do
			v.Parent = workspace
		end
	end)
end

workspace.Remote.loadchar:InvokeServer()
game.Workspace["Criminals Spawn"]:Destroy()
workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Deep blue").Name)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(918.77,100,2379.07)
States.Auto_Refresh = true
States.Auto_Guns = true
States.Fast_Punch = true
workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
