game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-547.482239, 173.374954, -0.0784880966)
wait(1)
StandOwner = getgenv().LynixSettings.Owner
Pos = getgenv().LynixSettings.Position
CrewID = getgenv().LynixSettings.CrewID
Attack = getgenv().LynixSettings.Attack
StandMode = getgenv().LynixSettings.StandMode
FlyMode = getgenv().LynixSettings.FlyMode
Prediction = getgenv().LynixSettings.Prediction
gunkillprediction = getgenv().LynixSettings.GunPrediction
CustomName = getgenv().LynixSettings.CustomName
AutoMask = getgenv().LynixSettings.AutoMask
ChatCmds = getgenv().LynixSettings.ChatCmds
AttackMode = getgenv().LynixSettings.AttackMode
GunMode = getgenv().LynixSettings.GunMode
SummonPose = getgenv().LynixSettings.SummonPose
PosingType = getgenv().LynixSettings.Posing
Hidescreen = getgenv().LynixSettings.Hidescreen
Smoothing = getgenv().LynixSettings.Smoothing
Sounds = getgenv().LynixSettings.Sounds
SummonMusic = getgenv().LynixSettings.SummonMusic
VanishAppear = getgenv().LynixSettings.VanishAppearSound
CustomSong = getgenv().LynixSettings.CustomSong
resolve = getgenv().LynixSettings.Resolver
Bind = getgenv().LynixSettings.AntiStomp
Fpscap = getgenv().LynixSettings.FPSCAP
lowgraphics = getgenv().LynixSettings.LowGraphics
Alt = getgenv().LynixSettings.Alt
getgenv().__ = 'Lynix'
getgenv().___ = 'Ticxyy'
getgenv().ScriptName = 'Lynix Stand Beta Ofc'
local ScriptName = getgenv().ScriptName
getgenv().StandLoaded = true
STAND = game:GetService('Players'):FindFirstChild(game:GetService('Players').LocalPlayer.Name)
OWNER = game:GetService("Players"):FindFirstChild(StandOwner)
rs = game:GetService("RunService")
loadstring(game:HttpGet("https://raw.githubusercontent.com/zeziiiii/stnada/main/create.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/zeziiiii/stnada/main/bypass.lua"))()
ANIMATION()
getRoot(STAND).CFrame=CFrame.new(-547.482239, 173.374954, -0.0784880966)
if tonumber(Fpscap) then
_G.FPS = Fpscap
local clock = tick()
_G.fps = true 
rs.Stepped:connect(function()
if _G.fps == true then
while clock + 1 / _G.FPS > tick() do end
wait()
clock = tick()
end
end)
end
local Noclip = Instance.new("Part",game.Workspace)
Noclip.Name = "Noclip"
Noclip.Transparency = 1
Noclip.Anchored = true
Noclip.Size = Vector3.new(6,1,6)
if lowgraphics == true then
local decalsyeeted = true -- Leaving this on makes games look shitty but the fps goes up by at least 20.
local g = game
local w = g.Workspace
local l = g.Lighting
local t = w.Terrain
t.WaterWaveSize = 0
t.WaterWaveSpeed = 0
t.WaterReflectance = 0
t.WaterTransparency = 0
l.GlobalShadows = false
l.FogEnd = 9e9
l.Brightness = 0
settings().Rendering.QualityLevel = "Level01"
for i, v in pairs(g:GetDescendants()) do
if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
v.Material = "Plastic"
v.Reflectance = 0
elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
v.Transparency = 1
elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
v.Lifetime = NumberRange.new(0)
elseif v:IsA("Explosion") then
v.BlastPressure = 1
v.BlastRadius = 1
elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
v.Enabled = false
elseif v:IsA("MeshPart") then
v.Material = "Plastic"
v.Reflectance = 0
v.TextureID = 10385902758728957
end
end
for i, e in pairs(l:GetChildren()) do
if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
e.Enabled = false
end
end
print("Low Graphics Enabled!")
end
--local
local delta = 0
local duration = 0.7
local StopHoverAnim = false
local Move = 0
local reversing = false
local StudLimit = 75
function Stop()
    getHumanoid(STAND):UnequipTools()
    Knockyes = false
    StopHoverAnim = false
    follow = false
    looking = false
    noclip = false
    vanish = false
    bring = false
    Knocked = false
    Kills = false
    StompTarget = false
    circle = false
    Arrest = false
    Frame = false
    knifenear = false
    killnear = false
    Viewing = false
    barragepos = false
    barragepunch = false
    mimicpunch = false
    block = false
    mimic = false
    GunKnock = false
    GunStomp = false
    Strafe = false
    Locking = false
    ORA = false
    Stab = false
    Line = false
    Stabbing = false
    AutoWeight = false
    Annoy = false
    KnifeKills = false
    KnifeAnnoy = false
    autodrop = false
    lettucefarm = false
    Glitch = false
    SMITE = false
    Bagging = false
    Sneak = false
    boxing = false
    gunnear = false
    game.RunService:UnbindFromRenderStep("FOG")
    if STAND.Character.Head:FindFirstChildWhichIsA("BodyVelocity") then STAND.Character.Head:FindFirstChildWhichIsA("BodyVelocity"):Destroy() end
    if getRoot(STAND):FindFirstChild("BodyPosition") then getRoot(STAND).BodyPosition:Destroy()end
    if getRoot(STAND):FindFirstChild("BodyGyro") then getRoot(STAND).BodyGyro:Destroy()end
end
Stop()

function Crew(Join)
if Join == true then
game.ReplicatedStorage.MainEvent:FireServer("JoinCrew",CrewID)wait(1)game.ReplicatedStorage.MainEvent:FireServer("JoinCrew",CrewID)else game.ReplicatedStorage.MainEvent:FireServer("LeaveCrew")end end
function Dweld()
local Stuff = {
"RightHand",
"LeftHand",
"RightFoot",
"LeftFoot",
"Head"}
pcall(function()
for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
for z, BreakingStuff in ipairs(Stuff) do
if v.Name == BreakingStuff then
if v:FindFirstChildOfClass("Motor6D") then
local Weld = v:FindFirstChildOfClass("Motor6D")
Weld:Destroy()
end
end
end
end
end)
end

function Bring(Target)
Stop()
bring = true
noclip = true
if KO(TARGET).Value == false then
game.Workspace.Camera.CameraSubject = getHumanoid(STAND)
repeat rs.Stepped:Wait()
if KO(TARGET).Value == false then
Hit(true)
TargetMalee(Target)
game.Workspace.Camera.CameraSubject = getRoot(TARGET)
end
until KO(TARGET).Value == true or bring == false
repeat rs.Stepped:Wait()
getRoot(STAND).CFrame = getRoot(TARGET).CFrame*CFrame.new(0,300,0)
until Attacking(STAND).Value == false
if Alt == false then
repeat rs.Stepped:Wait()
if KO(TARGET).Value == true then
getRoot(STAND).CFrame = CFrame.new(getTorso(TARGET).Position)*CFrame.new(0,5,0)
wait(.2)
game.ReplicatedStorage.MainEvent:FireServer("Grabbing")
wait(.5)
getRoot(STAND).CFrame = OWNER.Character:FindFirstChild('HumanoidRootPart').CFrame*CFrame.new(0,5,0)
end
until KO(TARGET).Value == false or bring == false
end
Summon()
else
if Alt == false then
repeat rs.Stepped:Wait()
if KO(TARGET).Value == true then
getRoot(STAND).CFrame = CFrame.new(getTorso(TARGET).Position)*CFrame.new(0,5,0)
wait(.2)
game.ReplicatedStorage.MainEvent:FireServer("Grabbing")
wait(.5)
getRoot(STAND).CFrame = getRoot(OWNER).CFrame*CFrame.new(0,5,0)
end
until KO(TARGET).Value == false or bring == false
end
Summon()
end
end

function GetNearest()
local ClosestPlayer
local ClosestDistance = math.huge
for _,v in pairs(game.Players:GetPlayers()) do
if v.Character and OWNER.Character then
if v.Character:FindFirstChild('BodyEffects') and v.Character:FindFirstChild('BodyEffects'):FindFirstChild('Defense') and v.Character:FindFirstChild('BodyEffects'):FindFirstChild('BreakingParts') then
if v ~= OWNER and v:FindFirstChild('DataFolder') and v:FindFirstChild('DataFolder'):FindFirstChild('Information') then
if v.Character:WaitForChild('BodyEffects')['K.O'].Value == false then
if v:FindFirstChild('DataFolder'):FindFirstChild('Information'):FindFirstChild('Crew') then
if v.Character:FindFirstChild('HumanoidRootPart') then
if v.DataFolder.Information.Crew.Value ~= OWNER.DataFolder.Information.Crew.Value or not v.DataFolder.Information:FindFirstChild('Crew') then
local Distance = (v.Character:FindFirstChild('HumanoidRootPart').Position - getRoot(OWNER).Position).Magnitude
if Distance < ClosestDistance then
if Distance <= StudLimit then
ClosestDistance = Distance
ClosestPlayer = v
end
end
end
end
else
if v.Character:FindFirstChild('HumanoidRootPart') then
local Distance = (v.Character:FindFirstChild('HumanoidRootPart').Position - getRoot(OWNER).Position).Magnitude
if Distance < ClosestDistance then
if Distance <= StudLimit then
ClosestDistance = Distance
ClosestPlayer = v
end
end
end
end
end
end
end
end
end
return ClosestPlayer
end

function MoveTo(X,Y,Z)  
getHumanoid(STAND):ChangeState(8)
if STAND.Character.Head:FindFirstChildWhichIsA("Motor6D") then
if not getRoot(STAND):FindFirstChildWhichIsA("BodyPosition") then
local BP = Instance.new("BodyPosition",getRoot(STAND))
BP.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
BP.P = 3500
BP.D = 500
getHumanoid(STAND).AutoRotate = false
end
if not getRoot(STAND):FindFirstChildWhichIsA("BodyGyro") then
local bg = Instance.new("BodyGyro",getRoot(STAND))
bg.maxTorque = Vector3.new(9e9,9e9,9e9)
bg.P = 10000
end
getRoot(STAND).BodyGyro.CFrame = getRoot(OWNER).CFrame
getRoot(STAND).BodyPosition.Position = getRoot(OWNER).CFrame*CFrame.new(X,Y,Z).Position else
rs.Heartbeat:Wait()
getRoot(STAND).CFrame = getRoot(OWNER).CFrame*CFrame.new(X,Y,Z)
STAND.Character:FindFirstChild('RightHand').CFrame = getTorso(STAND).CFrame*CFrame.new(0,0,0)
STAND.Character:FindFirstChild('LeftHand').CFrame = getTorso(STAND).CFrame*CFrame.new(0,0,0)
STAND.Character:FindFirstChild('RightFoot').CFrame = getTorso(STAND).CFrame*CFrame.new(0,0,0)
STAND.Character:FindFirstChild('LeftFoot').CFrame = getTorso(STAND).CFrame*CFrame.new(0,0,0)
STAND.Character:FindFirstChild('Head').CFrame = getTorso(STAND).CFrame*CFrame.new(0,0,0)
end
end

function MoveTo(X,Y,Z)  
    getHumanoid(STAND):ChangeState(8)
    rs.Heartbeat:Wait()
    getRoot(STAND).CFrame = getRoot(OWNER).CFrame*CFrame.new(X,Y,Z)
end

-- Poses :
local function pose1()
    if Posing1 == true then
        rs:UnbindFromRenderStep("POSING")
        Posing1 = false
        Pose1:Stop(0.5)
    else
        Posing1 = true
        rs:BindToRenderStep("POSING",-1 ,function()
            pcall(function()
                if Posing1 == true then
                    for i,v in pairs(STAND.Character:WaitForChild("Humanoid"):GetPlayingAnimationTracks()) do
                        if (v.Animation.AnimationId:match("rbxassetid://3541114300")) or
                            (v.Animation.AnimationId:match("rbxassetid://3084858603")) or 
                            (v.Animation.AnimationId:match("rbxassetid://13850634687")) then
                            v:Stop();
                        end
                    end
                    if not Pose1.IsPlaying then          
                        Pose1:Play();
                        Pose1:AdjustSpeed(0);
                        Pose1.TimePosition = 0.42;
                    end
                end
            end)
        end)
    end
end

local function pose2()
    if Posing2 == true then
        rs:UnbindFromRenderStep("POSING")
        Posing2 = false
        Pose2:Stop(0.5)
    else
        Posing2 = true
        rs:BindToRenderStep("POSING",-1 ,function()
            pcall(function()
                if Posing2 == true then
                    if not Pose2.IsPlaying then
                        Pose2:Play();
                        Pose2:AdjustSpeed(0);
                        Pose2.TimePosition = 0.42;
                    end
                end
            end)
        end)
    end
end

local function pose3()
    if Posing3 == true then
        rs:UnbindFromRenderStep("POSING")
        Posing3 = false
        Pose3:Stop(0.5)
    else
        Posing3 = true
        rs:BindToRenderStep("POSING",-1 ,function()
            pcall(function()
                if Posing3 == true then
                    for i,v in pairs(STAND.Character:WaitForChild("Humanoid"):GetPlayingAnimationTracks()) do
                        if (v.Animation.AnimationId:match("rbxassetid://3541114300")) or
                            (v.Animation.AnimationId:match("rbxassetid://3084858603")) or 
                            (v.Animation.AnimationId:match("rbxassetid://13850634687")) then
                            v:Stop();
                        end
                    end
                    if not Pose3.IsPlaying then
                        Pose3:Play();
                        Pose3:AdjustSpeed(0);
                        Pose3.TimePosition = 0.85;
                    end
                end
            end)
        end)
    end
