local rs = game:GetService("RunService")
local uis = game:GetService("UserInputService")

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local oghbx = 2
local oghby = 4.75
local oghbz = 2

local main = Library.CreateLib("LFL Fucker")

local HitboxTab = main:NewTab("Hitbox")
local OtherTab = main:NewTab("Other")

local TogUI = OtherTab:NewSection("Toggle UI")
TogUI:NewKeybind("Toggle UI", "Toggles the UI", Enum.KeyCode.F, function()
	Library:ToggleUI()
end)

local credstab = main:NewTab("Credits")
local credsec = credstab:NewSection("Credits")
credsec:NewLabel("Made by ! luke#8318")

local HBSection = HitboxTab:NewSection("Hitbox Editor")

-- HBSECTION FUNCTIONS
function ApplyHB(x,y,z,t)
	for i,v in next, game:GetService('Players'):GetChildren() do
		if v.Name ~= game:GetService('Players').LocalPlayer.Name then
			local hb = v.Character:FindFirstChild('Hitbox')
			local hbsize1 = x
			local hbsize2 = y
			local hbsize3 = z
			if hb then
				hb.Size = Vector3.new(hbsize1, hbsize2, hbsize3)
				hb.Transparency = t
			end
		end
	end
end

local editList = {}
local HBx = 2
local HBy = 4.75
local HBz = 2
local HBt = 0.5

HBSection:NewToggle("Enable", "Enables Hitbox Editor", function(state)
	if state then
		editList = {}
		editLoop = rs.RenderStepped:Connect(function()
			for i,v in pairs(editList) do
				v:Remove()
			end
			
			ApplyHB(HBx,HBy,HBz,HBt)
			end)
	else
		editLoop:Disconnect()
		for i,v in pairs(editList) do
			v:Remove()
		end
		ApplyHB(2,4.75,2,1)
	end
end)

HBSection:NewSlider("Hitbox Size X", "", 25, 0, function(state) HBx = state end)
HBSection:NewSlider("Hitbox Size Y", "", 25, 0, function(state) HBy = state end)
HBSection:NewSlider("Hitbox Size Z", "", 25, 0, function(state) HBz = state end)
HBSection:NewSlider("Transparency", "", 100, 0, function(s) HBt = s/100 end)
