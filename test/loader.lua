local TweenService = game:GetService("TweenService")
local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad)

local Library = {}

local Library2 = loadstring(game:HttpGet("https://raw.githubusercontent.com/feliceontop/scripts/main/test/notification.lua"))()

function Library:CreateWindow(title)
    title = title or "Loader"

    local Loader = Instance.new("ScreenGui")
    local Main = Instance.new("Frame")
    local TopLine = Instance.new("Frame")
    local UIGradient = Instance.new("UIGradient")
    local LeftFrame = Instance.new("Frame")
    local List = Instance.new("Frame")
    local UIListLayout = Instance.new("UIListLayout")
    local UIPadding = Instance.new("UIPadding")
    local RightFrame = Instance.new("Frame")
    local UIPadding_2 = Instance.new("UIPadding")
    local List_2 = Instance.new("Frame")
    local UIListLayout_2 = Instance.new("UIListLayout")
    local ExitLoader = Instance.new("Frame")
    local Title_4 = Instance.new("TextLabel")
    local ExitButton = Instance.new("ImageLabel")
    local UIPadding_3 = Instance.new("UIPadding")
    local UserProfile = Instance.new("Frame")
    local ImageLabel = Instance.new("ImageLabel")
    local UIPadding_4 = Instance.new("UIPadding")
    local Title_5 = Instance.new("TextLabel")
    local Username = Instance.new("TextLabel")
    local Info = Instance.new("Frame")
    local Load = Instance.new("Frame")
    local Title_6 = Instance.new("TextLabel")
    local Title_7 = Instance.new("TextLabel")
    local UIPadding_5 = Instance.new("UIPadding")

    local pagesFolder = Instance.new("Folder")
    
    pagesFolder.Name = "pagesFolder"
    pagesFolder.Parent = Info

    local pagesFolder2 = Instance.new("Folder")
    
    pagesFolder2.Name = "pagesFolder2"
    pagesFolder2.Parent = List

    Loader.Name = "Loader"
    Loader.Parent = game:GetService("CoreGui")
    Loader.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    Main.Name = "Main"
    Main.Parent = Loader
    Main.AnchorPoint = Vector2.new(0.5, 0.5)
    Main.BackgroundColor3 = Color3.fromRGB(15, 10, 30)
    Main.BorderSizePixel = 0
    Main.Position = UDim2.new(0.5, 0, 0.5, 0)
    Main.Size = UDim2.new(0, 750, 0, 550)

    local WindowDragging = false

    local gui = Main
    local dragInput, dragStart, startPos = nil, nil, nil

    local userinputservice = game:GetService("UserInputService")

    gui.InputBegan:Connect(function(input)
        if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and userinputservice:GetFocusedTextBox() == nil then
            dragStart = input.Position
            startPos = Main.Position
            WindowDragging = true
            input.Changed:Connect(function()
                if (input.UserInputState == Enum.UserInputState.End) then
                    WindowDragging = false
                end
            end)
        end
    end)

    gui.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)

    userinputservice.InputChanged:Connect(function(input)
        if input == dragInput and WindowDragging then
            local Delta = input.Position - dragStart
            Main:TweenPosition(UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y), Enum.EasingDirection.In, Enum.EasingStyle.Linear, 0.02, true)
        end
    end)

    TopLine.Name = "TopLine"
    TopLine.Parent = Main
    TopLine.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TopLine.BorderSizePixel = 0
    TopLine.Size = UDim2.new(1, 0, 0, 5)

    UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(62, 45, 164)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(161, 38, 86))}
    UIGradient.Parent = TopLine

    LeftFrame.Name = "LeftFrame"
    LeftFrame.Parent = Main
    LeftFrame.AnchorPoint = Vector2.new(1, 0)
    LeftFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    LeftFrame.BackgroundTransparency = 1.000
    LeftFrame.BorderSizePixel = 0
    LeftFrame.Position = UDim2.new(0.5, 0, 0, 0)
    LeftFrame.Size = UDim2.new(0.5, 0, 1, 0)

    List.Name = "List"
    List.Parent = LeftFrame
    List.AnchorPoint = Vector2.new(1, 1)
    List.BackgroundColor3 = Color3.fromRGB(30, 34, 80)
    List.BorderSizePixel = 0
    List.Position = UDim2.new(1, 0, 1, 0)
    List.Size = UDim2.new(1, 0, 0.800000012, 0)

    UIListLayout.Parent = pagesFolder2
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

    UIPadding.Parent = LeftFrame
    UIPadding.PaddingBottom = UDim.new(0, 20)
    UIPadding.PaddingLeft = UDim.new(0, 20)
    UIPadding.PaddingRight = UDim.new(0, 10)

    RightFrame.Name = "RightFrame"
    RightFrame.Parent = Main
    RightFrame.AnchorPoint = Vector2.new(1, 0)
    RightFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    RightFrame.BackgroundTransparency = 1.000
    RightFrame.BorderSizePixel = 0
    RightFrame.Position = UDim2.new(1, 0, 0, 0)
    RightFrame.Size = UDim2.new(0.5, 0, 1, 0)

    UIPadding_2.Parent = RightFrame
    UIPadding_2.PaddingBottom = UDim.new(0, 20)
    UIPadding_2.PaddingLeft = UDim.new(0, 10)
    UIPadding_2.PaddingRight = UDim.new(0, 20)

    List_2.Name = "List"
    List_2.Parent = RightFrame
    List_2.AnchorPoint = Vector2.new(1, 1)
    List_2.BackgroundColor3 = Color3.fromRGB(30, 34, 80)
    List_2.BackgroundTransparency = 1.000
    List_2.BorderSizePixel = 0
    List_2.Position = UDim2.new(1, 0, 1, 0)
    List_2.Size = UDim2.new(1, 0, 0.800000012, 0)

    UIListLayout_2.Parent = List_2
    UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_2.Padding = UDim.new(0, 20)

    ExitLoader.Name = "ExitLoader"
    ExitLoader.Parent = List_2
    ExitLoader.BackgroundColor3 = Color3.fromRGB(22, 22, 55)
    ExitLoader.BorderSizePixel = 0
    ExitLoader.Size = UDim2.new(1, 0, 0.0799999982, 0)

    Title_4.Name = "Title"
    Title_4.Parent = ExitLoader
    Title_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Title_4.BackgroundTransparency = 1.000
    Title_4.BorderSizePixel = 0
    Title_4.Size = UDim2.new(1, -25, 1, 0)
    Title_4.Font = Enum.Font.Ubuntu
    Title_4.Text = "<b>EXIT LOADER</b>"
    Title_4.RichText = true
    Title_4.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title_4.TextSize = 10.000
    Title_4.TextXAlignment = Enum.TextXAlignment.Right

    ExitButton.Name = "ExitButton"
    ExitButton.Parent = ExitLoader
    ExitButton.AnchorPoint = Vector2.new(1, 0.5)
    ExitButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ExitButton.BackgroundTransparency = 1.000
    ExitButton.BorderSizePixel = 0
    ExitButton.Position = UDim2.new(1, 0, 0.5, 0)
    ExitButton.Size = UDim2.new(0, 15, 0, 15)
    ExitButton.Image = "rbxassetid://12943174876"

    local ClickableFrame = Instance.new("TextButton")
    ClickableFrame.Name = "ClickableFrame"
    ClickableFrame.Parent = ExitLoader
    ClickableFrame.BackgroundTransparency = 1.000
    ClickableFrame.Text = ""
    ClickableFrame.Size = UDim2.new(1, 0, 1, 0)
    ClickableFrame.ZIndex = Title_4.ZIndex + 1 -- make sure it covers the other elements
    ClickableFrame.MouseButton1Click:Connect(function()
        for _, frame in ipairs(Loader:GetDescendants()) do
            if frame:IsA("GuiObject") then
                TweenService:Create(frame, tweenInfo, {BackgroundTransparency = 1}):Play()
            end
        end

        for _, label in ipairs(Loader:GetDescendants()) do
            if label:IsA("TextLabel") then
                TweenService:Create(label, tweenInfo, {TextTransparency = 1}):Play()
            end
        end

        for _, image in ipairs(Loader:GetDescendants()) do
            if image:IsA("ImageLabel") then
                TweenService:Create(image, tweenInfo, {ImageTransparency = 1}):Play()
            end
        end

        wait(0.5)

        Loader:Destroy()
    end)

    local originalColor = ExitLoader.BackgroundColor3
    local hoverColor = Color3.fromRGB(33, 33, 85)

    ClickableFrame.MouseEnter:Connect(function()
        game.TweenService:Create(ExitLoader, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
            BackgroundColor3 = hoverColor
        }):Play()
    end)

    ClickableFrame.MouseLeave:Connect(function()
        game.TweenService:Create(ExitLoader, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
            BackgroundColor3 = originalColor
        }):Play()
    end)

    UIPadding_3.Parent = ExitLoader
    UIPadding_3.PaddingRight = UDim.new(0, 25)

    UserProfile.Name = "UserProfile"
    UserProfile.Parent = List_2
    UserProfile.BackgroundColor3 = Color3.fromRGB(30, 34, 80)
    UserProfile.BorderSizePixel = 0
    UserProfile.Size = UDim2.new(1, 0, 0.150000006, 0)

    ImageLabel.Parent = UserProfile
    ImageLabel.AnchorPoint = Vector2.new(1, 0.5)
    ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ImageLabel.BackgroundTransparency = 1.000
    ImageLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
    ImageLabel.BorderSizePixel = 0
    ImageLabel.Position = UDim2.new(1, 0, 0.5, 0)
    ImageLabel.Size = UDim2.new(0, 40, 0, 40)
    ImageLabel.Image = game.Players:GetUserThumbnailAsync(game.Players.LocalPlayer.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420)

    UIPadding_4.Parent = UserProfile
    UIPadding_4.PaddingRight = UDim.new(0, 25)

    Title_5.Name = "Title"
    Title_5.Parent = UserProfile
    Title_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Title_5.BackgroundTransparency = 1.000
    Title_5.BorderSizePixel = 0
    Title_5.Position = UDim2.new(0, 0, 0, 7)
    Title_5.Size = UDim2.new(1, -50, 0.5, -5)
    Title_5.Font = Enum.Font.Ubuntu
    Title_5.Text = "<b>LOGGED IN AS</b>"
    Title_5.RichText = true
    Title_5.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title_5.TextSize = 10.000
    Title_5.TextXAlignment = Enum.TextXAlignment.Right

    Username.Name = "Username"
    Username.Parent = UserProfile
    Username.AnchorPoint = Vector2.new(0, 1)
    Username.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Username.BackgroundTransparency = 1.000
    Username.BorderSizePixel = 0
    Username.Position = UDim2.new(0, 0, 1, -12)
    Username.Size = UDim2.new(1, -50, 0.5, -10)
    Username.Font = Enum.Font.Ubuntu
    Username.Text = game.Players.LocalPlayer.Name
    Username.TextColor3 = Color3.fromRGB(255, 255, 255)
    Username.TextSize = 20.000
    Username.TextWrapped = true
    Username.TextXAlignment = Enum.TextXAlignment.Right

    Info.Name = "Info"
    Info.Parent = List_2
    Info.BackgroundColor3 = Color3.fromRGB(30, 34, 80)
    Info.BorderSizePixel = 0
    Info.Size = UDim2.new(1, 0, 0.529999971, 0)

    Load.Name = "Load"
    Load.Parent = List_2
    Load.BackgroundColor3 = Color3.fromRGB(162, 38, 86)
    Load.BorderSizePixel = 0
    Load.Size = UDim2.new(1, 0, 0.100000001, 0)

    Title_6.Name = "Title"
    Title_6.Parent = Load
    Title_6.AnchorPoint = Vector2.new(1, 0)
    Title_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Title_6.BackgroundTransparency = 1.000
    Title_6.BorderSizePixel = 0
    Title_6.Position = UDim2.new(1, 0, 0, 0)
    Title_6.Size = UDim2.new(1, 0, 1, 0)
    Title_6.Font = Enum.Font.Ubuntu
    Title_6.Text = "<b>LOAD</b>"
    Title_6.RichText = true
    Title_6.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title_6.TextSize = 20.000

    local ClickableFrame2 = Instance.new("TextButton")
    ClickableFrame2.Name = "ClickableFrame"
    ClickableFrame2.Parent = Load
    ClickableFrame2.BackgroundTransparency = 1.000
    ClickableFrame2.Text = ""
    ClickableFrame2.Size = UDim2.new(1, 0, 1, 0)
    ClickableFrame2.ZIndex = Title_6.ZIndex + 1
    ClickableFrame2.MouseButton1Click:Connect(function()
        for _, frame in ipairs(Loader:GetDescendants()) do
            if frame:IsA("GuiObject") then
                TweenService:Create(frame, tweenInfo, {BackgroundTransparency = 1}):Play()
            end
        end

        for _, label in ipairs(Loader:GetDescendants()) do
            if label:IsA("TextLabel") then
                TweenService:Create(label, tweenInfo, {TextTransparency = 1}):Play()
            end
        end

        for _, image in ipairs(Loader:GetDescendants()) do
            if image:IsA("ImageLabel") then
                TweenService:Create(image, tweenInfo, {ImageTransparency = 1}):Play()
            end
        end

        wait(0.5)

        Loader:Destroy()
    end)

    local originalColor = Load.BackgroundColor3
    local hoverColor = Color3.fromRGB(182, 58, 106)

    ClickableFrame2.MouseEnter:Connect(function()
        game.TweenService:Create(Load, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
            BackgroundColor3 = hoverColor
        }):Play()
    end)

    ClickableFrame2.MouseLeave:Connect(function()
        game.TweenService:Create(Load, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
            BackgroundColor3 = originalColor
        }):Play()
    end)

    Title_7.Name = "Title"
    Title_7.Parent = Main
    Title_7.AnchorPoint = Vector2.new(0.5, 0.5)
    Title_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Title_7.BackgroundTransparency = 1.000
    Title_7.BorderSizePixel = 0
    Title_7.Position = UDim2.new(0.5, 0, 0.100000001, 0)
    Title_7.Size = UDim2.new(0, 200, 0, 40)
    Title_7.Font = Enum.Font.Ubuntu
    Title_7.Text = "<b>".. title .."</b>"
    Title_7.RichText = true
    Title_7.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title_7.TextScaled = true
    Title_7.TextSize = 39.000
    Title_7.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
    Title_7.TextWrapped = true

    UIPadding_5.Parent = Info
    UIPadding_5.PaddingBottom = UDim.new(0, 12)
    UIPadding_5.PaddingRight = UDim.new(0, 25)

    local WinTypes = {}

    function WinTypes:CreateTabActive(type, name, status, sub, name1, update1, sub1, status1)
        type = type or "TYPE"
        name = name or "New Game"
        status = status or "STATUS"
        sub = sub or "SUB"
        
        name1 = name1 or "New Game"
        update1 = update1 or "Last Update"
        sub1 = sub1 or "Subscription"
        status1 = status1 or "Status"

        local tabButton = Instance.new("TextButton")
        local GameLogo = Instance.new("ImageLabel")
        local TypeName = Instance.new("TextLabel")
        local GameName = Instance.new("TextLabel")
        local LastUpdated = Instance.new("TextLabel")
        local DaysLeft = Instance.new("Frame")
        local Title = Instance.new("TextLabel")
        local GameName_4 = Instance.new("TextLabel")
        local LastUpdate = Instance.new("TextLabel")
        local LastUpdateText = Instance.new("TextLabel")
        local Subscription = Instance.new("TextLabel")
        local SubscriptionText = Instance.new("TextLabel")
        local StatusText = Instance.new("TextLabel")
        local Status = Instance.new("TextLabel")

        local Page = Instance.new("Frame")
        Page.Name = "NewPage"
        Page.Parent = pagesFolder
        Page.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Page.BorderSizePixel = 0
        Page.Size = UDim2.new(1, 0, 1, 0)
        Page.Visible = false
        Page.BackgroundTransparency = 1

        tabButton.Name = "tabButton"
        tabButton.Parent = pagesFolder2
        tabButton.BackgroundColor3 = Color3.fromRGB(30, 34, 80)
        tabButton.AutoButtonColor = false
        tabButton.Text = ""
        tabButton.BorderSizePixel = 0
        tabButton.Size = UDim2.new(1, 0, 0.174999997, 0)

        tabButton.MouseButton1Click:Connect(function()
            for i,v in next, pagesFolder:GetChildren() do
                v.Visible = false
            end
            Page.Visible = true

            for i,v in next, pagesFolder2:GetChildren() do
                if v:IsA("TextButton") then
                    game.TweenService:Create(v, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                        BackgroundColor3 = Color3.fromRGB(30, 34, 80)
                    }):Play()
                end
            end
            game.TweenService:Create(tabButton, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                BackgroundColor3 = Color3.fromRGB(40, 44, 87)
            }):Play()
        end)
    
