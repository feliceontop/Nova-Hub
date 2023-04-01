local TweenService = game:GetService("TweenService")
local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Quad)
local tweenInfo2 = TweenInfo.new(5, Enum.EasingStyle.Quad)

local Library = {}

function Library:CreateNotification(title)
    title = title or "TEST NOTIFICATION"

    local Notification = Instance.new("ScreenGui")
    local Main = Instance.new("Frame")
    local TopLine = Instance.new("Frame")
    local UIGradient = Instance.new("UIGradient")
    local Title = Instance.new("TextLabel")
    local UnderTitle = Instance.new("TextLabel")
    local ImageLabel = Instance.new("ImageLabel")
    local NotiMain = Instance.new("Frame")
    local Title_2 = Instance.new("TextLabel")
    local UIPadding = Instance.new("UIPadding")

    --Properties:

    TweenService:Create(Main, tweenInfo, {Position = UDim2.new(1, -12, 1, -12)}):Play()

    Notification.Name = "Notification"
    Notification.Parent = game:GetService("CoreGui")

    Main.Name = "Main"
    Main.Parent = Notification
    Main.AnchorPoint = Vector2.new(1, 1)
    Main.BackgroundColor3 = Color3.fromRGB(15, 10, 30)
    Main.BorderSizePixel = 0
    Main.Position = UDim2.new(1, 325, 1, -12)
    Main.Size = UDim2.new(0, 325, 0, 125)

    TopLine.Name = "TopLine"
    TopLine.Parent = Main
    TopLine.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TopLine.BorderSizePixel = 0
    TopLine.Size = UDim2.new(1, 0, 0, 5)

    UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(62, 45, 164)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(161, 38, 86))}
    UIGradient.Parent = TopLine

    Title.Name = "Title"
    Title.Parent = Main
    Title.AnchorPoint = Vector2.new(0.5, 0.5)
    Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Title.BackgroundTransparency = 1.000
    Title.BorderSizePixel = 0
    Title.Position = UDim2.new(0.5, 0, 0, 20)
    Title.Size = UDim2.new(0, 100, 0, 40)
    Title.Font = Enum.Font.Unknown
    Title.Text = "<b>FATALITY</b>"
    Title.RichText = true
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.TextScaled = true
    Title.TextSize = 26.000
    Title.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
    Title.TextWrapped = true

    UnderTitle.Name = "UnderTitle"
    UnderTitle.Parent = Main
    UnderTitle.AnchorPoint = Vector2.new(0.5, 0.5)
    UnderTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UnderTitle.BackgroundTransparency = 1.000
    UnderTitle.BorderSizePixel = 0
    UnderTitle.Position = UDim2.new(0.5, 0, 0, 35)
    UnderTitle.Size = UDim2.new(0, 70, 0, 20)
    UnderTitle.Font = Enum.Font.Unknown
    UnderTitle.Text = "<b>NOTIFICATION</b>"
    UnderTitle.RichText = true
    UnderTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
    UnderTitle.TextScaled = true
    UnderTitle.TextSize = 26.000
    UnderTitle.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
    UnderTitle.TextWrapped = true

    ImageLabel.Parent = Main
    ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
    ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ImageLabel.BackgroundTransparency = 1.000
    ImageLabel.BorderSizePixel = 0
    ImageLabel.Position = UDim2.new(1, -15, 0, 20)
    ImageLabel.Size = UDim2.new(0, 15, 0, 15)
    ImageLabel.Image = "rbxassetid://12943174876"

    local ClickableFrame = Instance.new("TextButton")
    ClickableFrame.Name = "ImageLabel"
    ClickableFrame.Parent = ImageLabel
    ClickableFrame.BackgroundTransparency = 1.000
    ClickableFrame.Text = ""
    ClickableFrame.Size = UDim2.new(1, 0, 1, 0)
    ClickableFrame.ZIndex = ImageLabel.ZIndex + 1

    ClickableFrame.MouseButton1Down:Connect(function()
        TweenService:Create(Main, tweenInfo, {Position = UDim2.new(1, 325, 1, -12)}):Play()
        wait(1)
        Notification:Destroy()
    end)

    NotiMain.Name = "NotiMain"
    NotiMain.Parent = Main
    NotiMain.AnchorPoint = Vector2.new(0, 1)
    NotiMain.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    NotiMain.BackgroundTransparency = 1.000
    NotiMain.BorderSizePixel = 0
    NotiMain.Position = UDim2.new(0, 0, 1, 0)
    NotiMain.Size = UDim2.new(1, 0, 1, 0)

    Title_2.Name = "Title"
    Title_2.Parent = NotiMain
    Title_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Title_2.BackgroundTransparency = 1.000
    Title_2.BorderSizePixel = 0
    Title_2.Size = UDim2.new(1, 0, 1, 0)
    Title_2.Font = Enum.Font.Ubuntu
    Title_2.Text = "<b>".. title .."</b>"
    Title_2.RichText = true
    Title_2.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title_2.TextSize = 10.000
    Title_2.TextWrapped = true

    UIPadding.Parent = NotiMain
    UIPadding.PaddingTop = UDim.new(0, 35)

    wait(1)
    TweenService:Create(TopLine, tweenInfo2, {Size = UDim2.new(0, 0, 0, 5)}):Play()
    wait(5)
    TweenService:Create(Main, tweenInfo, {Position = UDim2.new(1, 325, 1, -12)}):Play()
    wait(1)
    Notification:Destroy()
end

return Library
