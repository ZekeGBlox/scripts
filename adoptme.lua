
    
    local Toggles = {
        BabyAutoFarm = false,
        AutoPayCheck =false,
        HealOthers = false,
        InstantTradeBadge = false
    }
    
    lib=loadstring(game:HttpGet("https://raw.githubusercontent.com/ZekeGBlox/scripts/main/Loader")()
    local win = lib:CreateWindow("Bacon hub | Adopt Me!", Vector2.new(492, 598), Enum.KeyCode.RightShift)
    
    
    
    local tab2 = win:CreateTab("Auto Farm")
    local tab3 = win:CreateTab("Teleports")
    local tab1 = win:CreateTab('Misc')
    local sector2 = tab2:CreateSector("Main Functions","left")
    local sector3 = tab2:CreateSector("Buy Eggs","right")
    local sector4 = tab3:CreateSector("Misc","left")
    local sector1 = tab1:CreateSector("Universal","left")
    local Utils = {}
    local Players = game:GetService("Players")
    local LocalPlayer = Players.LocalPlayer
    firsttime = true
    
    
    
    
    
    
    
    sector1:AddSlider("Walkspeed",16,16,300,1,function(a)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = a
    end)
    
    sector1:AddSlider("Jumppower",50,50,500,1,function(a)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = a
    end)
    
    
    sector1:AddKeybind("Fly", Enum.KeyCode.F, function(newkey) 
        print(newkey)
    end, function()
    if flying == false then 
    local plr = game.Players.LocalPlayer
    local mouse = plr:GetMouse()
    localplayer = plr
    if workspace:FindFirstChild("Core") then
    workspace.Core:Destroy()
    end
    local Core = Instance.new("Part")
    Core.Name = "Core"
    Core.Size = Vector3.new(0.05, 0.05, 0.05)
    spawn(function()
    Core.Parent = workspace
    local Weld = Instance.new("Weld", Core)
    Weld.Part0 = Core
    Weld.Part1 = localplayer.Character.LowerTorso
    Weld.C0 = CFrame.new(0, 0, 0)
    end)
    workspace:WaitForChild("Core")
    local torso = workspace.Core
    flying = true
    local speed=10 
    local keys={a=false,d=false,w=false,s=false}
    local e1
    local e2
    local function start()
    local pos = Instance.new("BodyPosition",torso)
    local gyro = Instance.new("BodyGyro",torso)
    pos.Name="EPIXPOS"
    pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
    pos.position = torso.Position
    gyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)
    gyro.cframe = torso.CFrame
    repeat
    wait()
    localplayer.Character.Humanoid.PlatformStand=true
    local new=gyro.cframe - gyro.cframe.p + pos.position
    if not keys.w and not keys.s and not keys.a and not keys.d then
    speed=5
    end
    if keys.w then
    new = new + workspace.CurrentCamera.CoordinateFrame.lookVector * speed
    speed=speed+0
    end
    if keys.s then
    new = new - workspace.CurrentCamera.CoordinateFrame.lookVector * speed
    speed=speed+0
    end
    if keys.d then
    new = new * CFrame.new(speed,0,0)
    speed=speed+0
    end
    if keys.a then
    new = new * CFrame.new(-speed,0,0)
    speed=speed+0
    end
    if speed>10 then
    speed=5
    end
    pos.position=new.p
    if keys.w then
    gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(-math.rad(speed*0),0,0)
    elseif keys.s then
    gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(math.rad(speed*0),0,0)
    else
    gyro.cframe = workspace.CurrentCamera.CoordinateFrame
    end
    until flying == false
    if gyro then gyro:Destroy() end
    if pos then pos:Destroy() end
    flying=false
    localplayer.Character.Humanoid.PlatformStand=false
    speed=10
    end
    e1=mouse.KeyDown:connect(function(key)
    if not torso or not torso.Parent then flying=true e1:disconnect() e2:disconnect() return end
    if key=="w" then
    keys.w=true
    elseif key=="s" then
    keys.s=true
    elseif key=="a" then
    keys.a=true
    elseif key=="d" then
    keys.d=true
    end
    end)
    e2=mouse.KeyUp:connect(function(key)
    if key=="w" then
    keys.w=false
    elseif key=="s" then
    keys.s=false
    elseif key=="a" then
    keys.a=false
    elseif key=="d" then
    keys.d=false
    end
    end)
    start()
    else
    flying = false
    end
    end)
    
    sector1:AddButton("Reset",function()
    game.Players.LocalPlayer.Character["Humanoid"]:Destroy()
    end)
    
    sector1:AddButton("Rejoin",function()
    game:GetService'TeleportService':TeleportToPlaceInstance(game.PlaceId,game.JobId,game:GetService"Players".LocalPlayer)
    end)
    
    sector2:AddLabel("Must Be Baby")
    sector2:AddToggle("BabyAutoFarm",false,function(a)
        Toggles.BabyAutoFarm = a
    end)
    spawn(function()
        while wait (0.3) do
            pcall(function()
                if Toggles.BabyAutoFarm == true then
    local args = {
        [1] = "sleepy",
        [2] = 1
    }
    
    game:GetService("ReplicatedStorage").API:FindFirstChild("MonitorAPI/AddAdditive"):FireServer(unpack(args))
    
    local args = {
        [1] = "dirty",
        [2] = 1
    }
    
    game:GetService("ReplicatedStorage").API:FindFirstChild("MonitorAPI/AddAdditive"):FireServer(unpack(args))
    
    
    local args = {
        [1] = "thirsty",
        [2] = 1
    }
    
    game:GetService("ReplicatedStorage").API:FindFirstChild("MonitorAPI/AddAdditive"):FireServer(unpack(args))
    
    local args = {
        [1] = "bored",
        [2] = 1
    }
    
    game:GetService("ReplicatedStorage").API:FindFirstChild("MonitorAPI/AddAdditive"):FireServer(unpack(args))
    
    
    local args = {
        [1] = "camping",
        [2] = 1
    }
    
    game:GetService("ReplicatedStorage").API:FindFirstChild("MonitorAPI/AddAdditive"):FireServer(unpack(args))
    
    local args = {
        [1] = "hungry",
        [2] = 1
    }
    
    game:GetService("ReplicatedStorage").API:FindFirstChild("MonitorAPI/AddAdditive"):FireServer(unpack(args))
    
    local args = {
        [1] = "sick",
        [2] = 1
    }
    
    game:GetService("ReplicatedStorage").API:FindFirstChild("MonitorAPI/AddAdditive"):FireServer(unpack(args))
    
    local args = {
        [1] = "school",
        [2] = 1
    }
    
    game:GetService("ReplicatedStorage").API:FindFirstChild("MonitorAPI/AddAdditive"):FireServer(unpack(args))
    
    local args = {
        [1] = "hot_spring",
        [2] = 1
    }
    
    game:GetService("ReplicatedStorage").API:FindFirstChild("MonitorAPI/AddAdditive"):FireServer(unpack(args))
    
    end end) end end)
    
    
    sector2:AddToggle("AutoPayCheck",false,function(a)
        Toggles.AutoPayCheck = a
    end)
    spawn(function()
        while wait (3) do
            pcall(function()
                if Toggles.AutoPayCheck == true then
    game:GetService("ReplicatedStorage").API:FindFirstChild("PayAPI/CashOut"):InvokeServer()
    end end) end end)
    
    sector2:AddToggle("HealOthers",false,function(a)
        Toggles.HealOthers = a
    end)
    spawn(function()
        while wait (3) do
        pcall(function()
            if Toggles.HealOthers == true then
    game:GetService("ReplicatedStorage").API:FindFirstChild("MonitorAPI/HealWithDoctor"):FireServer()
    end end) end end)
    
    sector2:AddButton("Become Baby",function()
         local args = {
        [1] = "Babies",
        [2] = true
    }
     
    game:GetService("ReplicatedStorage").API["TeamAPI/ChooseTeam"]:InvokeServer(unpack(args))
    end)
    sector2:AddButton("Free PopCorn",function()
    local args = {
        [1] = "food",
        [2] = "popcorn_vip",
        [3] = {}
    }
    
    game:GetService("ReplicatedStorage").API:FindFirstChild("ShopAPI/BuyItem"):InvokeServer(unpack(args))
    end)
    
    sector2:AddButton("Free MilkShake",function()
    local args = {
        [1] = "food",
        [2] = "chocolate_milk_vip",
        [3] = {}
    }
    
    game:GetService("ReplicatedStorage").API:FindFirstChild("ShopAPI/BuyItem"):InvokeServer(unpack(args))
    end)
    
    sector3:AddButton("Buy Mythic Egg",function()
        local args = {
       [1] = "pets",
       [2] = "Mythic_egg",
       [3] = {}
    }
    game:GetService("ReplicatedStorage").API["ShopAPI/BuyItem"]:InvokeServer(unpack(args))
    end)
    
    sector3:AddButton("Buy Cracked Egg",function()
        local args = {
       [1] = "pets",
       [2] = "cracked_egg",
       [3] = {}
    }
    game:GetService("ReplicatedStorage").API["ShopAPI/BuyItem"]:InvokeServer(unpack(args))
    end)
    
    sector3:AddButton("Buy Normal Egg",function()
        local args = {
       [1] = "pets",
       [2] = "regular_pet_egg",
       [3] = {}
    }
    game:GetService("ReplicatedStorage").API["ShopAPI/BuyItem"]:InvokeServer(unpack(args))
    end)
    
    sector3:AddButton("Buy Royal Egg",function()
        local args = {
       [1] = "pets",
       [2] = "royal_egg",
       [3] = {}
    }
    game:GetService("ReplicatedStorage").API["ShopAPI/BuyItem"]:InvokeServer(unpack(args))
    end)
    
    sector4:AddButton("Get Badges",function()
        local args = {
        [1] = "miniworld"
    }
    game:GetService("ReplicatedStorage").API["MinigameAPI/FinishObby"]:FireServer(unpack(args))
    wait(0.5)
    local args = {
        [1] = "coastal_climb"
    }
    game:GetService("ReplicatedStorage").API["MinigameAPI/FinishObby"]:FireServer(unpack(args))
    wait(0.5)
    local args = {
        [1] = "shipwreck_bay"
    }
    game:GetService("ReplicatedStorage").API["MinigameAPI/FinishObby"]:FireServer(unpack(args))
    wait(0.5)
    local args = {
        [1] = "ancient_ruins"
    }
    game:GetService("ReplicatedStorage").API["MinigameAPI/FinishObby"]:FireServer(unpack(args))
    wait(0.5)
    local args = {
        [1] = "lonelypeak"
    }
    game:GetService("ReplicatedStorage").API["MinigameAPI/FinishObby"]:FireServer(unpack(args))
    wait(0.5)
    local args = {
        [1] = "pyramid"
    }
    game:GetService("ReplicatedStorage").API["MinigameAPI/FinishObby"]:FireServer(unpack(args))
    wait(0.5)
    local args = {
        [1] = "tinyisles"
    }
    game:GetService("ReplicatedStorage").API["MinigameAPI/FinishObby"]:FireServer(unpack(args)) 
    end)
    
    
    sector4:AddToggle("InstantTradeBadge",false,function(a)
        Toggles.InstantTradeBadge = a 
    end)
        spawn(function()
        while wait(0.5) do
            pcall(function()
                if Toggles.InstantTradeBadge == true then
        local args = {
            [1] = "has_talked_to_trade_quest_npc",
            [2] = true
        }
        
        game:GetService("ReplicatedStorage").API["SettingsAPI/SetBooleanFlag"]:FireServer(unpack(args))  
        local ags = {
            [1] = "TradeLicenseZone"
        }
        
        game:GetService("ReplicatedStorage").API["LocationAPI/SetLocation"]:FireServer(unpack(args)) 
        game:GetService("ReplicatedStorage").API["TradeAPI/BeginQuiz"]:FireServer() 
        
        local args = {
            [1] = "not safe"
        }
        
        game:GetService("ReplicatedStorage").API["TradeAPI/AnswerQuizQuestion"]:FireServer(unpack(args)) 
            local args = {
            [1] = "safe"
        }
        
        game:GetService("ReplicatedStorage").API["TradeAPI/AnswerQuizQuestion"]:FireServer(unpack(args))  
        local args = {
            [1] = "not safe"
        }
        
        game:GetService("ReplicatedStorage").API["TradeAPI/AnswerQuizQuestion"]:FireServer(unpack(args)) 
        game:GetService("ReplicatedStorage").API["TradeAPI/EndQuiz"]:FireServer() 
        end end) end end)
    
 
    
    local vu = game:GetService("VirtualUser")
    game:GetService("Players").LocalPlayer.Idled:connect(function()
       vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
       wait(1)
       vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    end)
    firsttime = false
end
