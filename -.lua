local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local StarterGui = game:GetService("StarterGui")

local player = Players.LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Parent = player:WaitForChild("PlayerGui")
gui.ResetOnSpawn = false

local GROUP_ID = "716332767"

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 100)
frame.Position = UDim2.new(1, 320, 1, -120)
frame.BackgroundColor3 = Color3.fromRGB(255,255,255)
frame.BackgroundTransparency = 0.85
frame.Parent = gui

Instance.new("UICorner", frame).CornerRadius = UDim.new(0,10)

local stroke = Instance.new("UIStroke", frame)
stroke.Color = Color3.fromRGB(255,255,255)
stroke.Transparency = 0.7
stroke.Thickness = 1

local label = Instance.new("TextLabel")
label.Size = UDim2.new(1, -20, 0, 45)
label.Position = UDim2.new(0, 10, 0, 5)
label.BackgroundTransparency = 1
label.Text = "请加入群聊🙏🙏🙏"
label.TextColor3 = Color3.fromRGB(255,255,255)
label.Font = Enum.Font.Gotham
label.TextSize = 16
label.TextWrapped = true
label.TextXAlignment = Enum.TextXAlignment.Left
label.Parent = frame

local copyBtn = Instance.new("TextButton")
copyBtn.Size = UDim2.new(0.42, 0, 0, 32)
copyBtn.Position = UDim2.new(0.05, 0, 1, -40)
copyBtn.Text = "复制群号"
copyBtn.BackgroundColor3 = Color3.fromRGB(80,160,255)
copyBtn.TextColor3 = Color3.fromRGB(255,255,255)
copyBtn.Font = Enum.Font.GothamBold
copyBtn.TextSize = 14
copyBtn.Parent = frame

Instance.new("UICorner", copyBtn).CornerRadius = UDim.new(0,8)

local closeBtn = Instance.new("TextButton")
closeBtn.Size = UDim2.new(0.42, 0, 0, 32)
closeBtn.Position = UDim2.new(0.53, 0, 1, -40)
closeBtn.Text = "关闭"
closeBtn.BackgroundColor3 = Color3.fromRGB(200,80,80)
closeBtn.TextColor3 = Color3.fromRGB(255,255,255)
closeBtn.Font = Enum.Font.GothamBold
closeBtn.TextSize = 14
closeBtn.Parent = frame

Instance.new("UICorner", closeBtn).CornerRadius = UDim.new(0,8)

TweenService:Create(frame, TweenInfo.new(0.4), {
    Position = UDim2.new(1, -320, 1, -120)
}):Play()

copyBtn.MouseButton1Click:Connect(function()
    if setclipboard then
        setclipboard(GROUP_ID)
    end

    pcall(function()
        StarterGui:SetCore("SendNotification", {
            Title = "复制成功",
            Text = "群号已复制：716332767",
            Duration = 3
        })
    end)
end)

closeBtn.MouseButton1Click:Connect(function()
    TweenService:Create(frame, TweenInfo.new(0.25), {
        Position = UDim2.new(1, 320, 1, -120)
    }):Play()

    task.wait(0.25)
    gui:Destroy()
end)

task.delay(6, function()
    if gui then
        TweenService:Create(frame, TweenInfo.new(0.25), {
            Position = UDim2.new(1, 320, 1, -120)
        }):Play()

        task.wait(0.25)
        if gui then gui:Destroy() end
    end
end)

repeat
    task.wait()
until game:IsLoaded()
getgenv().SCRIPT_KEY = ""loadstring(game:HttpGet("https://api.jnkie.com/api/v1/luascripts/public/9494682362624cdee500a4811b23d431ad1e7568b48dc40c18dae221755ad1c7/download"))()