--        local originalColor = tabButton.BackgroundColor3
--        local hoverColor = Color3.fromRGB(60, 64, 107)
--    
--        tabButton.MouseEnter:Connect(function()
--            game.TweenService:Create(tabButton, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
--                BackgroundColor3 = hoverColor
--            }):Play()
--        end)
--    
--        tabButton.MouseLeave:Connect(function()
--            game.TweenService:Create(tabButton, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
--                BackgroundColor3 = originalColor
--            }):Play()
--        end)
    
        GameLogo.Name = "GameLogo"
        GameLogo.Parent = tabButton
        GameLogo.AnchorPoint = Vector2.new(0, 0.5)
        GameLogo.BackgroundColor3 = Color3.fromRGB(77, 55, 203)
        GameLogo.BorderColor3 = Color3.fromRGB(27, 42, 53)
        GameLogo.BorderSizePixel = 0
        GameLogo.Position = UDim2.new(0, 25, 0.5, 0)
        GameLogo.Size = UDim2.new(0, 50, 0, 50)
        GameLogo.Image = "rbxassetid://12943227782"
    
        TypeName.Name = "TypeName"
        TypeName.Parent = tabButton
        TypeName.AnchorPoint = Vector2.new(1, 0)
        TypeName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TypeName.BackgroundTransparency = 1.000
        TypeName.BorderSizePixel = 0
        TypeName.Position = UDim2.new(1, 0, 0, 10)
        TypeName.Size = UDim2.new(0.75, 0, 0, 20)
        TypeName.Font = Enum.Font.Ubuntu
        TypeName.Text = type
        TypeName.TextColor3 = Color3.fromRGB(87, 90, 125)
        TypeName.TextSize = 10.000
        TypeName.TextXAlignment = Enum.TextXAlignment.Left
    
        GameName.Name = "GameName"
        GameName.Parent = tabButton
        GameName.AnchorPoint = Vector2.new(1, 0)
        GameName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        GameName.BackgroundTransparency = 1.000
        GameName.BorderSizePixel = 0
        GameName.Position = UDim2.new(1, 0, 0, 28)
        GameName.Size = UDim2.new(0.75, 0, 0, 20)
        GameName.Font = Enum.Font.Ubuntu
        GameName.Text = name
        GameName.TextColor3 = Color3.fromRGB(255, 255, 255)
        GameName.TextSize = 20.000
        GameName.TextWrapped = true
        GameName.TextXAlignment = Enum.TextXAlignment.Left
    
        LastUpdated.Name = "LastUpdated"
        LastUpdated.Parent = tabButton
        LastUpdated.AnchorPoint = Vector2.new(1, 0)
        LastUpdated.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        LastUpdated.BackgroundTransparency = 1.000
        LastUpdated.BorderSizePixel = 0
        LastUpdated.Position = UDim2.new(1, 0, 0, 45)
        LastUpdated.Size = UDim2.new(0.75, 0, 0, 20)
        LastUpdated.Font = Enum.Font.Ubuntu
        LastUpdated.Text = status
        LastUpdated.TextColor3 = Color3.fromRGB(87, 90, 125)
        LastUpdated.TextSize = 10.000
        LastUpdated.TextXAlignment = Enum.TextXAlignment.Left
    
        DaysLeft.Name = "DaysLeft"
        DaysLeft.Parent = tabButton
        DaysLeft.AnchorPoint = Vector2.new(1, 0.5)
        DaysLeft.BackgroundColor3 = Color3.fromRGB(162, 38, 86)
        DaysLeft.BorderSizePixel = 0
        DaysLeft.Position = UDim2.new(1, -25, 0.5, 0)
        DaysLeft.Size = UDim2.new(0, 60, 0, 20)
    
        Title.Name = "Title"
        Title.Parent = DaysLeft
        Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Title.BackgroundTransparency = 1.000
        Title.BorderSizePixel = 0
        Title.Size = UDim2.new(1, 0, 1, 0)
        Title.Font = Enum.Font.Ubuntu
        Title.Text = "<b>".. sub .."</b>"
        Title.RichText = true
        Title.TextColor3 = Color3.fromRGB(255, 255, 255)
        Title.TextSize = 9.000

        GameName_4.Name = "GameName"
        GameName_4.Parent = Page
        GameName_4.AnchorPoint = Vector2.new(0, 0.5)
        GameName_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        GameName_4.BackgroundTransparency = 1.000
        GameName_4.BorderSizePixel = 0
        GameName_4.Position = UDim2.new(0, 0, 0.5, -70)
        GameName_4.Size = UDim2.new(1, 0, 0, 25)
        GameName_4.Font = Enum.Font.Ubuntu
        GameName_4.Text = "<b>".. name1 .."</b>"
        GameName_4.RichText = true
        GameName_4.TextColor3 = Color3.fromRGB(255, 255, 255)
        GameName_4.TextSize = 22.000
        GameName_4.TextWrapped = true
        GameName_4.TextXAlignment = Enum.TextXAlignment.Right

        LastUpdate.Name = "LastUpdate"
        LastUpdate.Parent = Page
        LastUpdate.AnchorPoint = Vector2.new(0, 0.5)
        LastUpdate.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        LastUpdate.BackgroundTransparency = 1.000
        LastUpdate.BorderSizePixel = 0
        LastUpdate.Position = UDim2.new(0, 0, 0.5, -30)
        LastUpdate.Size = UDim2.new(1, 0, 0, 25)
        LastUpdate.Font = Enum.Font.Ubuntu
        LastUpdate.Text = "<b>LAST UPDATE</b>"
        LastUpdate.RichText = true
        LastUpdate.TextColor3 = Color3.fromRGB(255, 255, 255)
        LastUpdate.TextSize = 10.000
        LastUpdate.TextWrapped = true
        LastUpdate.TextXAlignment = Enum.TextXAlignment.Right
        LastUpdateText.Name = "LastUpdateText"
        LastUpdateText.Parent = Page
        LastUpdateText.AnchorPoint = Vector2.new(0, 0.5)
        LastUpdateText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        LastUpdateText.BackgroundTransparency = 1.000
        LastUpdateText.BorderSizePixel = 0
        LastUpdateText.Position = UDim2.new(0, 0, 0.5, -12)
        LastUpdateText.Size = UDim2.new(1, 0, 0, 25)
        LastUpdateText.Font = Enum.Font.Ubuntu
        LastUpdateText.Text = update1
        LastUpdateText.TextColor3 = Color3.fromRGB(255, 255, 255)
        LastUpdateText.TextSize = 15.000
        LastUpdateText.TextWrapped = true
        LastUpdateText.TextXAlignment = Enum.TextXAlignment.Right

        Subscription.Name = "Subscription"
        Subscription.Parent = Page
        Subscription.AnchorPoint = Vector2.new(0, 0.5)
        Subscription.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Subscription.BackgroundTransparency = 1.000
        Subscription.BorderSizePixel = 0
        Subscription.Position = UDim2.new(0, 0, 0.5, 20)
        Subscription.Size = UDim2.new(1, 0, 0, 25)
        Subscription.Font = Enum.Font.Ubuntu
        Subscription.Text = "<b>SUBSCRIPTION</b>"
        Subscription.RichText = true
        Subscription.TextColor3 = Color3.fromRGB(255, 255, 255)
        Subscription.TextSize = 10.000
        Subscription.TextWrapped = true
        Subscription.TextXAlignment = Enum.TextXAlignment.Right

        SubscriptionText.Name = "SubscriptionText"
        SubscriptionText.Parent = Page
        SubscriptionText.AnchorPoint = Vector2.new(0, 0.5)
        SubscriptionText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        SubscriptionText.BackgroundTransparency = 1.000
        SubscriptionText.BorderSizePixel = 0
        SubscriptionText.Position = UDim2.new(0, 0, 0.5, 38)
        SubscriptionText.Size = UDim2.new(1, 0, 0, 25)
        SubscriptionText.Font = Enum.Font.Ubuntu
        SubscriptionText.Text = sub1
        SubscriptionText.TextColor3 = Color3.fromRGB(255, 255, 255)
        SubscriptionText.TextSize = 15.000
        SubscriptionText.TextWrapped = true
        SubscriptionText.TextXAlignment = Enum.TextXAlignment.Right

        StatusText.Name = "StatusText"
        StatusText.Parent = Page
        StatusText.AnchorPoint = Vector2.new(0, 0.5)
        StatusText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        StatusText.BackgroundTransparency = 1.000
        StatusText.BorderSizePixel = 0
        StatusText.Position = UDim2.new(0, 0, 0.5, 88)
        StatusText.Size = UDim2.new(1, 0, 0, 25)
        StatusText.Font = Enum.Font.Ubuntu
        StatusText.Text = status1
        StatusText.TextColor3 = Color3.fromRGB(255, 255, 255)
        StatusText.TextSize = 15.000
        StatusText.TextWrapped = true
        StatusText.TextXAlignment = Enum.TextXAlignment.Right

        Status.Name = "Status"
        Status.Parent = Page
        Status.AnchorPoint = Vector2.new(0, 0.5)
        Status.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Status.BackgroundTransparency = 1.000
        Status.BorderSizePixel = 0
        Status.Position = UDim2.new(0, 0, 0.5, 70)
        Status.Size = UDim2.new(1, 0, 0, 25)
        Status.Font = Enum.Font.Ubuntu
        Status.Text = "<b>STATUS</b>"
        Status.RichText = true
        Status.TextColor3 = Color3.fromRGB(255, 255, 255)
        Status.TextSize = 10.000
        Status.TextWrapped = true
        Status.TextXAlignment = Enum.TextXAlignment.Right

        if status1 == "Undetected" then
            StatusText.TextColor3 = Color3.fromRGB(0, 170, 0)
        elseif status1 == "Detected" then
            StatusText.TextColor3 = Color3.fromRGB(255, 0, 0)
        end

    end

    function WinTypes:CreateTabUnActive(type, name, status, sub, name1, update1, sub1, status1)
        type = type or "TYPE"
        name = name or "New Game"
        status = status or "STATUS"
        sub = sub or "SUB"
        
        name1 = name1 or "New Game"
        update1 = update1 or "Last Update"
        sub1 = sub1 or "Subscription"
        status1 = status1 or "Status"

        local tabButton = Instance.new("TextButton")
        local GameLogo_2 = Instance.new("ImageLabel")
        local TypeName_2 = Instance.new("TextLabel")
        local GameName_2 = Instance.new("TextLabel")
        local LastUpdated_2 = Instance.new("TextLabel")
        local DaysLeft_2 = Instance.new("Frame")
        local Title_2 = Instance.new("TextLabel")
        local GameName_4 = Instance.new("TextLabel")
        local LastUpdate = Instance.new("TextLabel")
        local LastUpdateText = Instance.new("TextLabel")
        local Subscription = Instance.new("TextLabel")
        local SubscriptionText = Instance.new("TextLabel")
        local StatusText = Instance.new("TextLabel")
        local Status = Instance.new("TextLabel")

        local Page = Instance.new("Frame")
        Page.Name = "NewPage"
        Page.Parent = pagesFolder
        Page.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Page.BorderSizePixel = 0
        Page.Size = UDim2.new(1, 0, 1, 0)
        Page.Visible = false
        Page.BackgroundTransparency = 1

        tabButton.Name = "tabButton"
        tabButton.Parent = pagesFolder2
        tabButton.BackgroundColor3 = Color3.fromRGB(30, 34, 80)
        tabButton.AutoButtonColor = false
        tabButton.Text = ""
        tabButton.BorderSizePixel = 0
        tabButton.Size = UDim2.new(1, 0, 0.174999997, 0)

        tabButton.MouseButton1Click:Connect(function()
            for i,v in next, pagesFolder:GetChildren() do
                v.Visible = false
            end
            Page.Visible = true

            for i,v in next, pagesFolder2:GetChildren() do
                if v:IsA("TextButton") then
                    game.TweenService:Create(v, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                        BackgroundColor3 = Color3.fromRGB(30, 34, 80)
                    }):Play()
                end
            end
            game.TweenService:Create(tabButton, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                BackgroundColor3 = Color3.fromRGB(40, 44, 87)
            }):Play()
        end)