end

function SummonAudio()
    if SummonMusic == true and StandMode == 'Star Platinum : OverHeaven' then
        play(5684695930,true,true)
    elseif SummonMusic == true and StandMode == "Star Platinum, Za Warudo!" then
        play(5736107502,true,true)
    elseif SummonMusic == true and StandMode == 'Star Platinum : The World' then
        play(2404992854,true,true)
    elseif SummonMusic == true and StandMode == "TheWorld" then
        play(5129686200,true,true)
    elseif SummonMusic == true and StandMode == 'C moon' then
        play(2404992854,true,true)
    elseif SummonMusic == true and StandMode == "Cmoon" then
        play(8258958078,true,true)
    elseif SummonMusic == true and StandMode == "King Crimson" then
        play(3373956700,true,true)
    elseif SummonMusic == true and StandMode == "MIH" then
        play(8713037614,true,true)
    elseif SummonMusic == true and StandMode == 'D4C' then
        play(8769131644,true,true)
    elseif SummonMusic == true and StandMode == 'Killer Queen' then
        play(5818138638,true,true)
    end
end

function Summon()
    Stop()
    follow = true
    noclip = true
    blocking = true
    if FlyMode == 'Heaven' then
        HOVER:Play(0.28)
        HOVERV2:Play(0.28)
    else
        HOVER:Play(0.28)
    end
end

function SummonPose1()
    Stop()
    noclip = true
    getRoot(STAND).CFrame = getRoot(OWNER).CFrame*CFrame.new(0,-100,0)
    rs.Stepped:Wait()
    getRoot(STAND).CFrame = getRoot(OWNER).CFrame*CFrame.new(0.4,-3,3)
    local BP = Instance.new("BodyPosition")
    BP.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
    BP.P = 2500
    BP.D = 275
    BP.Parent = getRoot(STAND)
    BP.Position = getRoot(STAND).Position
    rs:BindToRenderStep("Summon", -1 , function()
        BP.Position = getRoot(OWNER).CFrame*CFrame.new(1.4,1.85,1.7).Position
    end)
    pose1()
    wait(1.2)
    SummonAudio()
    pose1()
    rs:UnbindFromRenderStep("Summon")
    getRoot(STAND):FindFirstChildWhichIsA("BodyPosition"):Destroy()
    Summon()
end

function SummonPose2()
    Stop()
    noclip = true
    pose2(1)
    getRoot(STAND).CFrame = getRoot(OWNER).CFrame*CFrame.new(0,-100,0)
    rs.Stepped:Wait()
    getRoot(STAND).CFrame = getRoot(OWNER).CFrame*CFrame.new(0,-3,3)
    rs.Stepped:Wait()
    local BP = Instance.new("BodyPosition")
    BP.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
    BP.P = 300
    BP.D = 100
    BP.Parent = getRoot(STAND)
    BP.Position = getRoot(STAND).Position
    rs:BindToRenderStep("Summon", -1 , function()
        BP.Position = getRoot(OWNER).CFrame*CFrame.new(1.4,1,3).Position
    end)
    wait(1.2)
    SummonAudio()
    rs:UnbindFromRenderStep("Summon")
    getRoot(STAND):FindFirstChildWhichIsA("BodyPosition"):Destroy()
    pose2()
    Summon()
end

function SummonPose3()
    Stop()
    noclip = true
    pose3(1)
    getRoot(STAND).CFrame = getRoot(OWNER).CFrame*CFrame.new(0,-100,0)
    rs.Stepped:Wait()
    getRoot(STAND).CFrame = getRoot(OWNER).CFrame*CFrame.new(0,-3,1.65)
    rs.Stepped:Wait()
    local BP = Instance.new("BodyPosition")
    BP.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
    BP.P = 300
    BP.D = 100
    BP.Parent = getRoot(STAND)
    BP.Position = getRoot(STAND).Position
    rs:BindToRenderStep("Summon", -1 , function()
        BP.Position = getRoot(OWNER).CFrame*CFrame.new(0,2,3).Position
    end)
    wait(1)
    SummonAudio()
    rs:UnbindFromRenderStep("Summon")
    getRoot(STAND):FindFirstChildWhichIsA("BodyPosition"):Destroy()
    pose3()
    Summon()
end

function Barrage()
    if Sounds == true and StandMode == 'Star Platinum : OverHeaven' then
        play(6181278583,false,true)
    elseif Sounds == true and StandMode == "Star Platinum,Za Warudo!" then
        play(6181278583,false,true)
    elseif Sounds == true and StandMode == 'Star Platinum: The World' then
        play(6181278583,false,true)
    elseif Sounds == true and StandMode == "TheWorld" then
        play(6889746326,false,true)
    end
    Stop()
    noclip = true
    barragepunch = true	
    barragepos = true
    repeat rs.Stepped:Wait()
        Hit(false)
        for i,v in pairs(STAND.Character:WaitForChild("Humanoid"):GetPlayingAnimationTracks()) do
            if (v.Animation.AnimationId:match("rbxassetid://3541114300")) or
                (v.Animation.AnimationId:match("rbxassetid://13850634687")) or 
                (v.Animation.AnimationId:match("rbxassetid://13850660986")) or 
                (v.Animation.AnimationId:match("rbxassetid://2788309317")) or 
                (v.Animation.AnimationId:match("rbxassetid://2788308661")) or 
                (v.Animation.AnimationId:match("rbxassetid://2788311138")) or 
                (v.Animation.AnimationId:match("rbxassetid://2788309982")) then 
                v:Stop();
            end
        end
        Barraging1:Play()
        Barraging2:Stop()
        Barraging3:Stop()
        Barraging4:Stop()	
        Barraging1:AdjustSpeed(8.15)
        wait(0.013)
        Barraging1:Stop()
        Barraging2:Play()
        Barraging3:Stop()
        Barraging4:Stop()	
        Barraging2:AdjustSpeed(8.15)
        wait(0.013)
        Barraging1:Stop()
        Barraging2:Stop()
        Barraging3:Play()
        Barraging4:Stop()
        Barraging3:AdjustSpeed(8.15)
        wait(0.013)
        Barraging1:Stop()
        Barraging2:Stop()
        Barraging3:Stop()
        Barraging4:Play()
        Barraging4:AdjustSpeed(8.15)
    until barragepunch == false
end

function Nobarrage()
    StopAudio()
    wait()
    if Sounds == true then
        play(6603004272,true,true)
    end
    Summon()
end

function Vanish()
    Stop()
    noclip = true
    MoveTo(-0.2,-10,1.4)
    wait(0.250)
    if getRoot(STAND):FindFirstChildWhichIsA("BodyPosition") then
        getRoot(STAND):FindFirstChildWhichIsA("BodyPosition"):Destroy()
    end
    getRoot(STAND).CFrame = getRoot(OWNER).CFrame*CFrame.new(0,-100,0)
    vanish = true
end

function BuyKnife()
    noclip = true
    repeat rs.Stepped:Wait()
        getRoot(STAND).CFrame = game.Workspace.Ignored.Shop['[Knife] - $159'].Head.CFrame*CFrame.new(0,-5,0)
        fireclickdetector(game.Workspace.Ignored.Shop['[Knife] - $159'].ClickDetector)
    until STAND.Backpack:FindFirstChild("[Knife]")
    STAND.Backpack:FindFirstChild('[Knife]').Parent = STAND.Character
end

function BuyPitch()
    Stop()
    noclip = true
    repeat rs.Stepped:Wait()
        getRoot(STAND).CFrame = game.Workspace.Ignored.Shop['[Pitchfork] - $330'].Head.CFrame*CFrame.new(0,-5,0)
        fireclickdetector(game.Workspace.Ignored.Shop['[Pitchfork] - $330'].ClickDetector)
    until STAND.Backpack:FindFirstChild("[Pitchfork]")
    STAND.Backpack:FindFirstChild('[Pitchfork]').Parent = STAND.Character
end

function Heal()
    Stop()
    noclip = true
    getHumanoid(STAND):UnequipTools()
    repeat rs.Stepped:Wait()
        getRoot(STAND).CFrame=game.Workspace.Ignored.Shop["[Taco] - $2"].Head.CFrame*CFrame.new(0,-5,0)   
        fireclickdetector(game.Workspace.Ignored.Shop["[Taco] - $2"].ClickDetector)
    until STAND.Backpack:FindFirstChild("[Taco]")
    STAND.Backpack:FindFirstChild("[Taco]").Parent = STAND.Character
    wait(.1)
    follow = true
    repeat rs.Stepped:Wait()
        STAND.Character:FindFirstChild('[Taco]'):Activate()
    until not STAND.Character:FindFirstChild('[Taco]')
end

function SAVEOWNER()
    Stop()
    noclip = true
    follow = false
    getHumanoid(STAND):UnequipTools()
    game.Workspace.Camera.CameraSubject = getHumanoid(STAND)
    repeat rs.Stepped:Wait()
        if KO(OWNER).Value == true then
            getRoot(STAND).CFrame=CFrame.new(getTorso(OWNER).Position)*CFrame.new(0,5,0)
            wait(.2)
            game.ReplicatedStorage.MainEvent:FireServer("Grabbing")
            wait(.1)
            getRoot(STAND).CFrame = CFrame.new(-484,41,-100)
            wait(.4)
            game.ReplicatedStorage.MainEvent:FireServer("Grabbing")
        end
        if KO(OWNER).Value == false then
            follow = true
        end
    until KO(OWNER).Value == false
end

function TP(cframe)
    if Alt == false then
        Stop()
        noclip = true
        if Sounds == true then
            play(8655611378,true,true) 
        end	
        if KO(OWNER).Value == false then
            game.ReplicatedStorage.MainEvent:FireServer("LeaveCrew")
            Hit(true)
        wait()
        repeat rs.Stepped:Wait()
            if KO(OWNER).Value == false then
                game.ReplicatedStorage.MainEvent:FireServer("ChargeButton")
                getRoot(STAND).CFrame=CFrame.new(getRoot(OWNER).Position)*CFrame.new(0,0,0)
            end
        until KO(OWNER).Value == true
        repeat rs.Stepped:Wait()
            getRoot(STAND).CFrame = CFrame.new(getTorso(OWNER).Position)*CFrame.new(0,10,0)
        until Attacking(STAND).Value == false

        repeat rs.Stepped:Wait()
            if KO(OWNER).Value == true then
                circle = false
                getRoot(STAND).CFrame=CFrame.new(getTorso(OWNER).Position)*CFrame.new(0,5,0)wait(.2)
                game.ReplicatedStorage.MainEvent:FireServer("Grabbing") wait(.1)
                getRoot(STAND).CFrame = cframe wait(.4)
                game.ReplicatedStorage.MainEvent:FireServer("Grabbing")
            end	
        until KO(OWNER).Value == false
        Summon()
        wait(2)
        game.ReplicatedStorage.MainEvent:FireServer("JoinCrew",CrewID) 
    else
        if KO(OWNER).Value == true then
            repeat rs.Stepped:Wait()
                if KO(OWNER).Value == true then
                    circle = false
                    getRoot(STAND).CFrame=CFrame.new(getTorso(OWNER).Position)*CFrame.new(0,5,0) wait(.2)
                    game.ReplicatedStorage.MainEvent:FireServer("Grabbing") wait(.1)
                    getRoot(STAND).CFrame = cframe wait(.4)
                    game.ReplicatedStorage.MainEvent:FireServer("Grabbing")
                end
                until KO(OWNER).Value == false
                Summon()
            end
        end
    end
end

function TPGrabbed(cframe)
    if Sounds == true then
        play(8655611378,true,true) 
    end	
    Stop()
    noclip = true
    getRoot(STAND).CFrame = cframe
    wait(.5)
    game.ReplicatedStorage.MainEvent:FireServer("Grabbing")
    wait(.5)
    follow = true
end	

function FollowMode()
if FlyMode == 'Fly' then
HOVER:Play(0.28)
function Moved()
HOVER:Play(0.28)
if OWNER.Character:WaitForChild("Humanoid").MoveDirection.magnitude > 0 and StopHoverAnim == false then
if FLY.IsPlaying == true then
return
end
HOVER:Stop(0.3)
FLY:Play(0.3)
else
wait(.2)
FLY:Stop(0.28)
HOVER:Play(0.28)
end     
end
OWNER.Character:WaitForChild("Humanoid"):GetPropertyChangedSignal("MoveDirection"):Connect(Moved)
else
if FlyMode == 'Glide' then
HOVER:Play(0.28)
function Moved()
if OWNER.Character:WaitForChild("Humanoid").MoveDirection.magnitude > 0 and StopHoverAnim == false then
if GLIDE.IsPlaying == true then
return
end
HOVER:Stop(0.28)
GLIDE:Play(0.28)
else
wait(.2)
GLIDE:Stop(0.28)
HOVER:Play(0.28)
end     
end
OWNER.Character:WaitForChild("Humanoid"):GetPropertyChangedSignal("MoveDirection"):Connect(Moved)
else
if FlyMode == 'Heaven' then
HOVER:Play(0.28)
HOVERV2:Play(0.28)
function Moved()
if OWNER.Character:WaitForChild("Humanoid").MoveDirection.magnitude > 0 and StopHoverAnim == false then
if GLIDE.IsPlaying == true then
return
end
HOVER:Stop(0.3)
HOVERV2:Stop(0.3)
GLIDE:Play(0.3)
else
wait(.2)
HOVER:Play(0.28)
HOVERV2:Play(0.28)
GLIDE:Stop(0.28)
end     
end
OWNER.Character:WaitForChild("Humanoid"):GetPropertyChangedSignal("MoveDirection"):Connect(Moved)	
end
end
end
end
FollowMode()

