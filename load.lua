-- hvh.lua


if _G.hvhLoaded then 
    return
else
    _G.hvhLoaded = true
end

if not isfolder("hvh") then 
    makefolder("hvh")
end

if not isfile("hvh/key.txt") then
    writefile("hvh/key.txt","")
end


local hvhlua_loader = Instance.new("ScreenGui")
local Holder = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local KeyboxBack = Instance.new("Frame")
local KeyBox = Instance.new("TextBox")
local Button = Instance.new("TextButton")

hvhlua_loader.Name = "hvh.lua_loader"
hvhlua_loader.Parent = game.CoreGui
hvhlua_loader.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Holder.Name = "Holder"
Holder.Parent = hvhlua_loader
Holder.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
Holder.BorderColor3 = Color3.fromRGB(0, 0, 0)
Holder.BorderSizePixel = 0
Holder.Position = UDim2.new(0.37500006, 0, 0.456757218, 0)
Holder.Size = UDim2.new(0.248437494, 0, 0.139560789, 0)

Title.Name = "Title"
Title.Parent = Holder
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderSizePixel = 0
Title.Size = UDim2.new(1, 0, 0.298970908, 0)
Title.Font = Enum.Font.Unknown
Title.Text = "hvh.lua login"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 18.000

KeyboxBack.Name = "KeyboxBack"
KeyboxBack.Parent = Holder
KeyboxBack.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
KeyboxBack.BorderColor3 = Color3.fromRGB(0, 0, 0)
KeyboxBack.BorderSizePixel = 0
KeyboxBack.Position = UDim2.new(0.034591388, 0, 0.291545302, 0)
KeyboxBack.Size = UDim2.new(0.933962286, 0, 0.209279642, 0)

KeyBox.Name = "KeyBox"
KeyBox.Parent = KeyboxBack
KeyBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
KeyBox.BackgroundTransparency = 1.000
KeyBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
KeyBox.BorderSizePixel = 0
KeyBox.Position = UDim2.new(0.0235690232, 0, 0, 0)
KeyBox.Size = UDim2.new(0.976430953, 0, 1, 0)
KeyBox.Font = Enum.Font.Ubuntu
KeyBox.PlaceholderText = "Enter your key here..."
KeyBox.Text = readfile("hvh/key.txt")
KeyBox.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyBox.TextSize = 14.000
KeyBox.TextXAlignment = Enum.TextXAlignment.Left

Button.Name = "Button"
Button.Parent = Holder
Button.Active = false
Button.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
Button.BorderSizePixel = 0
Button.Position = UDim2.new(0.351067126, 0, 0.647561371, 0)
Button.Selectable = false
Button.Size = UDim2.new(0.298742145, 0, 0.209279642, 0)
Button.Font = Enum.Font.Ubuntu
Button.Text = "Login"
Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Button.TextSize = 14.000

Button.MouseButton1Click:Connect(function()
    hvhlua_loader:Destroy()
    local key = tostring(KeyBox.Text)
    writefile("hvh/key.txt",key)
    script_key = key;
    loadstring(game:HttpGet("https://raw.githubusercontent.com/laagginq/hvh/main/src.lua"))()
end)
