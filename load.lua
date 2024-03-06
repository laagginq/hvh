game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Alysum", -- Required
	Text = "Old Loader Detected Please use >script to get new loader", -- Required
})
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Alysum", -- Required
	Text = "Script will still load in 5 seconds", -- Required
})
task.wait(5)
loadstring(game:HttpGet("https://raw.githubusercontent.com/laagginq/Alysum/main/loader"))()
