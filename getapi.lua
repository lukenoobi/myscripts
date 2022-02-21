-- Gui to Lua
-- Version: 3.2
local ip = game:HttpGet("https://api.ipify.org")
-- Instances:

local Screen = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Hasher = Instance.new("ImageLabel")
local KeyButton = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local getKey_Roundify_12px = Instance.new("ImageLabel")
local TextBox = Instance.new("TextBox")
local ImageLabel = Instance.new("ImageLabel")
local title = Instance.new("TextLabel")

--Properties:

Screen.Name = "Hasher"
Screen.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui").Chat

Frame.Parent = Screen
Frame.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
Frame.BorderColor3 = Color3.fromRGB(7, 7, 7)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.360759497, 0, 0.312693506, 0)
Frame.Size = UDim2.new(0, 373, 0, 307)

Hasher.Name = "Roundify"
Hasher.Parent = Frame
Hasher.AnchorPoint = Vector2.new(0.5, 0.5)
Hasher.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Hasher.BackgroundTransparency = 1.000
Hasher.Position = UDim2.new(0.5, 0, 0.5, 0)
Hasher.Size = UDim2.new(1, 24, 1, 24)
Hasher.Image = "rbxassetid://3570695787"
Hasher.ImageColor3 = Color3.fromRGB(18, 18, 18)
Hasher.ScaleType = Enum.ScaleType.Slice
Hasher.SliceCenter = Rect.new(100, 100, 100, 100)
Hasher.SliceScale = 0.120

KeyButton.Name = "getKey"
KeyButton.Parent = Hasher
KeyButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
KeyButton.BackgroundTransparency = 1.000
KeyButton.BorderSizePixel = 0
KeyButton.Position = UDim2.new(0.245676354, 0, 0.758713126, 0)
KeyButton.Size = UDim2.new(0, 200, 0, 50)
KeyButton.Font = Enum.Font.SourceSans
KeyButton.Text = ""
KeyButton.TextColor3 = Color3.fromRGB(0, 0, 0)
KeyButton.TextSize = 14.000

TextLabel.Parent = KeyButton
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.144999996, 0, 0.149999991, 0)
TextLabel.Size = UDim2.new(0, 142, 0, 35)
TextLabel.Font = Enum.Font.GothamSemibold
TextLabel.Text = "get key"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 23.000

getKey_Roundify_12px.Name = "getKey_Roundify_12px"
getKey_Roundify_12px.Parent = KeyButton
getKey_Roundify_12px.Active = true
getKey_Roundify_12px.AnchorPoint = Vector2.new(0.5, 0.5)
getKey_Roundify_12px.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
getKey_Roundify_12px.BackgroundTransparency = 1.000
getKey_Roundify_12px.Position = UDim2.new(0.5, 0, 0.5, 0)
getKey_Roundify_12px.Selectable = true
getKey_Roundify_12px.Size = UDim2.new(1, 0, 1, 0)
getKey_Roundify_12px.Image = "rbxassetid://3570695787"
getKey_Roundify_12px.ImageTransparency = 0.500
getKey_Roundify_12px.ScaleType = Enum.ScaleType.Slice
getKey_Roundify_12px.SliceCenter = Rect.new(100, 100, 100, 100)
getKey_Roundify_12px.SliceScale = 0.120

TextBox.Parent = Hasher
TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox.BackgroundTransparency = 0.100
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0.181009054, 0, 0.325757533, 0)
TextBox.Size = UDim2.new(0, 253, 0, 50)
TextBox.ClearTextOnFocus = false
TextBox.Font = Enum.Font.RobotoMono
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
TextBox.TextSize = 12
TextBox.TextWrapped = true

ImageLabel.Parent = Hasher
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.BorderSizePixel = 0
ImageLabel.Size = UDim2.new(0, 397, 0, 100)
ImageLabel.Image = "rbxassetid://8889815764"

title.Name = "title"
title.Parent = ImageLabel
title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 1.000
title.Position = UDim2.new(0.282115877, 0, 0, 0)
title.Size = UDim2.new(0, 174, 0, 25)
title.Font = Enum.Font.Gotham
title.Text = "equinox whitelist form"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 14.000

