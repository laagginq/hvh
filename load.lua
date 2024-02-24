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

local Login = Instance.new("ScreenGui")
local Holder = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Close = Instance.new("TextButton")
local KeyInput = Instance.new("Frame")
local Input = Instance.new("TextBox")
local Login_2 = Instance.new("TextButton")

Login.Name = "Login"
Login.Parent = game.CoreGui
Login.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Holder.Name = "Holder"
Holder.Parent = Login
Holder.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
Holder.BorderColor3 = Color3.fromRGB(111, 50, 168)
Holder.Position = UDim2.new(0.344531238, 0, 0.346367627, 0)
Holder.Size = UDim2.new(0, 366, 0, 118)

Title.Name = "Title"
Title.Parent = Holder
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderSizePixel = 0
Title.Size = UDim2.new(0, 367, 0, 27)
Title.Font = Enum.Font.Code
Title.Text = " hvh.lua | Login"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 14.000
Title.TextXAlignment = Enum.TextXAlignment.Left

Close.Name = "Close"
Close.Parent = Holder
Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Close.BackgroundTransparency = 1.000
Close.BorderColor3 = Color3.fromRGB(0, 0, 0)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.925545454, 0, 0, 0)
Close.Size = UDim2.new(0, 27, 0, 27)
Close.Font = Enum.Font.Ubuntu
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(255, 255, 255)
Close.TextSize = 20.000

KeyInput.Name = "KeyInput"
KeyInput.Parent = Holder
KeyInput.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
KeyInput.BorderColor3 = Color3.fromRGB(111, 50, 168)
KeyInput.Position = UDim2.new(0.0983606577, 0, 0.246289268, 0)
KeyInput.Size = UDim2.new(0, 294, 0, 23)

Input.Name = "Input"
Input.Parent = KeyInput
Input.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Input.BackgroundTransparency = 1.000
Input.BorderColor3 = Color3.fromRGB(0, 0, 0)
Input.BorderSizePixel = 0
Input.Position = UDim2.new(0.0238095243, 0, 0, 0)
Input.Size = UDim2.new(0, 287, 0, 23)
Input.Font = Enum.Font.Code
Input.PlaceholderText = "Enter key here..."
Input.Text = readfile("hvh/key.txt")
Input.TextColor3 = Color3.fromRGB(255, 255, 255)
Input.TextSize = 14.000
Input.TextXAlignment = Enum.TextXAlignment.Left

Login_2.Name = "Login"
Login_2.Parent = Holder
Login_2.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
Login_2.BorderColor3 = Color3.fromRGB(111, 50, 168)
Login_2.Position = UDim2.new(0.0983606577, 0, 0.542372882, 0)
Login_2.Size = UDim2.new(0, 294, 0, 23)
Login_2.Font = Enum.Font.Code
Login_2.Text = "Login"
Login_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Login_2.TextSize = 14.000

Login_2.MouseButton1Click:Connect(function()
	Login:Destroy()
	local key = tostring(Input.Text)
	writefile("hvh/key.txt",key)
	script_key = key;
	loadstring(game:HttpGet("https://raw.githubusercontent.com/laagginq/hvh/main/src.lua"))()
end)