--        local originalColor = tabButton.BackgroundColor3
--        local hoverColor = Color3.fromRGB(60, 64, 107)
--    
--        tabButton.MouseEnter:Connect(function()
--            game.TweenService:Create(tabButton, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
--                BackgroundColor3 = hoverColor
--            }):Play()
--        end)
--    
--        tabButton.MouseLeave:Connect(function()
--            game.TweenService:Create(tabButton, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
--                BackgroundColor3 = originalColor
--            }):Play()
--        end)
    
        GameLogo_2.Name = "GameLogo"
        GameLogo_2.Parent = tabButton
        GameLogo_2.AnchorPoint = Vector2.new(0, 0.5)
        GameLogo_2.BackgroundColor3 = Color3.fromRGB(105, 45, 144)
        GameLogo_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
        GameLogo_2.BorderSizePixel = 0
        GameLogo_2.Position = UDim2.new(0, 25, 0.5, 0)
        GameLogo_2.Size = UDim2.new(0, 50, 0, 50)
        GameLogo_2.Image = "rbxassetid://12943227782"
        GameLogo_2.ImageColor3 = Color3.fromRGB(199, 200, 211)
    
        TypeName_2.Name = "TypeName"
        TypeName_2.Parent = tabButton
        TypeName_2.AnchorPoint = Vector2.new(1, 0)
        TypeName_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TypeName_2.BackgroundTransparency = 1.000
        TypeName_2.BorderSizePixel = 0
        TypeName_2.Position = UDim2.new(1, 0, 0, 10)
        TypeName_2.Size = UDim2.new(0.75, 0, 0, 20)
        TypeName_2.Font = Enum.Font.Ubuntu
        TypeName_2.Text = type
        TypeName_2.TextColor3 = Color3.fromRGB(87, 90, 125)
        TypeName_2.TextSize = 10.000
        TypeName_2.TextXAlignment = Enum.TextXAlignment.Left
    
        GameName_2.Name = "GameName"
        GameName_2.Parent = tabButton
        GameName_2.AnchorPoint = Vector2.new(1, 0)
        GameName_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        GameName_2.BackgroundTransparency = 1.000
        GameName_2.BorderSizePixel = 0
        GameName_2.Position = UDim2.new(1, 0, 0, 28)
        GameName_2.Size = UDim2.new(0.75, 0, 0, 20)
        GameName_2.Font = Enum.Font.Ubuntu
        GameName_2.Text = name
        GameName_2.TextColor3 = Color3.fromRGB(199, 200, 211)
        GameName_2.TextSize = 20.000
        GameName_2.TextWrapped = true
        GameName_2.TextXAlignment = Enum.TextXAlignment.Left
    
        LastUpdated_2.Name = "LastUpdated"
        LastUpdated_2.Parent = tabButton
        LastUpdated_2.AnchorPoint = Vector2.new(1, 0)
        LastUpdated_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        LastUpdated_2.BackgroundTransparency = 1.000
        LastUpdated_2.BorderSizePixel = 0
        LastUpdated_2.Position = UDim2.new(1, 0, 0, 45)
        LastUpdated_2.Size = UDim2.new(0.75, 0, 0, 20)
        LastUpdated_2.Font = Enum.Font.Ubuntu
        LastUpdated_2.Text = status
        LastUpdated_2.TextColor3 = Color3.fromRGB(87, 90, 125)
        LastUpdated_2.TextSize = 10.000
        LastUpdated_2.TextXAlignment = Enum.TextXAlignment.Left
    
        DaysLeft_2.Name = "DaysLeft"
        DaysLeft_2.Parent = tabButton
        DaysLeft_2.AnchorPoint = Vector2.new(1, 0.5)
        DaysLeft_2.BackgroundColor3 = Color3.fromRGB(129, 37, 84)
        DaysLeft_2.BorderSizePixel = 0
        DaysLeft_2.Position = UDim2.new(1, -25, 0.5, 0)
        DaysLeft_2.Size = UDim2.new(0, 60, 0, 20)
    
        Title_2.Name = "Title"
        Title_2.Parent = DaysLeft_2
        Title_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Title_2.BackgroundTransparency = 1.000
        Title_2.BorderSizePixel = 0
        Title_2.Size = UDim2.new(1, 0, 1, 0)
        Title_2.Font = Enum.Font.Ubuntu
        Title_2.Text = "<b>".. sub .."</b>"
        Title_2.RichText = true
        Title_2.TextColor3 = Color3.fromRGB(199, 200, 211)
        Title_2.TextSize = 9.000

        GameName_4.Name = "GameName"
        GameName_4.Parent = Page
        GameName_4.AnchorPoint = Vector2.new(0, 0.5)
        GameName_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        GameName_4.BackgroundTransparency = 1.000
        GameName_4.BorderSizePixel = 0
        GameName_4.Position = UDim2.new(0, 0, 0.5, -70)
        GameName_4.Size = UDim2.new(1, 0, 0, 25)
        GameName_4.Font = Enum.Font.Ubuntu
        GameName_4.Text = "<b>".. name1 .."</b>"
        GameName_4.RichText = true
        GameName_4.TextColor3 = Color3.fromRGB(255, 255, 255)
        GameName_4.TextSize = 22.000
        GameName_4.TextWrapped = true
        GameName_4.TextXAlignment = Enum.TextXAlignment.Right

        LastUpdate.Name = "LastUpdate"
        LastUpdate.Parent = Page
        LastUpdate.AnchorPoint = Vector2.new(0, 0.5)
        LastUpdate.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        LastUpdate.BackgroundTransparency = 1.000
        LastUpdate.BorderSizePixel = 0
        LastUpdate.Position = UDim2.new(0, 0, 0.5, -30)
        LastUpdate.Size = UDim2.new(1, 0, 0, 25)
        LastUpdate.Font = Enum.Font.Ubuntu
        LastUpdate.Text = "<b>LAST UPDATE</b>"
        LastUpdate.RichText = true
        LastUpdate.TextColor3 = Color3.fromRGB(255, 255, 255)
        LastUpdate.TextSize = 10.000
        LastUpdate.TextWrapped = true
        LastUpdate.TextXAlignment = Enum.TextXAlignment.Right
        LastUpdateText.Name = "LastUpdateText"
        LastUpdateText.Parent = Page
        LastUpdateText.AnchorPoint = Vector2.new(0, 0.5)
        LastUpdateText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        LastUpdateText.BackgroundTransparency = 1.000
        LastUpdateText.BorderSizePixel = 0
        LastUpdateText.Position = UDim2.new(0, 0, 0.5, -12)
        LastUpdateText.Size = UDim2.new(1, 0, 0, 25)
        LastUpdateText.Font = Enum.Font.Ubuntu
        LastUpdateText.Text = update1
        LastUpdateText.TextColor3 = Color3.fromRGB(255, 255, 255)
        LastUpdateText.TextSize = 15.000
        LastUpdateText.TextWrapped = true
        LastUpdateText.TextXAlignment = Enum.TextXAlignment.Right

        Subscription.Name = "Subscription"
        Subscription.Parent = Page
        Subscription.AnchorPoint = Vector2.new(0, 0.5)
        Subscription.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Subscription.BackgroundTransparency = 1.000
        Subscription.BorderSizePixel = 0
        Subscription.Position = UDim2.new(0, 0, 0.5, 20)
        Subscription.Size = UDim2.new(1, 0, 0, 25)
        Subscription.Font = Enum.Font.Ubuntu
        Subscription.Text = "<b>SUBSCRIPTION</b>"
        Subscription.RichText = true
        Subscription.TextColor3 = Color3.fromRGB(255, 255, 255)
        Subscription.TextSize = 10.000
        Subscription.TextWrapped = true
        Subscription.TextXAlignment = Enum.TextXAlignment.Right

        SubscriptionText.Name = "SubscriptionText"
        SubscriptionText.Parent = Page
        SubscriptionText.AnchorPoint = Vector2.new(0, 0.5)
        SubscriptionText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        SubscriptionText.BackgroundTransparency = 1.000
        SubscriptionText.BorderSizePixel = 0
        SubscriptionText.Position = UDim2.new(0, 0, 0.5, 38)
        SubscriptionText.Size = UDim2.new(1, 0, 0, 25)
        SubscriptionText.Font = Enum.Font.Ubuntu
        SubscriptionText.Text = sub1
        SubscriptionText.TextColor3 = Color3.fromRGB(255, 255, 255)
        SubscriptionText.TextSize = 15.000
        SubscriptionText.TextWrapped = true
        SubscriptionText.TextXAlignment = Enum.TextXAlignment.Right

        StatusText.Name = "StatusText"
        StatusText.Parent = Page
        StatusText.AnchorPoint = Vector2.new(0, 0.5)
        StatusText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        StatusText.BackgroundTransparency = 1.000
        StatusText.BorderSizePixel = 0
        StatusText.Position = UDim2.new(0, 0, 0.5, 88)
        StatusText.Size = UDim2.new(1, 0, 0, 25)
        StatusText.Font = Enum.Font.Ubuntu
        StatusText.Text = status1
        StatusText.TextColor3 = Color3.fromRGB(255, 255, 255)
        StatusText.TextSize = 15.000
        StatusText.TextWrapped = true
        StatusText.TextXAlignment = Enum.TextXAlignment.Right

        Status.Name = "Status"
        Status.Parent = Page
        Status.AnchorPoint = Vector2.new(0, 0.5)
        Status.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Status.BackgroundTransparency = 1.000
        Status.BorderSizePixel = 0
        Status.Position = UDim2.new(0, 0, 0.5, 70)
        Status.Size = UDim2.new(1, 0, 0, 25)
        Status.Font = Enum.Font.Ubuntu
        Status.Text = "<b>STATUS</b>"
        Status.RichText = true
        Status.TextColor3 = Color3.fromRGB(255, 255, 255)
        Status.TextSize = 10.000
        Status.TextWrapped = true
        Status.TextXAlignment = Enum.TextXAlignment.Right

        if status1 == "Undetected" then
            StatusText.TextColor3 = Color3.fromRGB(0, 170, 0)
        elseif status1 == "Detected" then
            StatusText.TextColor3 = Color3.fromRGB(255, 0, 0)
        end

        return CreateTabUnActive
    end

    function WinTypes:CreateTabNoSub(type, name, status, sub, name1, update1, sub1, status1)
        type = type or "TYPE"
        name = name or "New Game"
        status = status or "STATUS"
        sub = sub or "SUB"
        
        name1 = name1 or "New Game"
        update1 = update1 or "Last Update"
        sub1 = sub1 or "Subscription"
        status1 = status1 or "Status"

        local tabButton = Instance.new("TextButton")
        local GameLogo_3 = Instance.new("ImageLabel")
        local TypeName_3 = Instance.new("TextLabel")
        local GameName_3 = Instance.new("TextLabel")
        local LastUpdated_3 = Instance.new("TextLabel")
        local DaysLeft_3 = Instance.new("Frame")
        local Title_3 = Instance.new("TextLabel")
        local GameName_4 = Instance.new("TextLabel")
        local LastUpdate = Instance.new("TextLabel")
        local LastUpdateText = Instance.new("TextLabel")
        local Subscription = Instance.new("TextLabel")
        local SubscriptionText = Instance.new("TextLabel")
        local StatusText = Instance.new("TextLabel")
        local Status = Instance.new("TextLabel")

        local Page = Instance.new("Frame")
        Page.Name = "NewPage"
        Page.Parent = pagesFolder
        Page.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Page.BorderSizePixel = 0
        Page.Size = UDim2.new(1, 0, 1, 0)
        Page.Visible = false
        Page.BackgroundTransparency = 1

        tabButton.Name = "tabButton"
        tabButton.Parent = pagesFolder2
        tabButton.BackgroundColor3 = Color3.fromRGB(30, 34, 80)
        tabButton.AutoButtonColor = false
        tabButton.Text = ""
        tabButton.BorderSizePixel = 0
        tabButton.Size = UDim2.new(1, 0, 0.174999997, 0)

        tabButton.MouseButton1Click:Connect(function()
            local notification = Library2:CreateNotification("BUY SUBSCRIPTION TO ACCESS THIS TAB!")
        end)