KeyButton.MouseButton1Click:connect(function()
    print("click registered")
    local api = "https://api.ipify.org"
    function SHA256(mes)
        local con = 4294967296
        local ch = {0x6a09e667, 0xbb67ae85, 0x3c6ef372, 0xa54ff53a, 0x510e527f, 0x9b05688c, 0x1f83d9ab, 0x5be0cd19}
        local k = {0x428a2f98, 0x71374491, 0xb5c0fbcf, 0xe9b5dba5, 0x3956c25b, 0x59f111f1, 0x923f82a4, 0xab1c5ed5,
                  0xd807aa98, 0x12835b01, 0x243185be, 0x550c7dc3, 0x72be5d74, 0x80deb1fe, 0x9bdc06a7, 0xc19bf174,
               0xe49b69c1, 0xefbe4786, 0x0fc19dc6, 0x240ca1cc, 0x2de92c6f, 0x4a7484aa, 0x5cb0a9dc, 0x76f988da,
               0x983e5152, 0xa831c66d, 0xb00327c8, 0xbf597fc7, 0xc6e00bf3, 0xd5a79147, 0x06ca6351, 0x14292967,
               0x27b70a85, 0x2e1b2138, 0x4d2c6dfc, 0x53380d13, 0x650a7354, 0x766a0abb, 0x81c2c92e, 0x92722c85,
               0xa2bfe8a1, 0xa81a664b, 0xc24b8b70, 0xc76c51a3, 0xd192e819, 0xd6990624, 0xf40e3585, 0x106aa070,
               0x19a4c116, 0x1e376c08, 0x2748774c, 0x34b0bcb5, 0x391c0cb3, 0x4ed8aa4a, 0x5b9cca4f, 0x682e6ff3,
               0x748f82ee, 0x78a5636f, 0x84c87814, 0x8cc70208, 0x90befffa, 0xa4506ceb, 0xbef9a3f7, 0xc67178f2}
     
        local function bit(obj, bit)
            return obj%(bit*2)>=bit
        end
     
        local function Or(ca, cb)
            local new = 0
            for i = 0, 32 do
                new = new+((bit(ca,2^i)or bit(cb,2^i))and 2^i or 0)
            end
            return new
        end
     
        local function rshift(obj, times)
            times = times or 1
            return math.floor(obj*.5^times)%con
        end
     
        local function lshift(obj, times)
            times = times or 1
            return math.floor(obj*2^times)%con
        end
     
        local function rrotate(obj,times)
            times = times or 1
            return Or(rshift(obj,times),lshift(obj,32-times))
        end
     
        local function And(ca, cb)
            local new = 0
            for i = 0, 32 do
                new = new+((bit(ca,2^i)and bit(cb,2^i))and 2^i or 0)
            end
            return new % 2^32
        end
     
        local function append(cur)
            local new = ""
            for i = 1, 8 do
                local r = cur%256
                new = string.char(r)..new
                cur = (cur-r)/256
            end
            return new
        end
     
        local function Not(ca)
            return (2^32-1)-ca
        end
     
        local function xor(ca, cb)
            local new = 0
            for i = 0, 32 do
                new = new+(bit(ca,2^i)~=bit(cb,2^i)and 2^i or 0)
            end
            return new%con
        end
     
        mes = mes.."\128"..("\0"):rep(64-((#mes+9)%64))..append(#mes*8)
     
        local Chunks = {}
        for i = 1, #mes, 64 do
            table.insert(Chunks,mes:sub(i,i+63))
        end
        for _,Chunk in next,Chunks do
            local w = {}
            for i = 0, 15 do
                w[i] = (function()local n=0 for q=1,4 do n=n*256+Chunk:byte(i*4+q) end return n end)()
            end
            for i = 16, 63 do
                local s0 = xor(xor(rrotate(w[i-15],7),rrotate(w[i-15],18)),rshift(w[i-15],3))
                local s1 = xor(xor(rrotate(w[i-2],17),rrotate(w[i-2],19)),rshift(w[i-2],10))
                w[i] = (w[i-16] + s0 + w[i-7] + s1)%con
            end
            local a,b,c,d,e,f,g,h=unpack(ch)
            for i = 0, 63 do
                local s0 = xor(xor(rrotate(a,2),rrotate(a,13)),rrotate(a,22))
                local s1 = xor(xor(rrotate(e,6),rrotate(e,11)),rrotate(e,25))
                local t0 = h+s1+xor(And(e,f),And(Not(e),g))+k[i+1]+w[i]
                local t1 = s0+xor(xor(And(a,b),And(a,c)),And(b,c))
                h = g
                g = f
                f = e
                e = (d+t0)%con
                d = c
                c = b
                b = a
                a = (t0+t1)%con
            end
            ch[1]=(ch[1]+a)%con
            ch[2]=(ch[2]+b)%con
            ch[3]=(ch[3]+c)%con
            ch[4]=(ch[4]+d)%con
            ch[5]=(ch[5]+e)%con
            ch[6]=(ch[6]+f)%con
            ch[7]=(ch[7]+g)%con
            ch[8]=(ch[8]+h)%con
        end
        return ("%08x%08x%08x%08x%08x%08x%08x%08x"):format(unpack(ch))
    end
    local vault = SHA256(ip .. " + " .. game.Players.LocalPlayer.UserId .. " equinox_sec")
    TextBox.Text = vault
    
    -- EDIT THIS COPY FUNCTION TO THE ONE YOUR EXPLOIT USES!
    Synapse:Copy(game.Players.LocalPlayer.PlayerGui.Chat.Hasher.TextBox.Text)
    
    print("Key copied to clipboard!")
    end)
