local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Gamer144 KeySystem", HidePremium = false, SaveConfig = true, IntroEnabled = True, IntroText = "Please Getkey"})

OrionLib:MakeNotification({
	Name = "Gamer144!",
	Content = "Welcome To Gamer144 Hub",
	Image = "",
	Time = 5
})

_G.KeyInput = "string"

function keydung()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Gamer144roblox/Gamer144-hub-v2/main/Gamer144"))()
end

function kdtb()
	OrionLib:MakeNotification({
		Name = "Correct Key!",
		Content = "You Has been Entered Correct Key",
		Image = "",
		Time = 5
	})
end	

function kstb()
OrionLib:MakeNotification({
	Name = "Incorrect Key!",
	Content = "You has been Entered Incorrect Key",
	Image = "rbxassetid://4483345998",
	Time = 5
})
end

function sck()
	OrionLib:MakeNotification({
		Name = "Copy Success!",
		Content = "you has been copy get key link",
		Image = "rbxassetid://4483345998",
		Time = 5
	})
end

local Tab = Window:MakeTab({
	Name = "KeySystem",
	Icon = "",
	PremiumOnly = false
})

Tab:AddTextbox({
	Name = "Key Input",
	Default = "",
	TextDisappear = false,
	Callback = function(Value)
		_G.KeyInput = Value
	end	  
})

Tab:AddButton({
	Name = "Check Key",
	Callback = function()
        if _G.KeyInput == _G.Key then
            keydung()
			kdtb()
		elif _G.KeyInput == "Gw861" then
			keydung()
			kdtb()
		elif _G.KeyInput == 82585 then
			keydung()
			kdtb()
		elif _G.KeyInput == 87629 then
			keydung()
			kdtb()
		elif _G.KeyInput == 967296 then
			keydung()
			kdtb()
		else
			kstb()
        end
  	end    
})

Tab:AddButton({
	Name = "GetKey",
	Callback = function()
      		local textToCopy = _G.GetKey
			MouseButton1Click:Connect(function()	
			    GuiService.Clipboard = textToCopy
			    print("Đã copy vào clipboard: " .. textToCopy)
				sck()
            end)
  	end    
})

local in4 = Window:MakeTab({
	Name = "In4",
	