--        tabButton.MouseButton1Click:Connect(function()
--            for i,v in next, pagesFolder:GetChildren() do
--                v.Visible = false
--            end
--            Page.Visible = true
--
--            for i,v in next, pagesFolder2:GetChildren() do
--                if v:IsA("TextButton") then
--                    game.TweenService:Create(v, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
--                        BackgroundColor3 = Color3.fromRGB(30, 34, 80)
--                    }):Play()
--                end
--            end
--            game.TweenService:Create(tabButton, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
--                BackgroundColor3 = Color3.fromRGB(40, 44, 87)
--            }):Play()
--        end)

--        local originalColor = tabButton.BackgroundColor3
--        local hoverColor = Color3.fromRGB(60, 64, 107)
--    
--        tabButton.MouseEnter:Connect(function()
--            game.TweenService:Create(tabButton, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
--                BackgroundColor3 = hoverColor
--            }):Play()
--        end)
--    
--        tabButton.MouseLeave:Connect(function()
--            game.TweenService:Create(tabButton, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
--                BackgroundColor3 = originalColor
--            }):Play()
--        end)
    
        GameLogo_3.Name = "GameLogo"
        GameLogo_3.Parent = tabButton
        GameLogo_3.AnchorPoint = Vector2.new(0, 0.5)
        GameLogo_3.BackgroundColor3 = Color3.fromRGB(40, 43, 82)
        GameLogo_3.BorderColor3 = Color3.fromRGB(27, 42, 53)
        GameLogo_3.BorderSizePixel = 0
        GameLogo_3.Position = UDim2.new(0, 25, 0.5, 0)
        GameLogo_3.Size = UDim2.new(0, 50, 0, 50)
        GameLogo_3.Image = "rbxassetid://12943227782"
        GameLogo_3.ImageColor3 = Color3.fromRGB(64, 67, 106)
    
        TypeName_3.Name = "TypeName"
        TypeName_3.Parent = tabButton
        TypeName_3.AnchorPoint = Vector2.new(1, 0)
        TypeName_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TypeName_3.BackgroundTransparency = 1.000
        TypeName_3.BorderSizePixel = 0
        TypeName_3.Position = UDim2.new(1, 0, 0, 10)
        TypeName_3.Size = UDim2.new(0.75, 0, 0, 20)
        TypeName_3.Font = Enum.Font.Ubuntu
        TypeName_3.Text = type
        TypeName_3.TextColor3 = Color3.fromRGB(43, 46, 90)
        TypeName_3.TextSize = 10.000
        TypeName_3.TextXAlignment = Enum.TextXAlignment.Left
    
        GameName_3.Name = "GameName"
        GameName_3.Parent = tabButton
        GameName_3.AnchorPoint = Vector2.new(1, 0)
        GameName_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        GameName_3.BackgroundTransparency = 1.000
        GameName_3.BorderSizePixel = 0
        GameName_3.Position = UDim2.new(1, 0, 0, 28)
        GameName_3.Size = UDim2.new(0.75, 0, 0, 20)
        GameName_3.Font = Enum.Font.Ubuntu
        GameName_3.Text = name
        GameName_3.TextColor3 = Color3.fromRGB(64, 67, 106)
        GameName_3.TextSize = 20.000
        GameName_3.TextWrapped = true
        GameName_3.TextXAlignment = Enum.TextXAlignment.Left
    
        LastUpdated_3.Name = "LastUpdated"
        LastUpdated_3.Parent = tabButton
        LastUpdated_3.AnchorPoint = Vector2.new(1, 0)
        LastUpdated_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        LastUpdated_3.BackgroundTransparency = 1.000
        LastUpdated_3.BorderSizePixel = 0
        LastUpdated_3.Position = UDim2.new(1, 0, 0, 45)
        LastUpdated_3.Size = UDim2.new(0.75, 0, 0, 20)
        LastUpdated_3.Font = Enum.Font.Ubuntu
        LastUpdated_3.Text = status
        LastUpdated_3.TextColor3 = Color3.fromRGB(43, 46, 90)
        LastUpdated_3.TextSize = 10.000
        LastUpdated_3.TextXAlignment = Enum.TextXAlignment.Left
    
        DaysLeft_3.Name = "DaysLeft"
        DaysLeft_3.Parent = tabButton
        DaysLeft_3.AnchorPoint = Vector2.new(1, 0.5)
        DaysLeft_3.BackgroundColor3 = Color3.fromRGB(35, 39, 81)
        DaysLeft_3.BorderSizePixel = 0
        DaysLeft_3.Position = UDim2.new(1, -25, 0.5, 0)
        DaysLeft_3.Size = UDim2.new(0, 60, 0, 20)
    
        Title_3.Name = "Title"
        Title_3.Parent = DaysLeft_3
        Title_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Title_3.BackgroundTransparency = 1.000
        Title_3.BorderSizePixel = 0
        Title_3.Size = UDim2.new(1, 0, 1, 0)
        Title_3.Font = Enum.Font.Ubuntu
        Title_3.Text = "<b>NO SUB</b>"
        Title_3.RichText = true
        Title_3.TextColor3 = Color3.fromRGB(64, 67, 106)
        Title_3.TextSize = 9.000

        GameName_4.Name = "GameName"
        GameName_4.Parent = Page
        GameName_4.AnchorPoint = Vector2.new(0, 0.5)
        GameName_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        GameName_4.BackgroundTransparency = 1.000
        GameName_4.BorderSizePixel = 0
        GameName_4.Position = UDim2.new(0, 0, 0.5, -70)
        GameName_4.Size = UDim2.new(1, 0, 0, 25)
        GameName_4.Font = Enum.Font.Ubuntu
        GameName_4.Text = "<b>".. name1 .."</b>"
        GameName_4.RichText = true
        GameName_4.TextColor3 = Color3.fromRGB(255, 255, 255)
        GameName_4.TextSize = 22.000
        GameName_4.TextWrapped = true
        GameName_4.TextXAlignment = Enum.TextXAlignment.Right

        LastUpdate.Name = "LastUpdate"
        LastUpdate.Parent = Page
        LastUpdate.AnchorPoint = Vector2.new(0, 0.5)
        LastUpdate.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        LastUpdate.BackgroundTransparency = 1.000
        LastUpdate.BorderSizePixel = 0
        LastUpdate.Position = UDim2.new(0, 0, 0.5, -30)
        LastUpdate.Size = UDim2.new(1, 0, 0, 25)
        LastUpdate.Font = Enum.Font.Ubuntu
        LastUpdate.Text = "<b>LAST UPDATE</b>"
        LastUpdate.RichText = true
        LastUpdate.TextColor3 = Color3.fromRGB(255, 255, 255)
        LastUpdate.TextSize = 10.000
        LastUpdate.TextWrapped = true
        LastUpdate.TextXAlignment = Enum.TextXAlignment.Right
        LastUpdateText.Name = "LastUpdateText"
        LastUpdateText.Parent = Page
        LastUpdateText.AnchorPoint = Vector2.new(0, 0.5)
        LastUpdateText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        LastUpdateText.BackgroundTransparency = 1.000
        LastUpdateText.BorderSizePixel = 0
        LastUpdateText.Position = UDim2.new(0, 0, 0.5, -12)
        LastUpdateText.Size = UDim2.new(1, 0, 0, 25)
        LastUpdateText.Font = Enum.Font.Ubuntu
        LastUpdateText.Text = update1
        LastUpdateText.TextColor3 = Color3.fromRGB(255, 255, 255)
        LastUpdateText.TextSize = 15.000
        LastUpdateText.TextWrapped = true
        LastUpdateText.TextXAlignment = Enum.TextXAlignment.Right

        Subscription.Name = "Subscription"
        Subscription.Parent = Page
        Subscription.AnchorPoint = Vector2.new(0, 0.5)
        Subscription.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Subscription.BackgroundTransparency = 1.000
        Subscription.BorderSizePixel = 0
        Subscription.Position = UDim2.new(0, 0, 0.5, 20)
        Subscription.Size = UDim2.new(1, 0, 0, 25)
        Subscription.Font = Enum.Font.Ubuntu
        Subscription.Text = "<b>SUBSCRIPTION</b>"
        Subscription.RichText = true
        Subscription.TextColor3 = Color3.fromRGB(255, 255, 255)
        Subscription.TextSize = 10.000
        Subscription.TextWrapped = true
        Subscription.TextXAlignment = Enum.TextXAlignment.Right

        SubscriptionText.Name = "SubscriptionText"
        SubscriptionText.Parent = Page
        SubscriptionText.AnchorPoint = Vector2.new(0, 0.5)
        SubscriptionText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        SubscriptionText.BackgroundTransparency = 1.000
        SubscriptionText.BorderSizePixel = 0
        SubscriptionText.Position = UDim2.new(0, 0, 0.5, 38)
        SubscriptionText.Size = UDim2.new(1, 0, 0, 25)
        SubscriptionText.Font = Enum.Font.Ubuntu
        SubscriptionText.Text = sub1
        SubscriptionText.TextColor3 = Color3.fromRGB(255, 255, 255)
        SubscriptionText.TextSize = 15.000
        SubscriptionText.TextWrapped = true
        SubscriptionText.TextXAlignment = Enum.TextXAlignment.Right

        StatusText.Name = "StatusText"
        StatusText.Parent = Page
        StatusText.AnchorPoint = Vector2.new(0, 0.5)
        StatusText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        StatusText.BackgroundTransparency = 1.000
        StatusText.BorderSizePixel = 0
        StatusText.Position = UDim2.new(0, 0, 0.5, 88)
        StatusText.Size = UDim2.new(1, 0, 0, 25)
        StatusText.Font = Enum.Font.Ubuntu
        StatusText.Text = status1
        StatusText.TextColor3 = Color3.fromRGB(255, 255, 255)
        StatusText.TextSize = 15.000
        StatusText.TextWrapped = true
        StatusText.TextXAlignment = Enum.TextXAlignment.Right

        Status.Name = "Status"
        Status.Parent = Page
        Status.AnchorPoint = Vector2.new(0, 0.5)
        Status.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Status.BackgroundTransparency = 1.000
        Status.BorderSizePixel = 0
        Status.Position = UDim2.new(0, 0, 0.5, 70)
        Status.Size = UDim2.new(1, 0, 0, 25)
        Status.Font = Enum.Font.Ubuntu
        Status.Text = "<b>STATUS</b>"
        Status.RichText = true
        Status.TextColor3 = Color3.fromRGB(255, 255, 255)
        Status.TextSize = 10.000
        Status.TextWrapped = true
        Status.TextXAlignment = Enum.TextXAlignment.Right

        if status1 == "Undetected" then
            StatusText.TextColor3 = Color3.fromRGB(0, 170, 0)
        elseif status1 == "Detected" then
            StatusText.TextColor3 = Color3.fromRGB(255, 0, 0)
        end

        return CreateTabNoSub
    end

    return WinTypes
end

local Window = Library:CreateWindow("FATILITY")

-- type, gamename, lastupdate, sublength, gamename, lastupdate, subtill, status
local Tab = Window:CreateTabActive("BETA", "Innsbruck", "LAST UPDATED 8 HOURS AGO", "30 DAYS", "Innsbruck", "8 hours ago", "Until 09/04/2023 (30 Days)", "Undetected")
local Tab2 = Window:CreateTabUnActive("BETA", "Innsbruck", "LAST UPDATED 8 HOURS AGO", "30 DAYS", "Innsbruck", "8 hours ago", "Until 09/04/2023 (30 Days)", "Detected")
local Tab3 = Window:CreateTabNoSub("BETA", "Innsbruck", "LAST UPDATED 8 HOURS AGO", "30 DAYS", "Innsbruck", "8 hours ago", "Until 09/04/2023 (30 Days)", "Undetected")

return Library
