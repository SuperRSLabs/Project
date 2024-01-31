local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local icons = {
    ["Orion icon"] = "rbxassetid://4483345998",
    ["Nev Icon"] = "rbxassetid://6034227139",
    ["Warn Icon"] = "rbxassetid://6031071053",
    ["Error Icon"] = "rbxassetid://7734053281",
    ["Success Icon"] = "rbxassetid://7733710700",
    ["Credits Icon"] = "rbxassetid://7733765398",
    ["Bell Icon"] = "rbxassetid://7733675275",
    ["Player Scripts Icon"] = "rbxassetid://7733752575",
    ["Universal Scripts Icon"] = "rbxassetid://7733920768",
    ["Scripts Icon"] = "rbxassetid://7733749837",
}

local function notif(title, content, icon, time)
    OrionLib:MakeNotification({
        Name = title,
        Content = content,
        Image = icon,
        Time = time
    })
end

local function runscript(url)
    loadstring(game:HttpGet(url))()
end

local function runscript2(url)
    loadstring(game:HttpGet(url,true))()
end

local function label(parent, text)
    parent:AddLabel(text)
end

local function AddScriptButtonExecuter(parent, text, url)
    parent:AddButton({
        Name = text,
        Callback = function()
                runscript(url)
        end    
    })
end

local function AddScriptButtonExecuter2(parent, text, url)
    parent:AddButton({
        Name = text,
        Callback = function()
                runscript2(url)
        end    
    })
end

local function addTab(name, icon, premium)
    local Tab = Window:MakeTab({
        Name = name,
        Icon = icon,
        PremiumOnly = premium
    })
end