function MaskHide()
    if StopHoverAnim == false then
        getHumanoid(STAND):UnequipTools()
        repeat rs.Stepped:Wait()
            getRoot(STAND).CFrame=game.Workspace.Ignored.Shop["[Surgeon Mask] - $27"].Head.CFrame*CFrame.new(0,-5,0)
            fireclickdetector(game.Workspace.Ignored.Shop["[Surgeon Mask] - $27"].ClickDetector)
        until STAND.Backpack:FindFirstChild("[Mask]")
        STAND.Backpack:FindFirstChild("[Mask]").Parent = STAND.Character
        STAND.Character:FindFirstChild('[Mask]'):Activate()
        --game.Workspace.Ignored.Morphs['[Reset]'].Head.CFrame =  game.Players.LocalPlayer.Character.UpperTorso.CFrame
        getHumanoid(STAND):UnequipTools()
    end
end	

TARGET = nil
Arg = ''
function Create(command,callback)
callback = callback or function() end
    game.ReplicatedStorage.DefaultChatSystemChatEvents.OnMessageDoneFiltering.OnClientEvent:Connect(function(msg)
    if msg.Message:lower() == command:lower() and msg.FromSpeaker == tostring(OWNER.Name) then
            pcall(callback)
        end
    end)
end

function CreateTargetAbility(command,callback)
    callback = callback or function() end
    game.ReplicatedStorage.DefaultChatSystemChatEvents.OnMessageDoneFiltering.OnClientEvent:Connect(function(msg)
        if msg.FromSpeaker == tostring(OWNER.Name) then
                local msgString = msg.Message:split(" ")
                local cmdName = msg

                if msgString[1]:lower() == command:lower() then

                    local args = {}

                    for i = 2,#msgString,1 do
                        table.insert(args,msgString[i])
                    end

                    if args[1] then
                        local GetPlayer = gplr(args[1])
                    if GetPlayer then
                        TARGET = GetPlayer
                        pcall(callback)
                    else
                        Chat("Invalid Target.")
                    end
                end
            end
        end
    end)
end

function Arg(command,callback)
    callback = callback or function() end
    game.ReplicatedStorage.DefaultChatSystemChatEvents.OnMessageDoneFiltering.OnClientEvent:Connect(function(msg)
        if msg.FromSpeaker == tostring(OWNER.Name) then
                local msgString = msg.Message:split(" ")
                local cmdName = msg

                if msgString[1]:lower() == command:lower() then

                    local args = {}

                    for i = 2,#msgString,1 do
                        table.insert(args,msgString[i])
                    end

                    if args[1] then
                        local argument = args[1]
                    if argument then
                        Arg = argument
                        pcall(callback)
                    end
                end
            end
        end
    end)
end

function Teleport(command)
    game.ReplicatedStorage.DefaultChatSystemChatEvents.OnMessageDoneFiltering.OnClientEvent:Connect(function(msg)
        if msg.FromSpeaker == tostring(OWNER.Name) then
            local msgString = msg.Message:split(" ")
            local cmdName = msg

            if msgString[1]:lower() == command:lower() then

                local args = {}

                for i = 2,#msgString,1 do
                    table.insert(args,msgString[i])
                end

                if args[1] == "bank" then
                    TP(CFrame.new(-445,39,-284))
                elseif args[1] == "Roof" then
                    TP(CFrame.new(-328,80,-298))
                elseif args[1] == "club" then
                    TP(CFrame.new(-264,-6.,-379))
                elseif args[1] == "casino" then
                    TP(CFrame.new(-1001,80,-230))
                elseif args[1] == "ufo" then
                    TP(CFrame.new(69,139,-688))
                elseif args[1] == "mil" then
                    TP(CFrame.new(36,50,-832))
                elseif args[1] == "school" then
                    TP(CFrame.new(-586,68,326))
                elseif args[1] == "shop1" then
                    TP(CFrame.new(-335.141,23,-298))
                elseif args[1] == "shop2" then
                    TP(CFrame.new(298,49,-615))
                elseif args[1] == "rev" then
                    TP(CFrame.new(-638,21,-126))
                elseif args[1] == "db" then
                    TP(CFrame.new(25,25,-834))
                elseif args[1] == "pool" then
                    TP(CFrame.new(1-847,51,-300))
                elseif args[1] == "armor" then
                    TP(CFrame.new(408,48,-43))
                elseif args[1] == "subway" then
                    TP(CFrame.new(646,47,-68))
                elseif args[1] == "subway1" then
                    TP(CFrame.new(-371,-21,113))
                elseif args[1] == "sewer" then
                    TP(CFrame.new(172,-41,156))
                elseif args[1] == "wheel" then
                    TP(CFrame.new(159,157,-722))
                elseif args[1] == "safe1" then
                    TP(CFrame.new(0,15,213))
                elseif args[1] == "safe2" then
                    TP(CFrame.new(-116,-58,146))
                elseif args[1] == "safe3" then
                    TP(CFrame.new(-547,173,-0))
                elseif args[1] == "safe4" then
                    TP(CFrame.new(-1100,110.,-90))
                elseif args[1] == "Basketball" then
                    TP(CFrame.new(-908,21,-500))
                elseif args[1] == "boxing" then
                    TP(CFrame.new(-234,22,-1119))
                elseif args[1] == "bull" then
                    TP(CFrame.new(-660,23,-122))
                else
                    local GetPlayer = gplr(args[1])
                    if GetPlayer then
                        TP(CFrame.new(getTorso(GetPlayer).Position)*CFrame.new(0,0,0))
                    else
                        Chat('Invalid Place.')
                    end
                end
            end
        end
    end)
end

function DropGrabbed(command)
    game.ReplicatedStorage.DefaultChatSystemChatEvents.OnMessageDoneFiltering.OnClientEvent:Connect(function(msg)
        if msg.FromSpeaker == tostring(OWNER.Name) then
            local msgString = msg.Message:split(" ")
            local cmdName = msg

            if msgString[1]:lower() == command:lower() then

                local args = {}

                for i = 2,#msgString,1 do
                    table.insert(args,msgString[i])
                end

                if args[1] == "bank" then
                    TPGrabbed(CFrame.new(-445,39,-284))
                elseif args[1] == "Roof" then
                    TPGrabbed(CFrame.new(-328,80,-298))
                elseif args[1] == "club" then
                    TPGrabbed(CFrame.new(-264,-6.,-379))
                elseif args[1] == "casino" then
                    TPGrabbed(CFrame.new(-1001,80,-230))
                elseif args[1] == "ufo" then
                    TPGrabbed(CFrame.new(69,139,-688))
                elseif args[1] == "mil" then
                    TPGrabbed(CFrame.new(36,50,-832))
                elseif args[1] == "school" then
                    TPGrabbed(CFrame.new(-586,68,326))
                elseif args[1] == "shop1" then
                    TPGrabbed(CFrame.new(-335.141,23,-298))
                elseif args[1] == "shop2" then
                    TPGrabbed(CFrame.new(298,49,-615))
                elseif args[1] == "rev" then
                    TPGrabbed(CFrame.new(-638,21,-126))
                elseif args[1] == "db" then
                    TPGrabbed(CFrame.new(25,25,-834))
                elseif args[1] == "pool" then
                    TPGrabbed(CFrame.new(1-847,51,-300))
                elseif args[1] == "armor" then
                    TPGrabbed(CFrame.new(408,48,-43))
                elseif args[1] == "subway" then
                    TPGrabbed(CFrame.new(646,47,-68))
                elseif args[1] == "subway1" then
                    TPGrabbed(CFrame.new(-371,-21,113))
                elseif args[1] == "sewer" then
                    TPGrabbed(CFrame.new(172,-41,156))
                elseif args[1] == "wheel" then
                    TPGrabbed(CFrame.new(159,157,-722))
                elseif args[1] == "safe1" then
                    TPGrabbed(CFrame.new(0,15,213))
                elseif args[1] == "safe2" then
                    TPGrabbed(CFrame.new(-116,-58,146))
                elseif args[1] == "safe3" then
                    TPGrabbed(CFrame.new(-547,173,-0))
                elseif args[1] == "safe4" then
                    TPGrabbed(CFrame.new(-1100,110.,-90))
                elseif args[1] == "Basketball" then
                    TPGrabbed(CFrame.new(-908,21,-500))
                elseif args[1] == "boxing" then
                    TPGrabbed(CFrame.new(-234,22,-1119))
                elseif args[1] == "bull" then
                    TPGrabbed(CFrame.new(-660,23,-122))
                else
                    local GetPlayer = gplr(args[1])
                    if GetPlayer then
                        TPGrabbed(CFrame.new(getTorso(GetPlayer).Position)*CFrame.new(0,0,0))
                    else
                        Chat('Invalid Place.')
                    end
                end
            end
        end
    end)
end

Teleport('tp!')
Teleport('Goto!')
Teleport('To!')
DropGrabbed('Drop!')

Arg('Prediction!',function()
    accomidationfactor = Arg
end)
Arg("Say!", function()
    Chat(""..Arg.."")
end)

Arg("Redeem!", function()
    game.ReplicatedStorage.MainEvent:FireServer("EnterPromoCode",Arg)
end)

Arg("Join!", function()
    game:GetService('TeleportService'):TeleportToPlaceInstance(2788229376,''..Arg..'', game.Players.LocalPlayer)
end)

Create("Drop!",function()
    if Sounds == true then
        play(8655611378,true,true) 
    end	

    if Pos == "Alt" then
        follow = false
        noclip = true
        getRoot(STAND).CFrame = getRoot(OWNER).CFrame*CFrame.new(0,5,0) wait(1)
        game.ReplicatedStorage.MainEvent:FireServer("Grabbing")
        follow = true
    else
        game.ReplicatedStorage.MainEvent:FireServer("Grabbing")

    end
end)

Create("Throw!",function()
    if Sounds == true then
        play(8655611378,true,true) 
    end	

    if Pos == "Alt" then
        follow = false
        noclip = true
        getRoot(STAND).CFrame = getRoot(OWNER).CFrame*CFrame.new(0,5,0) wait(1)
        game.ReplicatedStorage.MainEvent:FireServer("Grabbing",true)
        follow = true
    else
        game.ReplicatedStorage.MainEvent:FireServer("Grabbing",true)

    end
end)

Create("Kord!",function()
    Chat('Join server for skripkt')
    wait(.1)
    Chat('.gg/tRgxc8NnAA')
    wait(.1)
    Chat('If you have issues dm "lynixx._"')
end)

Create("ShowSc!",function()
    rs:Set3dRenderingEnabled(true)
end)

Create("Hidesc!",function()
    rs:Set3dRenderingEnabled(false)
end)

Create('Rejoin!',function()
    game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId,game.JobId,STAND)
end)

Create('Re!',function()
    Reset()
end)

Create('pen',function()
    Stop()
    unbind = false
    blocking = false
end)

Create('Summon!',function()
    SummonAudio()
    Summon()
    wait(.3)
    game.ReplicatedStorage.MainEvent:FireServer("PhoneCall",OWNER.Name)
end)

Create('s',function()
    SummonAudio()
    Summon()
end)

Create('Summon1!',function()
    SummonPose1()
end)

Create('Summon2!',function()
    SummonPose2()
end)

Create('Summon3!',function()
    SummonPose3()
end)
--unmuteabe stuff
OWNER.Chatted:Connect(function(msg)
    if msg:lower() == "babajeea" then wait(.5)
        game.ReplicatedStorage.MainEvent:FireServer("PhoneCall",OWNER.Name)
    elseif msg:lower() == "vibeaa" then wait(.5)
        game.ReplicatedStorage.MainEvent:FireServer("PhoneCall",OWNER.Name)
    elseif msg:lower() == "vibea1" then wait(.5)
        game.ReplicatedStorage.MainEvent:FireServer("PhoneCall",OWNER.Name)
    elseif msg:lower() == "motorcyle" then wait(.5)
        game.ReplicatedStorage.MainEvent:FireServer("PhoneCall",OWNER.Name)
    elseif msg:lower() == "meow" then wait(.5)
        game.ReplicatedStorage.MainEvent:FireServer("PhoneCall",OWNER.Name)
    elseif msg:lower() == "die" then wait(.5)
        game.ReplicatedStorage.MainEvent:FireServer("PhoneCall",OWNER.Name)
    elseif msg:lower() == "amongus" then wait(.5)
        game.ReplicatedStorage.MainEvent:FireServer("PhoneCall",OWNER.Name)
    elseif msg:lower() == "riz" then wait(.5)
        game.ReplicatedStorage.MainEvent:FireServer("PhoneCall",OWNER.Name)
    elseif msg:lower() == "..." then wait(.5)
        game.ReplicatedStorage.MainEvent:FireServer("PhoneCall",OWNER.Name)
    elseif msg:lower() == "fire" then wait(.5)
        game.ReplicatedStorage.MainEvent:FireServer("PhoneCall",OWNER.Name)
    elseif msg:lower() == "scam" then wait(.5)
        game.ReplicatedStorage.MainEvent:FireServer("PhoneCall",OWNER.Name)
    elseif msg:lower() == "bom" then wait(.5)
        game.ReplicatedStorage.MainEvent:FireServer("PhoneCall",OWNER.Name)
    elseif msg:lower() == "cri" then wait(.5)
        game.ReplicatedStorage.MainEvent:FireServer("PhoneCall",OWNER.Name)
    end
end)
Create('aa',function()
    OWNER.Character.ChildAdded:Connect(function(a)
        if a.Name == '[Phone]' then
            wait(.1)
            game.ReplicatedStorage.MainEvent:FireServer("PhoneCall",OWNER.Name)
        end
    end)

end)
Create('a',function()
    game.ReplicatedStorage.MainEvent:FireServer("PhoneCall",OWNER.Name)
end)

