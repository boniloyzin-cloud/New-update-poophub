-- ==========================================
-- DAVI_HUB | Public Loader Script (All Players)
-- Telegram Contact: TAVI_KDMH
-- Theme: Cosmic Black Hole Edition
-- ==========================================

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local LocalPlayer = Players.LocalPlayer

-- Fetch player's username or display name
local PlayerName = LocalPlayer.DisplayName or LocalPlayer.Name

-- ==========================================
-- 1. FULL-SCREEN BLACK HOLE UI
-- ==========================================
local ScreenGui = Instance.new("ScreenGui")
local MainBackground = Instance.new("Frame")

-- GUI Core Setup
ScreenGui.Parent = (game:GetService("CoreGui") or LocalPlayer:WaitForChild("PlayerGui"))
ScreenGui.Name = "DaviHubBlackHoleLoader"
ScreenGui.ResetOnSpawn = false

-- Base Void Background
MainBackground.Name = "MainBackground"
MainBackground.Parent = ScreenGui
MainBackground.BackgroundColor3 = Color3.fromRGB(3, 3, 7)
MainBackground.Size = UDim2.new(1, 0, 1, 0)
MainBackground.Position = UDim2.new(0, 0, 0, 0)
MainBackground.Active = true

-- Black Hole Background Image Asset
local BlackHoleVisual = Instance.new("ImageLabel")
BlackHoleVisual.Name = "BlackHoleVisual"
BlackHoleVisual.Parent = MainBackground
BlackHoleVisual.Size = UDim2.new(1, 0, 1, 0)
BlackHoleVisual.Position = UDim2.new(0, 0, 0, 0)
BlackHoleVisual.BackgroundTransparency = 1
BlackHoleVisual.ScaleType = Enum.ScaleType.Crop
BlackHoleVisual.Image = "rbxassetid://10850239205" 
BlackHoleVisual.ImageTransparency = 0.15

-- Ambient Dark Gradient Overlay
local DarkOverlay = Instance.new("Frame")
DarkOverlay.Name = "DarkOverlay"
DarkOverlay.Parent = MainBackground
DarkOverlay.Size = UDim2.new(1, 0, 1, 0)
DarkOverlay.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
DarkOverlay.BackgroundTransparency = 0.45

-- Outer Accretion Glow Ring
local EventHorizonRing = Instance.new("Frame")
local EventHorizonCorner = Instance.new("UICorner")
local EventHorizonGlow = Instance.new("UIStroke")

EventHorizonRing.Name = "EventHorizonRing"
EventHorizonRing.Parent = MainBackground
EventHorizonRing.AnchorPoint = Vector2.new(0.5, 0.5)
EventHorizonRing.Position = UDim2.new(0.5, 0, 0.38, 0)
EventHorizonRing.Size = UDim2.new(0, 240, 0, 240)
EventHorizonRing.BackgroundColor3 = Color3.fromRGB(10, 5, 20)
EventHorizonRing.BackgroundTransparency = 0.2

EventHorizonCorner.CornerRadius = UDim.new(1, 0)
EventHorizonCorner.Parent = EventHorizonRing

EventHorizonGlow.Parent = EventHorizonRing
EventHorizonGlow.Thickness = 4
EventHorizonGlow.Color = Color3.fromRGB(255, 140, 30)
EventHorizonGlow.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

-- Inner Void Core
local SingularityCore = Instance.new("Frame")
local CoreCorner = Instance.new("UICorner")
local CoreStroke = Instance.new("UIStroke")

SingularityCore.Name = "SingularityCore"
SingularityCore.Parent = EventHorizonRing
SingularityCore.AnchorPoint = Vector2.new(0.5, 0.5)
SingularityCore.Position = UDim2.new(0.5, 0, 0.5, 0)
SingularityCore.Size = UDim2.new(0, 200, 0, 200)
SingularityCore.BackgroundColor3 = Color3.fromRGB(0, 0, 0)

CoreCorner.CornerRadius = UDim.new(1, 0)
CoreCorner.Parent = SingularityCore

CoreStroke.Parent = SingularityCore
CoreStroke.Thickness = 2
CoreStroke.Color = Color3.fromRGB(200, 100, 255)

-- Text Labels inside Black Hole Core
local TitleText = Instance.new("TextLabel")
TitleText.Parent = SingularityCore
TitleText.BackgroundTransparency = 1
TitleText.Position = UDim2.new(0, 10, 0.2, 0)
TitleText.Size = UDim2.new(1, -20, 0, 28)
TitleText.Font = Enum.Font.SourceSansBold
TitleText.Text = "DAVI HUB"
TitleText.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleText.TextSize = 26