OWNER.Chatted:Connect(function(msg)
    if msg == ('/e cm') then
        game.ReplicatedStorage.MainEvent:FireServer("PhoneCall",OWNER.Name)
    end
end)
OWNER.Chatted:Connect(function(msg)
    if msg == ('/e q') then
        SummonAudio()
        Summon()
    end
end)

OWNER.Chatted:Connect(function(msg)
    if msg == ('/e q1') then
        SummonPose1()
    end
end)

OWNER.Chatted:Connect(function(msg)
    if msg == ('/e q2') then
        SummonPose2()
    end
end)

OWNER.Chatted:Connect(function(msg)
    if msg == ('/e q3') then
        SummonPose3()
    end
end)

Create("Desummon!",function()
    Vanish()
end)

Create("Killer Queen!",function()
    if SummonMusic == true then
        play(5818138638,true,true)
    end
    Summon()
end)

Create("Star Platinum: The World",function()
    if SummonMusic == true then
        play(2404992854,true,true)
    end
    Summon()
end)

Create("Star Platinum : OverHeaven",function()
    if SummonMusic == true then
        play(5684695930,true,true)
    end
    Summon()
end)

Create("Star Platinum,Za Warudo!",function()
    if SummonMusic == true then
        play(5736107502,true,true)
    end
    Summon()
end)

Create("Star Platinum!",function()
    Summon()
end)

Create("ZA WARUDO : OVER HEAVEN",function()
    if SummonMusic == true then
        play(5129686200,true,true)
    end
    Summon()
end)

Create("C moon!",function()
    if SummonMusic == true then
        play(8258958078,true,true)
    end
    Summon()
end)

Create("D4C!",function()
    if SummonMusic == true then
        play(8769131644,true,true)
    end
    Summon()
end)

Create("King Crimson!",function()
    if SummonMusic == true then
        play(3373956700,true,true)
    end
    Summon()
end)

Create("Made In Heaven!",function()
    if SummonMusic == true then
        play(8713037614,true,true)
    end
    Summon()
end)

Create('Save!',function()
    SAVEOWNER()
end)

OWNER.Chatted:Connect(function(msg)
    if msg == ('/e w') then
        Vanish()
    end
end)

Create('Vanish!',function()
    Vanish()
end)

Create('Ping!',function()
    Chat(math.round(SummonStand:GetNetworkPing() * 1000) .. "ms")
end)
Create('Combat!',function()
    OWNER.Character.ChildAdded:Connect(function(a)
        if a.Name == 'Combat' then
            a:Destroy()
            Stop()
            if STAND.Backpack:FindFirstChild("[StopSign]") then else
                repeat wait()
                    STAND.Character.HumanoidRootPart.CFrame = CFrame.new(-225.856354, 21.740221, -77.2130737, 0.999822319, 1.08228349e-07, 0.0188493319, -1.07573136e-07, 1, -3.57744554e-08, -0.0188493319, 3.37404202e-08, 0.999822319)
                fireclickdetector(workspace.Ignored.Shop["[StopSign] - $309"].ClickDetector)
                until STAND.Backpack:FindFirstChild("[StopSign]")
            end
            STAND.Backpack:WaitForChild("[StopSign]")
            STAND.Backpack["[StopSign]"].GripPos = Vector3.new(-15,0,0)
            wait()
            STAND.Character.HumanoidRootPart.CFrame = CFrame.new(0, 2000, 0);
            STAND.Backpack["[StopSign]"].Parent = STAND.Character
            wait()
            game.ReplicatedStorage.MainEvent:FireServer("ChargeButton")
            wait(0.6)
            game:GetService("RunService"):BindToRenderStep("TARGET", -1 , function()
            rs.heartbeat:wait()
            getHumanoid(STAND):ChangeState(11)
            for i,v in pairs(STAND.Character:GetDescendants()) do
                if v:IsA("BasePart") or v:IsA("MeshPart") then
                    v.CanCollide = false
                    v.Velocity = Vector3.new(0,0,0)
                end
            end
            for _,v in ipairs(STAND.Character:WaitForChild("Humanoid"):GetPlayingAnimationTracks()) do v:Stop() end
            STAND.Character.HumanoidRootPart.CFrame = OWNER.Character.HumanoidRootPart.CFrame * CFrame.new(0, -4, -3) * CFrame.Angles(math.pi*0.5,0,0)
            end)
            wait(1)
            STAND.Character["[StopSign]"].Parent = STAND.Backpack
            STAND.Character.HumanoidRootPart.CFrame = CFrame.new(0, -100, 0);
            game:GetService("RunService"):UnbindFromRenderStep("TARGET")
            STAND.Character.HumanoidRootPart.CFrame = CFrame.new(0, -100, 0);
            wait(0.2)
            STAND.Character.HumanoidRootPart.CFrame = CFrame.new(0, -100, 0);
            wait(.1)
            getRoot(STAND).CFrame=CFrame.new(-116,-58,146)
            getHumanoid(STAND):ChangeState(8)
        end
    end)
end)

Create('Glitch!',function()
    Stop()
    Reset()
    wait(1)
    repeat rs.heartbeat:wait()
        Hit(false)
        getRoot(STAND).CFrame = getRoot(TARGET).CFrame
    until KO(TARGET).Value == true 
end)

Create('Pre!',function()
    Stop()
    blocking = false
    Bind = false
    noclip = true
    game.ReplicatedStorage.MainEvent:FireServer("LeaveCrew")
    repeat rs.Stepped:Wait()
        getRoot(STAND).CFrame = getRoot(OWNER).CFrame*CFrame.new(0,0,-4.85)
    until KO(STAND).Value == true
    Invisible()
    repeat rs.Stepped:Wait() until KO(STAND).Value == false
    noclip = false
    local Neck = Instance.new("Motor6D");
    Neck.Name = "Neck";
    Neck.Parent = game:GetService("Players").LocalPlayer.Character.Head;
    Neck.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
    Neck.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
    Neck.Part0 = game:GetService("Players").LocalPlayer.Character.UpperTorso;
    Neck.Part1 = game:GetService("Players").LocalPlayer.Character.Head;
    STAND.Character:FindFirstChild('RightHand').CanCollide = true
    STAND.Character:FindFirstChild('RightHand').CFrame = CFrame.new(0,-9999,0)
    STAND.Character:FindFirstChild('LeftHand'):Destroy()
    STAND.Character:FindFirstChild('RightFoot'):Destroy()
    STAND.Character:FindFirstChild('LeftFoot'):Destroy()
    STAND.Character:FindFirstChild('RightHand').CFrame = CFrame.new(0,-9999,0)
    wait(1)
    STAND.Character:FindFirstChild('RightHand').CFrame = CFrame.new(0,-9999,0)
end)

Create('Unblock!',function()
    Stop()
    blocking = false
    Bind = false
    noclip = true
    game.ReplicatedStorage.MainEvent:FireServer("LeaveCrew")
    repeat rs.Stepped:Wait()
        getRoot(STAND).CFrame = getRoot(OWNER).CFrame*CFrame.new(0,0,-4.85)
    until KO(STAND).Value == true
    Invisible()
    follow = true
    repeat rs.Stepped:Wait() until KO(STAND).Value == false
    Chat('Hand weld successfully removed.')
    wait(1)
    game.ReplicatedStorage.MainEvent:FireServer("JoinCrew",CrewID) 
    wait(1)
    game.ReplicatedStorage.MainEvent:FireServer("JoinCrew",CrewID) 
end)

Create('Weld!',function()
    Stop()
    STAND.Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(-547.482239, 173.374954, -0.0784880966)
    blocking = false
    Bind = false
    Invisible()
end)


Create('Rweld!',function()
    local Neck = Instance.new("Motor6D");
    Neck.Name = "Neck";
    Neck.Parent = game:GetService("Players").LocalPlayer.Character.Head;
    Neck.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
    Neck.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
    Neck.Part0 = game:GetService("Players").LocalPlayer.Character.UpperTorso;
    Neck.Part1 = game:GetService("Players").LocalPlayer.Character.Head;

	local rightwrist = Instance.new("Motor6D");
	rightwrist.Name = "RightWrist";
	rightwrist.Parent = game:GetService("Players").LocalPlayer.Character.RightHand;
	rightwrist.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
	rightwrist.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
	rightwrist.Part0 = game:GetService("Players").LocalPlayer.Character.RightLowerArm;
	rightwrist.Part1 = game:GetService("Players").LocalPlayer.Character.RightHand;

	local leftwrist = Instance.new("Motor6D");
	leftwrist.Name = "LeftWrist";
	leftwrist.Parent = game:GetService("Players").LocalPlayer.Character.LeftHand;
	leftwrist.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
	leftwrist.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
	leftwrist.Part0 = game:GetService("Players").LocalPlayer.Character.LeftLowerArm;
	leftwrist.Part1 = game:GetService("Players").LocalPlayer.Character.LeftHand;

    local RightAnkle = Instance.new("Motor6D");
    RightAnkle.Name = "RightAnkle";
    RightAnkle.Parent = game:GetService("Players").LocalPlayer.Character.RightFoot;
    RightAnkle.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
    RightAnkle.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
    RightAnkle.Part0 = game:GetService("Players").LocalPlayer.Character.RightLowerLeg;
    RightAnkle.Part1 = game:GetService("Players").LocalPlayer.Character.RightFoot;

    local LeftAnkle = Instance.new("Motor6D");
    LeftAnkle.Name = "LeftAnkle";
    LeftAnkle.Parent = game:GetService("Players").LocalPlayer.Character.LeftFoot;
    LeftAnkle.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
    LeftAnkle.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
    LeftAnkle.Part0 = game:GetService("Players").LocalPlayer.Character.LeftLowerLeg;
    LeftAnkle.Part1 = game:GetService("Players").LocalPlayer.Character.LeftFoot;
end)


Create('Dweld!',function()
    STAND.Character.Head:FindFirstChildOfClass("Motor6D"):Destroy()
    STAND.Character.RightHand:FindFirstChildOfClass("Motor6D"):Destroy()
    STAND.Character.LeftHand:FindFirstChildOfClass("Motor6D"):Destroy()
    STAND.Character.RightFoot:FindFirstChildOfClass("Motor6D"):Destroy()
    STAND.Character.LeftFoot:FindFirstChildOfClass("Motor6D"):Destroy()
end)

Create('Wrist!',function()
    STAND.Character.RightHand:FindFirstChildOfClass("Motor6D"):Destroy()
end)

Create('Boxing!',function()
    Stop()
    noclip = true
    boxing = true
end)

Create('Power!',function()
    if STAND.DataFolder.Information.FightingStyle.Value == 'Boxing' then
        Stop()
        noclip = true
        Chat('FightingStyle :'..STAND.DataFolder.Information.FightingStyle.Value..' detected.') wait(.1)
        Chat('Switching FightingStyle to Default')
        repeat rs.Stepped:Wait()
            getRoot(STAND).CFrame = game.Workspace.Ignored.Shop["[Default Moveset] - $0"].Head.CFrame
            fireclickdetector(game.Workspace.Ignored.Shop["[Default Moveset] - $0"].ClickDetector)
        until STAND.DataFolder.Information.FightingStyle.Value == 'Default'
        follow = true
    end
    while wait() do
        pcall(function()
            for i,v in pairs(game:GetService('Players'):GetChildren()) do
                if (v.Character.HumanoidRootPart.Position - STAND.Character.LeftHand.Position).Magnitude <= 50 then
                    firetouchinterest(STAND.Character['RightHand'], v.Character.UpperTorso, 0)
                    firetouchinterest(STAND.Character['LeftHand'], v.Character.UpperTorso, 0)
                    firetouchinterest(STAND.Character['RightFoot'], v.Character.UpperTorso, 0)
                    firetouchinterest(STAND.Character['LeftFoot'], v.Character.UpperTorso, 0)
                    firetouchinterest(STAND.Character['RightLowerLeg'], v.Character.UpperTorso, 0)
                    firetouchinterest(STAND.Character['LeftLowerLeg'], v.Character.UpperTorso, 0)
                end
            end
        end)
    end
end)

Create("Wallet!",function()
    if STAND.Backpack:FindFirstChild("Wallet") then
        if Sounds == true then
            play(134732869,true,true)
        end
        STAND.Backpack:FindFirstChild("Wallet").Parent = STAND.Character
    end
end)

Create("Unwallet!",function()
    if Sounds == true then
        play(8655611378,true,true) 
    end
    getHumanoid(STAND):UnequipTools()
end)

Create("Autodrop!",function()
    Chat("AutoDrop Enabled!")
    autodrop = true
end)

Create("Unautodrop!",function()
    Chat("AutoDrop Disabled!")
    autodrop = false
end)

Create("Moveset1!",function()
    Stop()
    noclip = true
    repeat rs.Stepped:Wait()
        getRoot(STAND).CFrame = game.Workspace.Ignored.Shop["[Default Moveset] - $0"].Head.CFrame
        fireclickdetector(game.Workspace.Ignored.Shop["[Default Moveset] - $0"].ClickDetector)
    until STAND.DataFolder.Information.FightingStyle.Value == 'Default'
    Chat('FightingStyle : '..STAND.DataFolder.Information.FightingStyle.Value)
    follow = true
end)

Create("Moveset2!",function()
    Stop()
    noclip = true
    repeat rs.Stepped:Wait()
        getRoot(STAND).CFrame = game.Workspace.Ignored.Shop["Boxing Moveset (Require: Max Box Stat) - $0"].Head.CFrame
        fireclickdetector(game.Workspace.Ignored.Shop["Boxing Moveset (Require: Max Box Stat) - $0"].ClickDetector)
    until STAND.DataFolder.Information.FightingStyle.Value == 'Boxing'
    Chat('FightingStyle : '..STAND.DataFolder.Information.FightingStyle.Value)
    follow = true
end)

Create("Hide!",function()
    Stop()
    noclip = true
    MaskHide()
    follow = true
    if Sounds == true then
        play(8655611378,true,true) 
    end
end)

--this just some random experiment
--[[Create("Morph!",function()
    Stop()
    noclip = true
    STAND.Character.HumanoidRootPart.CFrame = game.Workspace.Ignored.Morphs['[Elf]'].Head.CFrame wait(1)
    STAND.Character.HumanoidRootPart.CFrame = game.Workspace.Ignored.Morphs['[Elf]'].Head.CFrame = TARGET.Character.HumanoidRootPart.CFrame wait(1)
    follow = true
end)]]

Create('Dcash!',function()
    if Sounds == true then
        play(8655611378,true,true) 
    end	
    game.ReplicatedStorage.MainEvent:FireServer("DropMoney","10000")
end)

Create('Resolver!',function()
    resolve = true
end)

Create('Noresolver!',function()
    resolve = false
end)

Create('Bind!',function()
    Bind = true
end)

Create('Unbind!',function()
    Bind = false
end)

Create("pose1",function()
    pose1()
    if Sounds == true then
        play(8655611378,true,true) 
    end
end)

Create("pose2",function()
    pose2()
    if Sounds == true then
        play(8655611378,true,true) 
    end
end)

Create("pose3",function()
    pose3()
    if Sounds == true then
        play(8655611378,true,true) 
    end
end)

Create("leave!",function()
    game:Shutdown()
end)

Create("StopAudio!",function()
    StopAudio()
end)

Create("Song!",function()
    play(CustomSong,false,true)
end)

Create('Heal!',function()
    Heal()
end)

Create('Stop!',function()
    Stop()
end)

Create('Uncrew!',function()
    game.ReplicatedStorage.MainEvent:FireServer("LeaveCrew")
end)

Create('Crew!',function()
    game.ReplicatedStorage.MainEvent:FireServer("JoinCrew",CrewID) 
    wait(1)
    game.ReplicatedStorage.MainEvent:FireServer("JoinCrew",CrewID) 
end)

Create('Sneak!',function()
    Stop()
    Sneak = true
end)

Create('Barrage!',function()
    Barrage()
end)

Create('Nobarrage!',function()
    Nobarrage()
end)
local FogDistance = 1500
local FogSpeed = 1000
local FogOffsets = 20
Arg('Fdis!',function()
    FogDistance = Arg
end)

Arg('Fspeed!',function()
    FogSpeed = Arg
end)

Arg('Offset!',function()
    FogOffsets = Arg
end)

function FOG()
game:GetService("RunService"):BindToRenderStep("FOG", -1 , function()
Dweld()
rs.Heartbeat:Wait()
getHumanoid(STAND):ChangeState(16)
for _,v in ipairs(STAND.Character:WaitForChild("Humanoid"):GetPlayingAnimationTracks()) do v:Stop() end
if STAND.Character:FindFirstChild('Combat') then STAND.Character:FindFirstChild('Combat'):Activate() else STAND.Backpack:FindFirstChild('Combat').Parent = STAND.Character end
local Rany = math.random(18,38)
getRoot(STAND).CFrame = CFrame.Angles(0,FogSpeed*math.pi*delta,0)* CFrame.new(0,Rany,FogDistance)
TpArm(CFrame.Angles(0,FogSpeed*math.pi*delta,0)* CFrame.new(0,Rany,-FogDistance))
end)
end

function WideFOG()
game:GetService("RunService"):BindToRenderStep("FOG", -1 , function()
Dweld()
rs.Heartbeat:Wait()
getHumanoid(STAND):ChangeState(16)
for _,v in ipairs(STAND.Character:WaitForChild("Humanoid"):GetPlayingAnimationTracks()) do v:Stop() end
if STAND.Character:FindFirstChild('Combat') then STAND.Character:FindFirstChild('Combat'):Activate() else STAND.Backpack:FindFirstChild('Combat').Parent = STAND.Character end
local Rany = math.random(18,70)
getRoot(STAND).CFrame = CFrame.Angles(0,FogSpeed*math.pi*delta,0)* CFrame.new(0,Rany,FogDistance)
TpArm(CFrame.Angles(0,FogSpeed*math.pi*delta,0)* CFrame.new(0,Rany,-FogDistance))
end)
end

function BigFog()
game:GetService("RunService"):BindToRenderStep("FOG", -1 , function()
Dweld()
rs.Heartbeat:Wait()
if reversing == true then
Move = Move - 1
else
Move = Move + 1
end
if Move >= 250 then
reversing = true
elseif Move < 0 then
reversing = false
end
getHumanoid(STAND):ChangeState(16)
for _,v in ipairs(STAND.Character:WaitForChild("Humanoid"):GetPlayingAnimationTracks()) do v:Stop() end
if STAND.Character:FindFirstChild('Combat') then STAND.Character:FindFirstChild('Combat'):Activate() else STAND.Backpack:FindFirstChild('Combat').Parent = STAND.Character end
getRoot(STAND).CFrame = CFrame.Angles(0,FogSpeed*math.pi*delta,0)* CFrame.new(0,Move,FogDistance)
TpArm(CFrame.Angles(0,FogSpeed*math.pi*delta,0)* CFrame.new(0,Move,-FogDistance))
end)
end

function UpFOG()
game:GetService("RunService"):BindToRenderStep("FOG", -1 , function()
Dweld()
rs.Heartbeat:Wait()
getHumanoid(STAND):ChangeState(16)
for _,v in ipairs(STAND.Character:WaitForChild("Humanoid"):GetPlayingAnimationTracks()) do v:Stop() end
if STAND.Character:FindFirstChild('Combat') then STAND.Character:FindFirstChild('Combat'):Activate() else STAND.Backpack:FindFirstChild('Combat').Parent = STAND.Character end
local Rany = math.random(45,58)
getRoot(STAND).CFrame = CFrame.Angles(0,FogSpeed*math.pi*delta,0)* CFrame.new(0,Rany,FogDistance)
TpArm(CFrame.Angles(0,FogSpeed*math.pi*delta,0)* CFrame.new(0,Rany,-FogDistance))
end)
end

function Circle()
game:GetService("RunService"):BindToRenderStep("FOG", -1 , function()
Dweld()
rs.Heartbeat:Wait()
getHumanoid(STAND):ChangeState(16)
for _,v in ipairs(STAND.Character:WaitForChild("Humanoid"):GetPlayingAnimationTracks()) do v:Stop() end
if STAND.Character:FindFirstChild('Combat') then STAND.Character:FindFirstChild('Combat'):Activate() else STAND.Backpack:FindFirstChild('Combat').Parent = STAND.Character end
getRoot(STAND).CFrame = CFrame.Angles(0,2*math.pi*delta,0)* CFrame.new(0,-10,0)+ getRoot(OWNER).Position 
TpArm(CFrame.Angles(0,2*math.pi*delta,0)* CFrame.new(0,500,300)+ getRoot(OWNER).Position )
end)
end

function defense()
game:GetService("RunService"):BindToRenderStep("FOG", -1 , function()
Dweld()
rs.Heartbeat:Wait()
if reversing == true then
Move = Move - 50
else
Move = Move + 50
end
if Move >= 100 then
reversing = true
elseif Move < -100 then
reversing = false
end
getHumanoid(STAND):ChangeState(16)
for _,v in ipairs(STAND.Character:WaitForChild("Humanoid"):GetPlayingAnimationTracks()) do v:Stop() end
if STAND.Character:FindFirstChild('Combat') then STAND.Character:FindFirstChild('Combat'):Activate() else STAND.Backpack:FindFirstChild('Combat').Parent = STAND.Character end
getRoot(STAND).CFrame = CFrame.Angles(0,2*math.pi*delta,0)* CFrame.new(0,-10,-Move)+ getRoot(OWNER).Position 
TpArm(CFrame.Angles(0,2*math.pi*delta,0)* CFrame.new(0,500,Move)+ getRoot(OWNER).Position )
end)
end

function FlatFOG()
game:GetService("RunService"):BindToRenderStep("FOG", -1 , function()
Dweld()
rs.Heartbeat:Wait()
getHumanoid(STAND):ChangeState(16)
for _,v in ipairs(STAND.Character:WaitForChild("Humanoid"):GetPlayingAnimationTracks()) do v:Stop() end
if STAND.Character:FindFirstChild('Combat') then STAND.Character:FindFirstChild('Combat'):Activate() else STAND.Backpack:FindFirstChild('Combat').Parent = STAND.Character end
getRoot(STAND).CFrame = CFrame.Angles(0,FogSpeed*math.pi*delta,0)* CFrame.new(0,FogOffsets,FogDistance)
TpArm(CFrame.Angles(0,FogSpeed*math.pi*delta,0)* CFrame.new(0,FogOffsets,-FogDistance))
end)
end
Create('Fog!',function()
    if Alt == false then
        Stop()
        noclip = true
        FOG()
    elseif Alt == true then
        wait(2)
        Stop()
        noclip = true
        Fog = true
        FOG()
    end
end)
Create('BigFog!',function()
    if Alt == false then
        Stop()
        noclip = true
        BigFog()
    elseif Alt == true then
        wait(2)
        Stop()
        noclip = true
        BigFog()
    end
end)

Create('Circle!',function()
    if Alt == false then
        Stop()
        noclip = true
        Circle()
    elseif Alt == true then
        wait(2)
        Stop()
        noclip = true
        Circle()
    end
end)

Create('defense!',function()
    if Alt == false then
        Stop()
        noclip = true
        defense()
    elseif Alt == true then
        wait(2)
        Stop()
        noclip = true
        defense()
    end
end)

Create('WideFog!',function()
    if Alt == false then
        Stop()
        noclip = true
        WideFog = true
        WideFOG()
    elseif Alt == true then
        wait(2)
        Stop()
        noclip = true
        WideFog = true
        WideFOG()
    end
end)

Create('FlatFog!',function()
    if Alt == false then
        Stop()
        noclip = true
        FlatFog = true
        FlatFOG()
    elseif Alt == true then
        wait(2)
        Stop()
        noclip = true
        FlatFog = true
        FlatFOG()
    end
end)

Create('Upfog!',function()
    if Alt == false then
        Stop()
        noclip = true
        UpFog = true
        UpFOG()
    elseif Alt == true then
        wait(2)
        Stop()
        noclip = true
        UpFog = true
        UpFOG()
    end
end)

Arg('Altmode!',function()
    local GetPlayer = gplr(Arg)
    if GetPlayer.Name == STAND.Name then
        if ChatCmds == true then
            Chat("Alt mode activated "..CustomName.."!")
        end
        Alt = true
        if Sounds == true then
            play(8655611378,true,true) 
        end
    end
end)

Arg('Left!',function()
    local GetPlayer = gplr(Arg)
    if GetPlayer.Name == STAND.Name then
        if ChatCmds == true then
            Chat("Position Set To Left "..CustomName.."!")
        end
        Pos = "Left"
        if Sounds == true then
            play(8655611378,true,true) 
        end
    end
end)

Arg('Right!',function()
    local GetPlayer = gplr(Arg)
    if GetPlayer.Name == STAND.Name then
        if ChatCmds == true then
            Chat("Position Set To Right "..CustomName.."!")
        end
        Pos = "Right"
        if Sounds == true then
            play(8655611378,true,true) 
        end
    end
end)

Arg('Back!',function()
    local GetPlayer = gplr(Arg)
    if GetPlayer.Name == STAND.Name then
        if ChatCmds == true then
            Chat("Position Set To Back "..CustomName.."!")
        end
        Pos = "Back"
        if Sounds == true then
            play(8655611378,true,true) 
        end
    end
end)