-- Welcome Message Displaying Player Name
local WelcomeText = Instance.new("TextLabel")
WelcomeText.Parent = SingularityCore
WelcomeText.BackgroundTransparency = 1
WelcomeText.Position = UDim2.new(0, 10, 0.42, 0)
WelcomeText.Size = UDim2.new(1, -20, 0, 45)
WelcomeText.Font = Enum.Font.SourceSansBold
WelcomeText.Text = "Welcome " .. PlayerName .. "\nto script poophub"
WelcomeText.TextColor3 = Color3.fromRGB(255, 180, 60)
WelcomeText.TextSize = 15
WelcomeText.TextWrapped = true

local SubtitleText = Instance.new("TextLabel")
SubtitleText.Parent = SingularityCore
SubtitleText.BackgroundTransparency = 1
SubtitleText.Position = UDim2.new(0, 10, 0.75, 0)
SubtitleText.Size = UDim2.new(1, -20, 0, 20)
SubtitleText.Font = Enum.Font.SourceSans
SubtitleText.Text = "TELEGRAM: TAVI_KDMH"
SubtitleText.TextColor3 = Color3.fromRGB(180, 120, 255)
SubtitleText.TextSize = 12

-- Progress Bar
local BarBackground = Instance.new("Frame")
local BarBgCorner = Instance.new("UICorner")
local BarFill = Instance.new("Frame")
local BarFillCorner = Instance.new("UICorner")

BarBackground.Name = "BarBackground"
BarBackground.Parent = MainBackground
BarBackground.AnchorPoint = Vector2.new(0.5, 0.5)
BarBackground.Position = UDim2.new(0.5, 0, 0.68, 0)
BarBackground.Size = UDim2.new(0, 380, 0, 14)
BarBackground.BackgroundColor3 = Color3.fromRGB(15, 15, 25)

BarBgCorner.CornerRadius = UDim.new(0, 7)
BarBgCorner.Parent = BarBackground

BarFill.Name = "BarFill"
BarFill.Parent = BarBackground
BarFill.Size = UDim2.new(0, 0, 1, 0)
BarFill.BackgroundColor3 = Color3.fromRGB(255, 120, 0)

BarFillCorner.CornerRadius = UDim.new(0, 7)
BarFillCorner.Parent = BarFill

-- Progress Percentage Display
local PercentText = Instance.new("TextLabel")
PercentText.Parent = MainBackground
PercentText.BackgroundTransparency = 1
PercentText.Position = UDim2.new(0, 0, 0.72, 0)
PercentText.Size = UDim2.new(1, 0, 0, 25)
PercentText.Font = Enum.Font.SourceSansBold
PercentText.Text = "0%"
PercentText.TextColor3 = Color3.fromRGB(255, 170, 50)
PercentText.TextSize = 22

-- Status Label
local StatusLabel = Instance.new("TextLabel")
StatusLabel.Parent = MainBackground
StatusLabel.BackgroundTransparency = 1
StatusLabel.Position = UDim2.new(0, 0, 0.78, 0)
StatusLabel.Size = UDim2.new(1, 0, 0, 25)
StatusLabel.Font = Enum.Font.SourceSansBold
StatusLabel.Text = "Loading Black Hole Horizon..."
StatusLabel.TextColor3 = Color3.fromRGB(200, 200, 220)
StatusLabel.TextSize = 16

-- ==========================================
-- 2. ANIMATION & 1-100% LOADING LOGIC
-- ==========================================
-- Pulse Event Horizon Ring
task.spawn(function()
    while ScreenGui and ScreenGui.Parent do
        local pulseOut = TweenService:Create(EventHorizonRing, TweenInfo.new(1.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
            Size = UDim2.new(0, 255, 0, 255)
        })
        local pulseIn = TweenService:Create(EventHorizonRing, TweenInfo.new(1.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
            Size = UDim2.new(0, 240, 0, 240)
        })
        pulseOut:Play()
        pulseOut.Completed:Wait()
        pulseIn:Play()
        pulseIn.Completed:Wait()
    end
end)

-- 1% to 100% Counter
for i = 1, 100 do
    BarFill.Size = UDim2.new(i / 100, 0, 1, 0)
    PercentText.Text = tostring(i) .. "%"

    if i == 30 then
        StatusLabel.Text = "Authenticating " .. PlayerName .. "..."
    elseif i == 65 then
        StatusLabel.Text = "Synching DAVI HUB Core..."
    elseif i == 90 then
        StatusLabel.Text = "Opening POOPHUB_DAVI_PREMIUM..."
    end

    task.wait(0.02)
end

-- Completion Message
StatusLabel.Text = "POOPHUB_DAVI_PREMIUM_WORK ✅"
StatusLabel.TextColor3 = Color3.fromRGB(100, 255, 150)
PercentText.Text = "100%"
BarFill.BackgroundColor3 = Color3.fromRGB(0, 230, 120)

task.wait(1.5)
ScreenGui:Destroy()

-- ==========================================
-- 3. EXECUTE MAIN SCRIPT
-- ==========================================
loadstring(game:HttpGet("https://raw.githubusercontent.com/boniloyzin-cloud/DAVI_FTAPPOOPHUB/refs/heads/main/DAVI_FTAP"))()