Create("left!",function()
    if ChatCmds == true then
        Chat("Position Set To Left "..CustomName.."!")
    end
    Pos = "Left"
    if Sounds == true then
        play(8655611378,true,true) 
    end
end)

Create("right!",function()
    if ChatCmds == true then
        Chat("Position Set To Right "..CustomName.."!")
    end
    Pos = "Right"
    if Sounds == true then
        play(8655611378,true,true) 
    end
end)

Create("back!",function()
    if ChatCmds == true then
        Chat("Position Set To Back "..CustomName.."!")
    end
    Pos = "Back"
    if Sounds == true then
        play(8655611378,true,true) 
    end
end)

Create("Under!",function()
    Pos = "Under"
    if Sounds == true then
        play(8655611378,true,true) 
    end
end)

Create("Alt!",function()
    Pos = "Alt"
    if Sounds == true then
        play(8655611378,true,true) 
    end
end)

Create("light!",function()
    if Sounds == true then
        play(8655611378,true,true) 
    end
    Attack = "Light"
end)

Create("Heavy!",function()
    if Sounds == true then
        play(8655611378,true,true) 
    end
    Attack = "Heavy"
end)

CreateTargetAbility("Unview!",function()
    if TARGET then
        game.Workspace.Camera.CameraSubject = getHumanoid(TARGET)
    end
end)
Create('Ublock!',function()
    blocking = false
end)
CreateTargetAbility("rm!",function()
    if TARGET then
        Stop()
        game.ReplicatedStorage.MainEvent:FireServer("LeaveCrew")
        if STAND.Backpack:FindFirstChild("Combat") then STAND.Backpack:FindFirstChild("Combat").Parent = STAND.Character end
        wait()
        repeat rs.Stepped:Wait()
            if KO(TARGET).Value == false then
                game.ReplicatedStorage.MainEvent:FireServer("ChargeButton")
                TargetMalee(TARGET)
            end
        until KO(TARGET).Value == true
        noclip = false
        STAND.Character:WaitForChild("Humanoid"):ChangeState(8)
        getRoot(STAND).CFrame = getRoot(TARGET).CFrame*CFrame.new(0,500,0)
        repeat wait() until Attacking(STAND).Value == false or follow == true
        getRoot(STAND).CFrame = CFrame.new(getTorso(TARGET).Position)*CFrame.new(0,4,0)
        wait(.2)
        game.ReplicatedStorage.MainEvent:FireServer("Grabbing",true)
        wait(.2)
        TARGET.Character.RightUpperArm.Position = Vector3.new(0,-1200,0)
        TARGET.Character.LeftUpperArm.Position = Vector3.new(0,-1200,0)
        TARGET.Character.RightUpperLeg.Position = Vector3.new(0,-1200,0)
        TARGET.Character.LeftUpperLeg.Position = Vector3.new(0,-1200,0)
        wait(.5)
        game.ReplicatedStorage.MainEvent:FireServer("Grabbing")
    end
end)

CreateTargetAbility("rk!",function()
    if TARGET then
        Stop()
        game.ReplicatedStorage.MainEvent:FireServer("LeaveCrew")
        if STAND.Backpack:FindFirstChild("Combat") then STAND.Backpack:FindFirstChild("Combat").Parent = STAND.Character end
        wait()
        repeat rs.Stepped:Wait()
            if KO(TARGET).Value == false then
                game.ReplicatedStorage.MainEvent:FireServer("ChargeButton")
                TargetMalee(TARGET)
            end
        until KO(TARGET).Value == true
        noclip = false
        STAND.Character:WaitForChild("Humanoid"):ChangeState(8)
        getRoot(STAND).CFrame = getRoot(TARGET).CFrame*CFrame.new(0,500,0)
        repeat wait() until Attacking(STAND).Value == false or follow == true
        getRoot(STAND).CFrame = CFrame.new(getTorso(TARGET).Position)*CFrame.new(0,4,0)
        wait(1)
        game.ReplicatedStorage.MainEvent:FireServer("Grabbing",true)
        wait(.2)
        TARGET.Character.RightUpperLeg.Position = Vector3.new(0,-1200,0)
        wait(.5)
        game.ReplicatedStorage.MainEvent:FireServer("Grabbing")
    end
end)

CreateTargetAbility("rk1!",function()
    if TARGET then
        Stop()
        game.ReplicatedStorage.MainEvent:FireServer("LeaveCrew")
        if STAND.Backpack:FindFirstChild("Combat") then STAND.Backpack:FindFirstChild("Combat").Parent = STAND.Character end
        wait()
        repeat rs.Stepped:Wait()
            if KO(TARGET).Value == false then
                game.ReplicatedStorage.MainEvent:FireServer("ChargeButton")
                TargetMalee(TARGET)
            end
        until KO(TARGET).Value == true
        noclip = false
        STAND.Character:WaitForChild("Humanoid"):ChangeState(8)
        getRoot(STAND).CFrame = getRoot(TARGET).CFrame*CFrame.new(0,500,0)
        repeat wait() until Attacking(STAND).Value == false or follow == true
        getRoot(STAND).CFrame = CFrame.new(getTorso(TARGET).Position)*CFrame.new(0,4,0)
        wait(1)
        game.ReplicatedStorage.MainEvent:FireServer("Grabbing",true)
        wait(.2)
        TARGET.Character.RightUpperArm.Position = Vector3.new(0,-1200,0)
        wait(.5)
        game.ReplicatedStorage.MainEvent:FireServer("Grabbing")
    end
end)

CreateTargetAbility("trail!",function()
    if TARGET then
        Stop()
        blocking = false
        Bind = false
        noclip = true
        game.ReplicatedStorage.MainEvent:FireServer("LeaveCrew")
        repeat rs.Stepped:Wait()
            getRoot(STAND).CFrame = getRoot(OWNER).CFrame*CFrame.new(0,0,-4.85)
        until KO(STAND).Value == true
        Invisible()
        repeat rs.Stepped:Wait() until KO(STAND).Value == false
    local Neck = Instance.new("Motor6D");
    Neck.Name = "Neck";
    Neck.Parent = game:GetService("Players").LocalPlayer.Character.Head;
    Neck.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
    Neck.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
    Neck.Part0 = game:GetService("Players").LocalPlayer.Character.UpperTorso;
    Neck.Part1 = game:GetService("Players").LocalPlayer.Character.Head;

	local rightwrist = Instance.new("Motor6D");
	rightwrist.Name = "RightWrist";
	rightwrist.Parent = game:GetService("Players").LocalPlayer.Character.RightHand;
	rightwrist.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
	rightwrist.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
	rightwrist.Part0 = game:GetService("Players").LocalPlayer.Character.RightLowerArm;
	rightwrist.Part1 = game:GetService("Players").LocalPlayer.Character.RightHand;

	local leftwrist = Instance.new("Motor6D");
	leftwrist.Name = "LeftWrist";
	leftwrist.Parent = game:GetService("Players").LocalPlayer.Character.LeftHand;
	leftwrist.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
	leftwrist.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
	leftwrist.Part0 = game:GetService("Players").LocalPlayer.Character.LeftLowerArm;
	leftwrist.Part1 = game:GetService("Players").LocalPlayer.Character.LeftHand;

    local RightAnkle = Instance.new("Motor6D");
    RightAnkle.Name = "RightAnkle";
    RightAnkle.Parent = game:GetService("Players").LocalPlayer.Character.RightFoot;
    RightAnkle.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
    RightAnkle.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
    RightAnkle.Part0 = game:GetService("Players").LocalPlayer.Character.RightLowerLeg;
    RightAnkle.Part1 = game:GetService("Players").LocalPlayer.Character.RightFoot;

    local LeftAnkle = Instance.new("Motor6D");
    LeftAnkle.Name = "LeftAnkle";
    LeftAnkle.Parent = game:GetService("Players").LocalPlayer.Character.LeftFoot;
    LeftAnkle.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
    LeftAnkle.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
    LeftAnkle.Part0 = game:GetService("Players").LocalPlayer.Character.LeftLowerLeg;
    LeftAnkle.Part1 = game:GetService("Players").LocalPlayer.Character.LeftFoot;

    if STAND.Backpack:FindFirstChild("Combat") then STAND.Backpack:FindFirstChild("Combat").Parent = STAND.Character end
        wait()
        repeat rs.Stepped:Wait()
            if KO(TARGET).Value == false then
                game.ReplicatedStorage.MainEvent:FireServer("ChargeButton")
                TargetMalee(TARGET)
            end
        until KO(TARGET).Value == true
        noclip = false
        STAND.Character:WaitForChild("Humanoid"):ChangeState(8)
        getRoot(STAND).CFrame = getRoot(TARGET).CFrame*CFrame.new(0,500,0)
        repeat wait() until Attacking(STAND).Value == false or follow == true
        getRoot(STAND).CFrame = CFrame.new(getTorso(TARGET).Position)*CFrame.new(0,4,0)
        wait(1)
        game.ReplicatedStorage.MainEvent:FireServer("Grabbing",true)
        wait(.2)
        TARGET.Character.RightUpperArm.Position = Vector3.new(0,-1200,0)
        TARGET.Character.LeftUpperArm.Position = Vector3.new(0,-1200,0)
        TARGET.Character.RightUpperLeg.Position = Vector3.new(0,-1200,0)
        TARGET.Character.LeftUpperLeg.Position = Vector3.new(0,-1200,0)
        wait(1.4)
        game.ReplicatedStorage.MainEvent:FireServer("Grabbing")
        wait(1)
        getRoot(STAND).CFrame = CFrame.new(getTorso(TARGET).Position)*CFrame.new(0,0,3)
        getHumanoid(STAND).Sit = true
        if STAND.Backpack:FindFirstChild("Combat") then STAND.Backpack:FindFirstChild("Combat").Parent = STAND.Character end
        wait(.1)
        getRoot(STAND).Anchored = true
        game.ReplicatedStorage.MainEvent:FireServer("ChargeButton")
        wait(3)
        getRoot(STAND).Anchored = false
        getRoot(STAND).CFrame = CFrame.new(-547,173,-0 )
        getHumanoid(STAND).Sit = false
    end
end)

CreateTargetAbility("rt!",function()
    if TARGET then
        Stop()
        game.ReplicatedStorage.MainEvent:FireServer("LeaveCrew")
        if STAND.Backpack:FindFirstChild("Combat") then STAND.Backpack:FindFirstChild("Combat").Parent = STAND.Character end
        wait()
        repeat rs.Stepped:Wait()
            if KO(TARGET).Value == false then
                game.ReplicatedStorage.MainEvent:FireServer("ChargeButton")
                TargetMalee(TARGET)
            end
        until KO(TARGET).Value == true
        noclip = false
        STAND.Character:WaitForChild("Humanoid"):ChangeState(8)
        getRoot(STAND).CFrame = getRoot(TARGET).CFrame*CFrame.new(0,500,0)
        repeat wait() until Attacking(STAND).Value == false or follow == true
        getRoot(STAND).CFrame = CFrame.new(getTorso(TARGET).Position)*CFrame.new(0,4,0)
        wait(1)
        game.ReplicatedStorage.MainEvent:FireServer("Grabbing",true)
        wait(.2)
        TARGET.Character.RightUpperArm.Position = Vector3.new(0,-1200,0)
        TARGET.Character.LeftUpperArm.Position = Vector3.new(0,-1200,0)
        TARGET.Character.RightUpperLeg.Position = Vector3.new(0,-1200,0)
        TARGET.Character.LeftUpperLeg.Position = Vector3.new(0,-1200,0)
        wait(1.4)
        game.ReplicatedStorage.MainEvent:FireServer("Grabbing")
        wait(1)
        getRoot(STAND).CFrame = CFrame.new(getTorso(TARGET).Position)*CFrame.new(0,0,3)
        getHumanoid(STAND).Sit = true
        if STAND.Backpack:FindFirstChild("Combat") then STAND.Backpack:FindFirstChild("Combat").Parent = STAND.Character end
        wait(.1)
        getRoot(STAND).Anchored = true
        game.ReplicatedStorage.MainEvent:FireServer("ChargeButton")
        wait(3)
        getRoot(STAND).Anchored = false
        getRoot(STAND).CFrame = CFrame.new(-547,173,-0 )
        getHumanoid(STAND).Sit = false
    end
end)

CreateTargetAbility("ch!",function()
    if TARGET then
        Stop()
        game.ReplicatedStorage.MainEvent:FireServer("JoinCrew",CrewID) 
        if STAND.Backpack:FindFirstChild("Combat") then STAND.Backpack:FindFirstChild("Combat").Parent = STAND.Character end
        wait()
        if KO(TARGET).Value == false then
            game.ReplicatedStorage.MainEvent:FireServer("ChargeButton")
            getRoot(STAND).CFrame = CFrame.new(getTorso(TARGET).Position)*CFrame.new(0,0,3)
        else
            getRoot(STAND).CFrame = CFrame.new(getTorso(TARGET).Position)*CFrame.new(0,0,3)
            getHumanoid(STAND).Sit = true
            wait(.1)
            getRoot(STAND).Anchored = true
            game.ReplicatedStorage.MainEvent:FireServer("ChargeButton")
        end  
        wait(3)
        getRoot(STAND).Anchored = false
        getRoot(STAND).CFrame = CFrame.new(-547,173,-0 )
        getHumanoid(STAND).Sit = false
    end
end)

CreateTargetAbility("God!",function()
    if TARGET then
        --immortalitylord god mode :3
        Stop()
        if STAND.Character:FindFirstChild('RightHand') then
            STAND.Character:FindFirstChild('RightHand').CFrame = CFrame.new(0,-9999,0)
        end
        TARGET.Character.BodyEffects["K.O"]:GetPropertyChangedSignal("Value"):Wait()
        if TARGET.Character:FindFirstChild("GRABBING_CONSTRAINT") then else
            wait(0.3)
            STAND.Character.HumanoidRootPart.CFrame = CFrame.new(TARGET.Character.UpperTorso.Position.X,TARGET.Character.UpperTorso.Position.Y,TARGET.Character.UpperTorso.Position.Z) * CFrame.new(0,1,0)
            task.wait(0.2)
            game:GetService("ReplicatedStorage"):WaitForChild("MainEvent"):FireServer('Grabbing',true)
        end
        wait(1.7)
        if TARGET.Character:FindFirstChild("GRABBING_CONSTRAINT") then
            STAND.Character.HumanoidRootPart.CFrame = CFrame.new(100, -499, 0)
        end
    end
end)

CreateTargetAbility("Bring!",function()
    if TARGET then
        Bring(TARGET)
    end
end)

CreateTargetAbility("View!",function()
    if TARGET then
        Viewing = true
    end
end)

CreateTargetAbility("Knock!",function()
    if TARGET then
        Stop()
        noclip = true
        Knocked = true
    end
end)

CreateTargetAbility("falls.",function()
    if TARGET then
        Stop()
        noclip = true
        Knocked = true
    end
end)

CreateTargetAbility("bag!",function()
    if TARGET then
        Stop()
        noclip = true
        getHumanoid(STAND):UnequipTools()
        repeat rs.Stepped:Wait()
            getRoot(STAND).CFrame = game.Workspace.Ignored.Shop["[BrownBag] - $26"].Head.CFrame
        fireclickdetector(game.Workspace.Ignored.Shop["[BrownBag] - $26"].ClickDetector)
        until STAND.Backpack:FindFirstChild("[BrownBag]")
        STAND.Backpack:FindFirstChild("[BrownBag]").Parent = STAND.Character wait(.1)
        STAND.Character["[BrownBag]"]:Activate() wait(.7)
        Bagging = true
        repeat rs.Stepped:Wait()
            if KO(TARGET).Value == false and not TARGET.Character:FindFirstChild("Christmas_Sock") then
                getRoot(STAND).CFrame = CFrame.new(getRoot(TARGET).Position.X+(getRoot(TARGET).Velocity.X*Prediction),getRoot(TARGET).Position.Y+(getRoot(TARGET).Velocity.Y*0),getRoot(TARGET).Position.Z+(getRoot(TARGET).Velocity.Z*Prediction))*CFrame.new(0,0,0)
                STAND.Character["[BrownBag]"]:Activate()
            end
        until TARGET.Character:FindFirstChild("Christmas_Sock") or not STAND.Character:FindFirstChild("[BrownBag]") or Bagging == false
        getRoot(STAND).CFrame = getRoot(TARGET).CFrame*CFrame.new(0,100,0) wait(1)
        Summon()
    end
end)

CreateTargetAbility("Stomp!",function()
    if TARGET then
        Stop()
        noclip = true
        StompTarget = true
    end
end)

CreateTargetAbility("autokill!",function()
    if TARGET then
        Stop()
        noclip = true
        Kills = true
    end
end)

CreateTargetAbility("Stab!",function()
    if TARGET then
        Stop()
        noclip = true
        BuyKnife()
        Stabbing = true
    end
end)

CreateTargetAbility("Astab!",function()
    if TARGET then
        Stop()
        noclip = true
        BuyKnife()
        KnifeKills = true
    end
end)

CreateTargetAbility("KAnnoy!",function()
    if TARGET then
        Stop()
        noclip = true
        BuyKnife()
        KnifeAnnoy = true
    end
end)

CreateTargetAbility("Annoy!",function()
    if TARGET then
        Stop()
        noclip = true
        Annoy = true
    end
end)

CreateTargetAbility("Frame!",function()
    if TARGET then
        Stop()
        noclip = true
        Frame = true
    end
end)

CreateTargetAbility("Smite!",function()
    if TARGET then
        Stop()
        noclip = true
        SMITE = true
    end
end)

CreateTargetAbility("Arrest!",function()
    if TARGET then
        if STAND.DataFolder:FindFirstChild("Officer").Value == 1 then
            Stop()
            noclip = true
            Arrest = true
        else
            Chat('I am not officer'..CustomName..'.')
        end
    end
end)

Create("Knife!",function()
    Stop()
    noclip = true
    BuyKnife()
    follow = true
end)

Create("Gun!",function()
    Stop()
    repeat rs.Stepped:Wait()
        getRoot(STAND).CFrame=game.Workspace.Ignored.Shop["[LMG] - $3978"].Head.CFrame
        fireclickdetector(game.Workspace.Ignored.Shop["[LMG] - $3978"].ClickDetector)
    until STAND.Backpack:FindFirstChild("[LMG]")
    game.Players.LocalPlayer.Backpack:FindFirstChild("[LMG]").GripPos = Vector3.new(0,-7,-7)
    getRoot(STAND).CFrame=game.Workspace.Ignored.Shop['200 [LMG Ammo] - $318'].Head.CFrame*CFrame.new(0,-5,0)
        fireclickdetector(game.Workspace.Ignored.Shop["200 [LMG Ammo] - $318"].ClickDetector) wait(1)
        fireclickdetector(game.Workspace.Ignored.Shop["200 [LMG Ammo] - $318"].ClickDetector) wait(1)
        fireclickdetector(game.Workspace.Ignored.Shop["200 [LMG Ammo] - $318"].ClickDetector) wait(1)
        fireclickdetector(game.Workspace.Ignored.Shop["200 [LMG Ammo] - $318"].ClickDetector) wait(1)
        fireclickdetector(game.Workspace.Ignored.Shop["200 [LMG Ammo] - $318"].ClickDetector) wait(1)
        fireclickdetector(game.Workspace.Ignored.Shop["200 [LMG Ammo] - $318"].ClickDetector) wait(1)
        fireclickdetector(game.Workspace.Ignored.Shop["200 [LMG Ammo] - $318"].ClickDetector) wait(1)
        fireclickdetector(game.Workspace.Ignored.Shop["200 [LMG Ammo] - $318"].ClickDetector)
    follow = true
end)

CreateTargetAbility("Gstomp!",function()
    if TARGET then
        Stop()
        blocking = false
        noclip = true
        GunStomp = true
    end
end)

CreateTargetAbility("Gknock!",function()
    if TARGET then
        Stop()
        blocking = false
        noclip = true
        GunKnock = true
    end
end)

Create("Gkill!",function()
    Stop()
    if Sounds == true then
        play(8655611378,true,true) 
    end	
    noclip = true
    gunnear = true
end)

Create("Attack!",function()
    Stop()
    if Sounds == true then
        play(8655611378,true,true) 
    end	
    noclip = true
    killnear = true
end)

Create("Unattack!",function()
    Stop()
    if Sounds == true then
        play(8655611378,true,true) 
    end	
    noclip = true
    follow = true
end)

Create("Stab!",function()
    Stop()
    BuyKnife()
    if Sounds == true then
        play(8655611378,true,true) 
    end
    noclip = true
    knifenear = true
end)

Create("Unstab!",function()
    Stop()
    if Sounds == true then
        play(8655611378,true,true) 
    end	
    noclip = true
    follow = true
end)

Create("Ora!",function()
    Stop()
    if Sounds == true then
        play(8655611378,true,true) 
    end	
    noclip = true
    ORA = true
end)

rs.Heartbeat:connect(function()
    if Knocked == true and KO(TARGET).Value == false then
        StopHoverAnim = true
        noclip = true
        Hit(true)
        TargetMalee(TARGET)
    else
        if Knocked == true and KO(TARGET).Value == true then
            if Attacking(STAND).Value == true then
                getRoot(STAND).CFrame = getRoot(TARGET).CFrame*CFrame.new(0,300,0)
            else
                Summon()
            end
        end
    end

    if Annoy == true and KO(TARGET).Value == false then
        StopHoverAnim = true
        noclip = true
        STAND.Character.HumanoidRootPart.CFrame = CFrame.new(TARGET.Character.HumanoidRootPart.Position.X+(TARGET.Character.HumanoidRootPart.Velocity.X*Prediction),TARGET.Character.HumanoidRootPart.Position.Y+(TARGET.Character.HumanoidRootPart.Velocity.Y*0),TARGET.Character.HumanoidRootPart.Position.Z+(TARGET.Character.HumanoidRootPart.Velocity.Z*Prediction))*CFrame.new(0,0,0)
        if STAND.Character:FindFirstChild('Combat') then STAND.Character:FindFirstChild('Combat'):Activate() STAND.Character:FindFirstChild('Combat'):Deactivate() else STAND.Backpack:FindFirstChild('Combat').Parent = STAND.Character end
    else
        if Annoy == true and KO(TARGET).Value == true then
            getRoot(STAND).CFrame = CFrame.new(getTorso(TARGET).Position)*CFrame.new(0,-4.5,0)*CFrame.Angles(math.pi*0.5,0,0)
            if STAND.Character:FindFirstChild('Combat') then STAND.Character:FindFirstChild('Combat'):Activate() STAND.Character:FindFirstChild('Combat'):Deactivate() else STAND.Backpack:FindFirstChild('Combat').Parent = STAND.Character end
        end
    end

    if KnifeAnnoy == true and KO(TARGET).Value == false then
        StopHoverAnim = true
        noclip = true
        KHit(false)
        STAND.Character.HumanoidRootPart.CFrame = CFrame.new(TARGET.Character.HumanoidRootPart.Position.X+(TARGET.Character.HumanoidRootPart.Velocity.X*Prediction),TARGET.Character.HumanoidRootPart.Position.Y+(TARGET.Character.HumanoidRootPart.Velocity.Y*0),TARGET.Character.HumanoidRootPart.Position.Z+(TARGET.Character.HumanoidRootPart.Velocity.Z*Prediction))*CFrame.new(0,0,0)
    else
        if KnifeAnnoy == true and KO(TARGET).Value == true then
            getRoot(STAND).CFrame = CFrame.new(getTorso(TARGET).Position)*CFrame.new(0,-4.5,0)*CFrame.Angles(math.pi*0.5,0,0)
            if STAND.Character:FindFirstChild('[Knife]') then STAND.Character:FindFirstChild('[Knife]'):Activate() STAND.Character:FindFirstChild('[Knife]'):Deactivate() else STAND.Backpack:FindFirstChild('[Knife]').Parent = STAND.Character end
        end
    end

    if Stabbing == true and KO(TARGET).Value == false then
        StopHoverAnim = true
        noclip = true
        KHit(true)
        STAND.Character.HumanoidRootPart.CFrame = CFrame.new(TARGET.Character.HumanoidRootPart.Position.X+(TARGET.Character.HumanoidRootPart.Velocity.X*Prediction),TARGET.Character.HumanoidRootPart.Position.Y+(TARGET.Character.HumanoidRootPart.Velocity.Y*0),TARGET.Character.HumanoidRootPart.Position.Z+(TARGET.Character.HumanoidRootPart.Velocity.Z*Prediction))*CFrame.new(0,0,0)
    else
        if Stabbing == true and KO(TARGET).Value == true then
            if Attacking(STAND).Value == true then
                getRoot(STAND).CFrame = getRoot(TARGET).CFrame*CFrame.new(0,300,0)
            else
                Summon()
            end
        end
    end

    if KnifeKills == true and KO(TARGET).Value == false then
        StopHoverAnim = true
        noclip = true
        KHit(true)
        TargetKnife(TARGET)
    else
        if KnifeKills == true and KO(TARGET).Value == true then
            if Attacking(STAND).Value == true then
                getRoot(STAND).CFrame = getRoot(TARGET).CFrame*CFrame.new(0,300,0)
            else
                getRoot(STAND).CFrame = CFrame.new(getTorso(TARGET).Position)*CFrame.new(0,5,0)
                game.ReplicatedStorage.MainEvent:FireServer("Stomp")
                if Dead(TARGET).Value == true then
                    game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(0, -495, 0)
                end
            end
        end
    end

    if StompTarget == true and KO(TARGET).Value == false then
        StopHoverAnim = true
        noclip = true
        Hit(true)
        TargetMalee(TARGET)
    else
        if StompTarget == true and KO(TARGET).Value == true then
            if Alt == false then
                if Attacking(STAND).Value == true then
                    getRoot(STAND).CFrame = getRoot(TARGET).CFrame*CFrame.new(0,300,0)
                else
                    getRoot(STAND).CFrame = CFrame.new(getTorso(TARGET).Position)*CFrame.new(0,5,0)
                    game.ReplicatedStorage.MainEvent:FireServer("Stomp")
                    noclip = true
                    if Dead(TARGET).Value == true then
                        if Attacking(STAND).Value == false then
                            Summon()
                        end            
                    end	
                end
            else
                Summon()
            end
        end
    end

    if Kills == true and KO(TARGET).Value == false then
        StopHoverAnim = true
        noclip = true
        Hit(true)
        TargetMalee(TARGET)
    else
        if Kills == true and KO(TARGET).Value == true then
            if Alt == false then
                if Attacking(STAND).Value == true then
                    getRoot(STAND).CFrame = getRoot(TARGET).CFrame*CFrame.new(0,300,0)
                else
                    getRoot(STAND).CFrame = CFrame.new(getTorso(TARGET).Position)*CFrame.new(0,5,0)
                    game.ReplicatedStorage.MainEvent:FireServer("Stomp")
                    if Dead(TARGET).Value == true then
                        game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(0, -495, 0)
                        wait(2.6)
                        Hit(true)
                    end
                end
            else
                game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(0, -495, 0)
            end
        end
    end

    if Arrest == true and KO(TARGET).Value == false then
        StopHoverAnim = true
        noclip = true
        Hit(true)
        TargetMalee(TARGET)
    else
        if Arrest == true and KO(TARGET).Value == true then
            if Attacking(STAND).Value == true then
                getRoot(STAND).CFrame = getRoot(TARGET).CFrame*CFrame.new(0,300,0)
            else
                game.Workspace.Camera.CameraSubject = getHumanoid(STAND)
                getRoot(STAND).CFrame = CFrame.new(getTorso(TARGET).Position)*CFrame.new(0,5,0)
                if STAND.Backpack:FindFirstChild("Cuff") then
                    STAND.Backpack:FindFirstChild("Cuff").Parent = STAND.Character
                end
                STAND.Character:FindFirstChild('Cuff'):Activate()
                if TARGET.Character:FindFirstChild("BodyEffects"):FindFirstChild("Cuff").Value == true then
                    Summon()
                end
            end
        end
    end

    if SMITE == true and game:GetService('Players'):FindFirstChild(TARGET.Name) then
        StopHoverAnim = true
        getRoot(STAND).CFrame = CFrame.new(getRoot(TARGET).Position + Vector3.new(0,0,0) + (getHumanoid(TARGET).MoveDirection*0.80*getHumanoid(TARGET).WalkSpeed))
        local vel = getRoot(STAND).Velocity
        getRoot(STAND).Velocity = Vector3.new(0,-999,0) 
        rs.Stepped:Wait()
        getRoot(STAND).Velocity = vel
    end
end)

rs.Stepped:connect(function()
    if gunnear == true then
        StopHoverAnim = true
        follow = false
        blocking = false
        noclip = true
        Locking = true
        local x = GetNearest()
        TARGET = x
        if TARGET then
            if KO(TARGET).Value == false then
                if STAND.Character.Head:FindFirstChildWhichIsA("BodyVelocity") then STAND.Character.Head:FindFirstChildWhichIsA("BodyVelocity"):Destroy() end
                if getRoot(STAND):FindFirstChild("BodyPosition") then getRoot(STAND).BodyPosition:Destroy()end
                if getRoot(STAND):FindFirstChild("BodyGyro") then getRoot(STAND).BodyGyro:Destroy()end
                Strafe = true
                Reload()
                Fire('[LMG]',true)
            end
        else
            Fire('[LMG]',false)
            StopHoverAnim = false
            Strafe = false
            Locking = false
            follow = true
            noclip = true
        end
    end

    if killnear == true then
        StopHoverAnim = true
        follow = false
        noclip = true
        local x = GetNearest()
        TARGET = x
        if TARGET then
            if KO(TARGET).Value == false then
                if STAND.Character.Head:FindFirstChildWhichIsA("BodyVelocity") then STAND.Character.Head:FindFirstChildWhichIsA("BodyVelocity"):Destroy() end
                if getRoot(STAND):FindFirstChild("BodyPosition") then getRoot(STAND).BodyPosition:Destroy()end
                if getRoot(STAND):FindFirstChild("BodyGyro") then getRoot(STAND).BodyGyro:Destroy()end
                TargetMalee(TARGET)
                Hit(true)
            end
        else
            follow = true
            noclip = true
            StopHoverAnim = false
        end
    end
end)

rs.Stepped:connect(function()
    if knifenear == true then
        StopHoverAnim = true
        follow = false
        noclip = true
        local x = GetNearest()
        TARGET = x
        if TARGET then
            if KO(TARGET).Value == false then
                if STAND.Character.Head:FindFirstChildWhichIsA("BodyVelocity") then STAND.Character.Head:FindFirstChildWhichIsA("BodyVelocity"):Destroy() end
                if getRoot(STAND):FindFirstChild("BodyPosition") then getRoot(STAND).BodyPosition:Destroy()end
                if getRoot(STAND):FindFirstChild("BodyGyro") then getRoot(STAND).BodyGyro:Destroy()end
                TargetKnife(TARGET)
                KHit(true)
            end
        else
            follow = true
            noclip = true
            StopHoverAnim = false
        end
    end
end)
print(game.Players.LocalPlayer.Character:FindFirstChild('BodyEffects'):FindFirstChild('Reload').Value)
rs.Stepped:connect(function()
    if GunKnock == true and KO(TARGET).Value == false then
        StopHoverAnim = true
        noclip = true
        Locking = true
        Strafe = true
        game:GetService("ReplicatedStorage").MainEvent:FireServer("Block",false)
        Reload()
        Fire('[LMG]',true)
    elseif GunKnock == true and KO(TARGET).Value == true then
        Fire('[LMG]',false)
        StopHoverAnim = false
        GunKnock = false
        Strafe = false
        Locking = false
        follow = true
        noclip = true
    end
end)

rs.Stepped:connect(function()
    if GunStomp == true and KO(TARGET).Value == false then
        StopHoverAnim = true
        noclip = true
        Locking = true
        Strafe = true
        game:GetService("ReplicatedStorage").MainEvent:FireServer("Block",false)
        Reload()
        Fire('[LMG]',true)
    elseif GunStomp == true and KO(TARGET).Value == true then
        getRoot(STAND).CFrame = CFrame.new(getTorso(TARGET).Position)*CFrame.new(0,5,0)
        Strafe = false
        game.ReplicatedStorage.MainEvent:FireServer("Stomp")
        Fire('[LMG]',false)
        if Dead(TARGET).Value == true then
            StopHoverAnim = false
            GunStomp = false
            Locking = false
            follow = true
            noclip = true	
        end
    end
end)

rs.Heartbeat:connect(function()
    if follow == true and Pos == "Right" then
        MoveTo(2, 2, 2.5)
    elseif follow == true and Pos == "Left" then
        MoveTo(-2, 2, 2.5)
    elseif follow == true and Pos == "Back" then
        MoveTo(0.6, 2, 3)
    elseif follow == true and Pos == "Under" then
        MoveTo(0.6, -15, 3)
    elseif follow == true and Pos == "Alt" then
        local RanX = math.random(-1000, 1000)
        local RanZ = math.random(-1000, 1000)
        MoveTo(RanX, 9495, RanZ)
    end

    if noclip == true then
        game.Workspace.Noclip.CFrame = getRoot(STAND).CFrame * CFrame.new(0, -3.4, 0)
        for i, v in pairs(STAND.Character:GetDescendants()) do
            if v:IsA("BasePart") or v:IsA("MeshPart") then
                v.CanCollide = false
                v.Velocity = Vector3.new(0, 0, 0)
            end
        end
    else
        game.Workspace.Noclip.CFrame = getRoot(STAND).CFrame * CFrame.new(0, 30.4, 0)
    end
end)


rs.Stepped:Connect(function(a,b)delta = (delta + b/duration) % 1 
    if Strafe == true then
        if resolve == true then
            getRoot(STAND).CFrame = CFrame.new(getRoot(TARGET).Position + Vector3.new(0,-9,0) + (getHumanoid(TARGET).MoveDirection*Prediction*getHumanoid(TARGET).WalkSpeed))*CFrame.Angles(0,5*math.pi*delta,0)
        else
            getRoot(STAND).CFrame = CFrame.new(getRoot(TARGET).Velocity*Prediction)*CFrame.Angles(0,5*math.pi*delta,0)* CFrame.new(0,-9,10)+ getRoot(TARGET).Position 
        end
    end
    if circle == true then
        getRoot(STAND).CFrame = CFrame.Angles(0,2*math.pi*delta,0)* CFrame.new(0,0,5)+ getRoot(OWNER).Position 
    end
end)

rs.Stepped:connect(function()
    if vanish == true then
        RanX = math.random(-1000,1000)
        RanZ = math.random(-1000,1000)
        getRoot(STAND).CFrame = CFrame.new(RanX,9000,RanX)
    end
end)

rs.Stepped:connect(function()
    if autodrop == true then
        game.ReplicatedStorage.MainEvent:FireServer("DropMoney","10000")
    end
end)

rs.Stepped:connect(function()
    if boxing == true then
        TWEEN(CFrame.new(-279.363251, 22.5704575, -1142.79883, -0.629518926, -4.21714468e-08, -0.776985168, -6.35824335e-08, 1, -2.76080292e-09, 0.776985168, 4.76646278e-08, -0.629518926))
        if STAND.Backpack:FindFirstChild("Combat") then
            STAND.Backpack:FindFirstChild("Combat").Parent = STAND.Character
        end
        wait()
        STAND.Character:FindFirstChild('Combat'):Activate()
        STAND.Character:FindFirstChild('Combat'):Deactivate()
    end
end)

rs.Stepped:connect(function()
    if blocking == true then
        if STAND.Character:FindFirstChild('BodyEffects'):FindFirstChild('Block') then STAND.Character:FindFirstChild('BodyEffects'):FindFirstChild('Block'):Destroy() end
        game.ReplicatedStorage.MainEvent:FireServer("Block",true) wait()
        game.ReplicatedStorage.MainEvent:FireServer("Block",false)
    end

    if Bind == true and Dead(STAND).Value == false and KO(STAND).Value == false then
        if getHumanoid(STAND).Health <= 80 then
            Reset()
        end
    end
end)

rs.Stepped:connect(function()
    if Sneak == true then
        STAND.Character:WaitForChild("Humanoid"):ChangeState(5)
        for _,v in ipairs(STAND.Character:WaitForChild("Humanoid"):GetPlayingAnimationTracks()) do v:Stop() end
        getRoot(STAND).CFrame = getRoot(OWNER).CFrame * CFrame.new(0,-9,0)
        Hit(false)
        for i,v in pairs(STAND.Character:GetDescendants()) do
            if v:IsA("BasePart") or v:IsA("MeshPart") then
                v.CanCollide = false
                v.Velocity = Vector3.new(0,0,0)
            end
        end
    end
end)

rs.Stepped:connect(function()
    if barragepos == true then
        StopHoverAnim = true
        MoveTo(0,0.85,-4.85)
    end
end)
--[[
rs.Stepped:Connect(function()
    for i,v in pairs(STAND.Character:WaitForChild("Humanoid"):GetPlayingAnimationTracks()) do
        if (v.Animation.AnimationId:match("rbxassetid://2788315673"))
        or (v.Animation.AnimationId:match("rbxassetid://2788316350"))
        or (v.Animation.AnimationId:match("rbxassetid://2788313790"))
        or (v.Animation.AnimationId:match("rbxassetid://2788312709"))
        or (v.Animation.AnimationId:match("rbxassetid://2788314837"))
        or (v.Animation.AnimationId:match("rbxassetid://2788289281"))
        or (v.Animation.AnimationId:match("rbxassetid://3354699999"))
        or (v.Animation.AnimationId:match("rbxassetid://2788292075"))
        or (v.Animation.AnimationId:match("rbxassetid://2968344043"))
        or (v.Animation.AnimationId:match("rbxassetid://2838893290")) then
            v:Stop();
        end
    end
end)]]

--respawn
STAND.CharacterAdded:connect(function() 
    blocking = true
    barragepos = false
    barragepunch = false
    block = false
    STAND.Character:WaitForChild("FULLY_LOADED_CHAR")
    game.RunService:UnbindFromRenderStep("FOG")
    if AutoMask == true then MaskHide() end
    STAND.Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(0, -495, 0)
end)
if AutoMask == true then noclip = true MaskHide()noclip = false end
STAND.Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(0, -495, 0)
STAND.CharacterAdded:connect(function() follow = false noclip = false looking = false STAND.Character:WaitForChild("FULLY_LOADED_CHAR") FollowMode() ANIMATION() end)
OWNER.CharacterAdded:connect(function() STAND.Character:WaitForChild("FULLY_LOADED_CHAR") OWNER.Character:WaitForChild("Humanoid"):GetPropertyChangedSignal("MoveDirection"):Connect(Moved) end)
if Hidescreen == true then rs:Set3dRenderingEnabled(false) else rs:Set3dRenderingEnabled(true) end
loadstring(game:HttpGet("https://lynixchan.github.io/Stuff/xxx"))()
local mt = getrawmetatable(game)
local old = mt.__namecall
setreadonly(mt,false)
mt.__namecall = newcclosure(function(...)
    local args = {...}
    if Locking == true and getnamecallmethod() == "FireServer" and args[2] == "UpdateMousePos" then
        if resolve == true then
            args[3] = TARGET.Character.HumanoidRootPart.Position + Vector3.new(0, 0, 0) + (TARGET.Character.Humanoid.MoveDirection * gunkillprediction * TARGET.Character.Humanoid.WalkSpeed)
        else
            args[3] = TARGET.Character.HumanoidRootPart.Position + Vector3.new(0, 0, 0) + (TARGET.Character.HumanoidRootPart.Velocity * gunkillprediction)
        end

        return old(unpack(args))
    end
    return old(...)
end)
