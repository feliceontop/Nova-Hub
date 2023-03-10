local Library = {}

function Library:GetSide(LeftSize, RightSize)
    if LeftSize - 1 > RightSize - 1 then
        return "Right"
    else
        return "Left"
    end
end

function Library:CreateWindow(title)
    title = title or "UI Library"

    -- Window Main
    local WinTypes = {}
    local WindowDragging, SliderDragging, ColorPickerDragging = false, false, false
    local oldcolor = nil
    local keybind = "RightControl"
    local cancbind = false

    -- Window Instances
    local zapped = Instance.new("ScreenGui")
    local Main = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local DropShadow = Instance.new("Frame")
    local DropShadow_2 = Instance.new("ImageLabel")
    local Navigation = Instance.new("Frame")
    local UICorner_2 = Instance.new("UICorner")
    local Extension = Instance.new("Frame")
    local Title = Instance.new("TextLabel")
    local ButtonHolder = Instance.new("Frame")
    local UIPadding = Instance.new("UIPadding")
    local UIListLayout = Instance.new("UIListLayout")
    local SearchBarHolder = Instance.new("Frame")
    local SearchBar = Instance.new("TextBox")
    local UIPadding_4 = Instance.new("UIPadding")
    local UICorner_5 = Instance.new("UICorner")
    local Icon_3 = Instance.new("ImageLabel")
    local UIPadding_5 = Instance.new("UIPadding")
    local Username = Instance.new("TextLabel")
    local UserImage = Instance.new("ImageLabel")
    local UICorner_6 = Instance.new("UICorner")
    local TopBar = Instance.new("Frame")
    local ExitBtn = Instance.new("ImageButton")
    local Line = Instance.new("Frame")
    local ContentContainer = Instance.new("Frame")

    -- Window Properties
    zapped.Name = title
    zapped.Parent = game.CoreGui
    zapped.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    Main.Name = "Main"
    Main.Parent = zapped
    Main.AnchorPoint = Vector2.new(0.5, 0.5)
    Main.BackgroundColor3 = Color3.fromRGB(3, 10, 35)
    Main.BorderSizePixel = 0
    Main.Position = UDim2.new(0.5, 0, 0.5, 0)
    Main.Size = UDim2.new(0, 940, 0, 630)

    UICorner.CornerRadius = UDim.new(0, 6)
    UICorner.Parent = Main

    DropShadow.Name = "DropShadow"
    DropShadow.Parent = Main
    DropShadow.BackgroundTransparency = 1.000
    DropShadow.BorderSizePixel = 0
    DropShadow.Size = UDim2.new(1, 0, 1, 0)
    DropShadow.ZIndex = 0
    DropShadow_2.Name = "DropShadow"
    DropShadow_2.Parent = DropShadow
    DropShadow_2.AnchorPoint = Vector2.new(0.5, 0.5)
    DropShadow_2.BackgroundTransparency = 1.000
    DropShadow_2.BorderSizePixel = 0
    DropShadow_2.Position = UDim2.new(0.5, 0, 0.5, 0)
    DropShadow_2.Size = UDim2.new(1, 47, 1, 47)
    DropShadow_2.ZIndex = 0
    DropShadow_2.Image = "rbxassetid://6014261993"
    DropShadow_2.ImageColor3 = Color3.fromRGB(0, 0, 0)
    DropShadow_2.ImageTransparency = 0.500
    DropShadow_2.ScaleType = Enum.ScaleType.Slice
    DropShadow_2.SliceCenter = Rect.new(49, 49, 450, 450)

    Navigation.Name = "Navigation"
    Navigation.Parent = Main
    Navigation.BackgroundColor3 = Color3.fromRGB(35, 62, 189)
    Navigation.BorderSizePixel = 0
    Navigation.Size = UDim2.new(0.200000003, 1, 1, 0)

    UICorner_2.CornerRadius = UDim.new(0, 6)
    UICorner_2.Parent = Navigation

    Extension.Name = "Extension"
    Extension.Parent = Navigation
    Extension.AnchorPoint = Vector2.new(1, 0)
    Extension.BackgroundColor3 = Color3.fromRGB(35, 62, 189)
    Extension.BorderSizePixel = 0
    Extension.Position = UDim2.new(1, 0, 0, 0)
    Extension.Size = UDim2.new(0, 5, 1, 0)

    Title.Name = "Title"
    Title.Parent = Navigation
    Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Title.BackgroundTransparency = 1.000
    Title.BorderSizePixel = 0
    Title.Size = UDim2.new(1, 1, 0, 60)
    Title.Font = Enum.Font.Ubuntu
    Title.Text = title
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.TextSize = 16.000

    ButtonHolder.Name = "ButtonHolder"
    ButtonHolder.Parent = Navigation
    ButtonHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ButtonHolder.BackgroundTransparency = 1.000
    ButtonHolder.BorderSizePixel = 0
    ButtonHolder.Position = UDim2.new(0, 0, 0, 120)
    ButtonHolder.Size = UDim2.new(1, 0, 0.819999993, -60)

    UIPadding.Parent = ButtonHolder
    UIPadding.PaddingBottom = UDim.new(0, 12)
    UIPadding.PaddingLeft = UDim.new(0, 12)
    UIPadding.PaddingRight = UDim.new(0, 12)
    UIPadding.PaddingTop = UDim.new(0, 12)

    UIListLayout.Parent = ButtonHolder
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Padding = UDim.new(0, 10)

    SearchBarHolder.Name = "SearchBarHolder"
    SearchBarHolder.Parent = Navigation
    SearchBarHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    SearchBarHolder.BackgroundTransparency = 1.000
    SearchBarHolder.BorderSizePixel = 0
    SearchBarHolder.Position = UDim2.new(0, 0, 0, 60)
    SearchBarHolder.Size = UDim2.new(1, 0, 0, 60)

    SearchBar.Name = "SearchBar"
    SearchBar.Parent = SearchBarHolder
    SearchBar.BackgroundColor3 = Color3.fromRGB(39, 69, 209)
    SearchBar.Position = UDim2.new(0, 0, 0.119999997, 0)
    SearchBar.Size = UDim2.new(1, 0, 0, 30)
    SearchBar.Font = Enum.Font.Ubuntu
    SearchBar.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
    SearchBar.PlaceholderText = "Search"
    SearchBar.Text = ""
    SearchBar.TextColor3 = Color3.fromRGB(255, 255, 255)
    SearchBar.TextSize = 14.000
    SearchBar.TextXAlignment = Enum.TextXAlignment.Left
    SearchBar.ClipsDescendants = true

    UIPadding_4.Parent = SearchBar
    UIPadding_4.PaddingLeft = UDim.new(0, 30)

    UICorner_5.CornerRadius = UDim.new(0, 6)
    UICorner_5.Parent = SearchBar

    Icon_3.Name = "Icon"
    Icon_3.Parent = SearchBar
    Icon_3.AnchorPoint = Vector2.new(1, 0)
    Icon_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Icon_3.BackgroundTransparency = 1.000
    Icon_3.BorderSizePixel = 0
    Icon_3.Position = UDim2.new(0, -5, 0, 5)
    Icon_3.Size = UDim2.new(0, 20, 0, 20)
    Icon_3.Image = "rbxassetid://12583719274"
    Icon_3.ImageRectOffset = Vector2.new(20, 0)
    Icon_3.ImageRectSize = Vector2.new(-20, 20)

    UIPadding_5.Parent = SearchBarHolder
    UIPadding_5.PaddingBottom = UDim.new(0, 32)
    UIPadding_5.PaddingLeft = UDim.new(0, 12)
    UIPadding_5.PaddingRight = UDim.new(0, 12)
    UIPadding_5.PaddingTop = UDim.new(0, 12)

    Username.Name = "Username"
    Username.Parent = Navigation
    Username.AnchorPoint = Vector2.new(1, 1)
    Username.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Username.BackgroundTransparency = 1.000
    Username.BorderSizePixel = 0
    Username.Position = UDim2.new(1, 0, 1, 0)
    Username.Size = UDim2.new(1, -45, 0, 60)
    Username.Font = Enum.Font.Ubuntu
    Username.Text = game.Players.LocalPlayer.Name
    Username.TextXAlignment = "Left"
    Username.TextColor3 = Color3.fromRGB(255, 255, 255)
    Username.TextSize = 14.000

    UserImage.Name = "UserImage"
    UserImage.Parent = Username
    UserImage.AnchorPoint = Vector2.new(0, 1)
    UserImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UserImage.BackgroundTransparency = 1.000
    UserImage.BorderSizePixel = 0
    UserImage.Position = UDim2.new(0, -30, 1, -20)
    UserImage.Size = UDim2.new(0, 20, 0, 20)
    UserImage.Image = game.Players:GetUserThumbnailAsync(game.Players.LocalPlayer.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420)

    UICorner_6.CornerRadius = UDim.new(1, 0)
    UICorner_6.Parent = UserImage

    TopBar.Name = "TopBar"
    TopBar.Parent = Main
    TopBar.AnchorPoint = Vector2.new(1, 0)
    TopBar.BackgroundColor3 = Color3.fromRGB(13, 17, 45)
    TopBar.BackgroundTransparency = 1.000
    TopBar.BorderSizePixel = 0
    TopBar.Position = UDim2.new(1, 0, 0, 0)
    TopBar.Size = UDim2.new(0.799000025, 0, 0, 60)

    ExitBtn.Name = "ExitBtn"
    ExitBtn.Parent = TopBar
    ExitBtn.AnchorPoint = Vector2.new(1, 0.5)
    ExitBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ExitBtn.BackgroundTransparency = 1.000
    ExitBtn.BorderColor3 = Color3.fromRGB(255, 255, 255)
    ExitBtn.BorderSizePixel = 0
    ExitBtn.Position = UDim2.new(1, -20, 0.5, 0)
    ExitBtn.Size = UDim2.new(0, 20, 0, 20)
    ExitBtn.Image = "rbxassetid://12580598830"
    ExitBtn.MouseButton1Click:Connect(function()
        zapped:Destroy()
    end)

    Line.Name = "Line"
    Line.Parent = TopBar
    Line.AnchorPoint = Vector2.new(0, 1)
    Line.BackgroundColor3 = Color3.fromRGB(13, 17, 45)
    Line.BorderSizePixel = 0
    Line.Position = UDim2.new(0, 0, 1, 0)
    Line.Size = UDim2.new(1, 0, 0, 1)

    ContentContainer.Name = "ContentContainer"
    ContentContainer.Parent = Main
    ContentContainer.AnchorPoint = Vector2.new(1, 0)
    ContentContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ContentContainer.BackgroundTransparency = 1.000
    ContentContainer.BorderSizePixel = 0
    ContentContainer.Position = UDim2.new(1, -12, 0, 72)
    ContentContainer.Size = UDim2.new(1, -212, 1, -84)

    local pagesFolder = Instance.new("Folder")
 
    pagesFolder.Name = "pagesFolder"
    pagesFolder.Parent = ContentContainer

    -- Window Dragging
    local userinputservice = game:GetService("UserInputService")
    local dragInput, dragStart, startPos = nil, nil, nil

    Main.InputBegan:Connect(function(input)
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

    Main.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)

    userinputservice.InputChanged:Connect(function(input)
        if input == dragInput and WindowDragging and not SliderDragging and not ColorPickerDragging then
            local Delta = input.Position - dragStart
            Main:TweenPosition(UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y), Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, 0.04, true)
        end
    end)

    userinputservice.InputBegan:Connect(function(input)
        if (cancbind) then
            if (input.KeyCode == Enum.KeyCode[keybind]) then
                zapped.Enabled = not zapped.Enabled
            end
        else
            if (input.KeyCode == Enum.KeyCode.RightControl) then
                zapped.Enabled = not zapped.Enabled
            end
        end
    end)

    -- Window Types
    function WinTypes:Destroy()
        zapped:Destory()
    end

    function WinTypes:UpdateBind(bind, custombind)
        keybind = bind
        cancbind = custombind
    end

    function WinTypes:CreateTab(name, icon)
        name = name or "NewTab"
        icon = icon or "rbxassetid://12580604908"

        -- Tab Main
        local TabTypes = {}

        -- Tab Instances
        local Home = Instance.new("TextButton")
        local UICorner_3 = Instance.new("UICorner")
        local UIPadding_2 = Instance.new("UIPadding")
        local Icon = Instance.new("ImageLabel")
        local HomeTab = Instance.new("ScrollingFrame")
        local Left = Instance.new("Frame")
        local Right = Instance.new("Frame")
        local UIListLayout_3 = Instance.new("UIListLayout")
        local UIListLayout_5 = Instance.new("UIListLayout")

        -- Tab Properties
        Home.Name = "Home"
        Home.Parent = ButtonHolder
        Home.BackgroundColor3 = Color3.fromRGB(39, 69, 209)
        Home.BorderSizePixel = 0
        Home.Size = UDim2.new(1, 0, 0, 30)
        Home.Font = Enum.Font.Ubuntu
        Home.Text = name
        Home.TextColor3 = Color3.fromRGB(255, 255, 255)
        Home.TextSize = 14.000
        Home.TextXAlignment = Enum.TextXAlignment.Left
        Home.AutoButtonColor = false
        Home.MouseButton1Click:Connect(function()
            for i,v in next, pagesFolder:GetChildren() do
                v.Visible = false
            end 
            HomeTab.Visible = true
            HomeTab.Active = true

            for i,v in next, ButtonHolder:GetChildren() do
                if v:IsA("TextButton") then
                    game.TweenService:Create(v, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                        BackgroundColor3 = Color3.fromRGB(39, 69, 209)
                    }):Play()
                end
            end
            game.TweenService:Create(Home, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                BackgroundColor3 = Color3.fromRGB(27, 47, 145)
            }):Play()
        end)

        UICorner_3.CornerRadius = UDim.new(0, 6)
        UICorner_3.Parent = Home

        UIPadding_2.Parent = Home
        UIPadding_2.PaddingLeft = UDim.new(0, 30)

        Icon.Name = "Icon"
        Icon.Parent = Home
        Icon.AnchorPoint = Vector2.new(0, 0.5)
        Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Icon.BackgroundTransparency = 1.000
        Icon.BorderSizePixel = 0
        Icon.Position = UDim2.new(0, -25, 0.5, 0)
        Icon.Size = UDim2.new(0, 20, 0, 20)
        Icon.Image = icon

        HomeTab.Name = "newPage"
        HomeTab.Parent = pagesFolder
        HomeTab.Active = true
        HomeTab.Visible = false
        HomeTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        HomeTab.BackgroundTransparency = 1.000
        HomeTab.BorderSizePixel = 0
        HomeTab.Selectable = false
        HomeTab.Size = UDim2.new(1, 0, 1, 0)
        HomeTab.ScrollBarThickness = 0

        if (not players) then
            Left.Name = "Left"
            Left.Parent = HomeTab
            Left.BackgroundColor3 = Color3.fromRGB(13, 17, 45)
            Left.BackgroundTransparency = 1
            Left.BorderSizePixel = 0
            Left.Size = UDim2.new(0.49000001, 0, 1, 0)

            UIListLayout_3.Parent = Left
            UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout_3.Padding = UDim.new(0, 12)

            Right.Name = "Right"
            Right.Parent = HomeTab
            Right.AnchorPoint = Vector2.new(1, 0)
            Right.BackgroundColor3 = Color3.fromRGB(13, 17, 45)
            Right.BackgroundTransparency = 1
            Right.BorderSizePixel = 0
            Right.Position = UDim2.new(1, 0, 0, 0)
            Right.Size = UDim2.new(0.49000001, 0, 1, 0)

            UIListLayout_5.Parent = Right
            UIListLayout_5.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout_5.Padding = UDim.new(0, 12)
        end

        function TabTypes:CreateSection(name, side)
            name = name or "New Section"
            side = side or "Left"

            -- Groupbox Main
            local GroupTypes = {}

            -- Section Instances
            local Section = Instance.new("Frame")
            local UICorner_7 = Instance.new("UICorner")
            local SectionName = Instance.new("TextLabel")
            local UIPadding_6 = Instance.new("UIPadding")
            local Items = Instance.new("Frame")
            local UIListLayout_2 = Instance.new("UIListLayout")

            -- Section Properties
            Section.Name = "Section"
            Section.Parent = HomeTab[side]
            Section.BackgroundColor3 = Color3.fromRGB(13, 17, 45)
            Section.Size = UDim2.new(1, 0, 0, 25)

            UICorner_7.CornerRadius = UDim.new(0, 6)
            UICorner_7.Parent = Section

            SectionName.Name = "SectionName"
            SectionName.Parent = Section
            SectionName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            SectionName.BackgroundTransparency = 1.000
            SectionName.BorderSizePixel = 0
            SectionName.Size = UDim2.new(0, 165, 0, 25)
            SectionName.Font = Enum.Font.Ubuntu
            SectionName.Text = name
            SectionName.TextColor3 = Color3.fromRGB(255, 255, 255)
            SectionName.TextSize = 14.000
            SectionName.TextXAlignment = Enum.TextXAlignment.Left
            SectionName.TextYAlignment = Enum.TextYAlignment.Top

            UIPadding_6.Parent = SectionName
            UIPadding_6.PaddingLeft = UDim.new(0, 12)
            UIPadding_6.PaddingTop = UDim.new(0, 6)

            Items.Name = "Items"
            Items.Parent = Section
            Items.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Items.BackgroundTransparency = 1.000
            Items.BorderSizePixel = 0
            Items.Position = UDim2.new(0, 0, 0, 40)
            Items.Size = UDim2.new(1, 0, 1, -40)

            UIListLayout_2.Parent = Items
            UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
            UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout_2.Padding = UDim.new(0, 7)

            UIListLayout_2:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
                Section.Size = UDim2.new(1, 0, 0, UIListLayout_2.AbsoluteContentSize.Y + 50)
            end)

            -- Groupbox Types
            function GroupTypes:CreateLabel(name)
                name = name or "New Label"

                -- Label Instances
                local Label = Instance.new("Frame")
                local Title_2 = Instance.new("TextLabel")
                local UICorner_8 = Instance.new("UICorner")
                local Icon_4 = Instance.new("ImageLabel")

                -- Label Properties
                Label.Name = "Label"
                Label.Parent = Items
                Label.BackgroundColor3 = Color3.fromRGB(19, 24, 63)
                Label.BorderSizePixel = 0
                Label.Size = UDim2.new(1, -24, 0, 25)

                Title_2.Name = "Title"
                Title_2.Parent = Label
                Title_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Title_2.BackgroundTransparency = 1.000
                Title_2.BorderSizePixel = 0
                Title_2.Size = UDim2.new(1, 0, 1, 0)
                Title_2.Text = name
                Title_2.Font = Enum.Font.Ubuntu
                Title_2.TextColor3 = Color3.fromRGB(255, 255, 255)
                Title_2.TextSize = 12.000

                UICorner_8.CornerRadius = UDim.new(0, 6)
                UICorner_8.Parent = Label

                Icon_4.Name = "Icon"
                Icon_4.Parent = Label
                Icon_4.AnchorPoint = Vector2.new(0, 0.5)
                Icon_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Icon_4.BackgroundTransparency = 1.000
                Icon_4.BorderSizePixel = 0
                Icon_4.Position = UDim2.new(0, 5, 0.5, 0)
                Icon_4.Size = UDim2.new(0, 15, 0, 15)
                Icon_4.Image = "rbxassetid://12584329841"
                
            end

            function GroupTypes:CreateToggle(name, callback)
                name = name or "New Toggle"
                callback = callback or function(v) print(v) end

                -- Toggle Main
                local ToggleTypes = {}
                local Enabled = false

                -- Toggle Instances
                local Toggle = Instance.new("Frame")
                local ToggleFrame = Instance.new("TextButton")
                local UICorner_10 = Instance.new("UICorner")
                local Title_4 = Instance.new("TextLabel")

                -- Toggle Properties
                Toggle.Name = "Toggle"
                Toggle.Parent = Items
                Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Toggle.BackgroundTransparency = 1.000
                Toggle.BorderSizePixel = 0
                Toggle.Size = UDim2.new(1, -24, 0, 20)

                ToggleFrame.Name = "ToggleFrame"
                ToggleFrame.Parent = Toggle
                ToggleFrame.AnchorPoint = Vector2.new(1, 0.5)
                ToggleFrame.BackgroundColor3 = Color3.fromRGB(19, 24, 63)
                ToggleFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
                ToggleFrame.BorderSizePixel = 0
                ToggleFrame.Font = Enum.Font.SourceSans
                ToggleFrame.Text = ""
                ToggleFrame.Position = UDim2.new(1, 0, 0.5, 0)
                ToggleFrame.Size = UDim2.new(0, 20, 0, 20)
                ToggleFrame.AutoButtonColor = false

                UICorner_10.CornerRadius = UDim.new(0, 6)
                UICorner_10.Parent = ToggleFrame

                Title_4.Name = "Title"
                Title_4.Parent = Toggle
                Title_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Title_4.BackgroundTransparency = 1.000
                Title_4.BorderSizePixel = 0
                Title_4.Size = UDim2.new(1, -25, 1, 0)
                Title_4.Font = Enum.Font.Ubuntu
                Title_4.Text = name
                Title_4.TextColor3 = Color3.fromRGB(150, 150, 150)
                Title_4.TextSize = 12.000
                Title_4.TextXAlignment = Enum.TextXAlignment.Left

                -- Toggle Code
                local ToggleCallback = callback

                ToggleFrame.MouseButton1Click:Connect(function()
                    Enabled = not Enabled

                    if (Enabled) then
                        game.TweenService:Create(Title_4, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
                            TextColor3 = Color3.fromRGB(255, 255, 255)
                        }):Play()
                        game.TweenService:Create(ToggleFrame, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
                            BackgroundColor3 = Color3.fromRGB(39, 69, 209)
                        }):Play()
                    else
                        game.TweenService:Create(Title_4, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
                            TextColor3 = Color3.fromRGB(150, 150, 150)
                        }):Play()
                        game.TweenService:Create(ToggleFrame, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
                            BackgroundColor3 = Color3.fromRGB(19, 24, 63)
                        }):Play()
                    end

                    callback(Enabled)
                end)

                -- Toggle Types
                function ToggleTypes:SetState(state)
                    state = state or false
                    Enabled = state

                    if (Enabled) then
                        ToggleFrame.BackgroundColor3 = color
                    else
                        ToggleFrame.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
                    end

                    callback(Enabled)
                end

                function ToggleTypes:GetState()
                    return Enabled
                end

                function ToggleTypes:CreateKeyBind(def, callback)
                    def = def or "NONE"
                    
                    -- Keybind Main
                    local keytypes = {}

                    -- Keybind Instances
                    local KeyBindFrame = Instance.new("TextLabel")
                    local KeyBindButton = Instance.new("TextButton")
                    local UICorner_15 = Instance.new("UICorner")
                    local Title_8 = Instance.new("TextLabel")

                    -- Keybind Properties
                    KeyBindFrame.Name = "KeyBindFrame"
                    KeyBindFrame.Parent = Toggle
                    KeyBindFrame.AnchorPoint = Vector2.new(1, 0.5)
                    KeyBindFrame.BackgroundColor3 = Color3.fromRGB(19, 24, 63)
                    KeyBindFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
                    KeyBindFrame.Text = ""
                    KeyBindFrame.BorderSizePixel = 0
                    KeyBindFrame.Position = UDim2.new(1, -26, 0.5, 0)
                    KeyBindFrame.Size = UDim2.new(0, 80, 0, 20)
                    
                    UICorner_15.CornerRadius = UDim.new(0, 6)
                    UICorner_15.Parent = KeyBindFrame
                    
                    Title_8.Name = "Title"
                    Title_8.Parent = KeyBindFrame
                    Title_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    Title_8.BackgroundTransparency = 1.000
                    Title_8.BorderSizePixel = 0
                    Title_8.Position = UDim2.new(0, 1, 0, -1)
                    Title_8.Size = UDim2.new(1, 0, 1, 0)
                    Title_8.Font = Enum.Font.Ubuntu
                    Title_8.Text = def
                    Title_8.TextColor3 = Color3.fromRGB(255, 255, 255)
                    Title_8.TextSize = 12.000

                    KeyBindButton.Name = "KeyBindButton"
                    KeyBindButton.Parent = KeyBindFrame
                    KeyBindButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    KeyBindButton.BackgroundTransparency = 1.000
                    KeyBindButton.Size = UDim2.new(1, 0, 1, 0)
                    KeyBindButton.Font = Enum.Font.SourceSans
                    KeyBindButton.TextColor3 = Color3.fromRGB(0, 0, 0)
                    KeyBindButton.TextSize = 14.000
                    KeyBindButton.Text = ""

                    -- Keybind Codes
                    local WaitingForBind = false
                    local Clicked = false
                    local Sel = def
                    local Blacklisted = { "W", "A", "S", "D", "Slash", "Tab", "Backspace", "Escape", "Space", "Delete", "Unknown" }

                    KeyBindButton.MouseButton1Click:Connect(function()
                        Clicked = true
                        Title_8.Text = "..."
                    end)

                    game.RunService.Heartbeat:Connect(function()
                        if (WaitingForBind == false) then
                            if (Clicked == true) then
                                WaitingForBind = true
                                Clicked = false
                            end
                        end
                    end)

                    userinputservice.InputBegan:Connect(function(Input)
                        if (WaitingForBind and Input.UserInputType == Enum.UserInputType.Keyboard) then
                            local Key = tostring(Input.KeyCode):gsub("Enum.KeyCode.", "")

                            if (not table.find(Blacklisted, Key)) then
                                Title_8.Text = "" .. Key .. ""
                            else
                                Title_8.Text = "NONE"
                            end

                            Sel = Key
                            WaitingForBind = false
                        else
                            if (Input.UserInputType == Enum.UserInputType.Keyboard) then
                                local Key = tostring(Input.KeyCode):gsub("Enum.KeyCode.", "")

                                if (Key == Sel) then
                                    Enabled = not Enabled

                                    if (Enabled) then
                                        game.TweenService:Create(Title_4, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
                                            TextColor3 = Color3.fromRGB(255, 255, 255)
                                        }):Play()
                                        game.TweenService:Create(ToggleFrame, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
                                            BackgroundColor3 = Color3.fromRGB(39, 69, 209)
                                        }):Play()
                                    else
                                        game.TweenService:Create(Title_4, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
                                            TextColor3 = Color3.fromRGB(150, 150, 150)
                                        }):Play()
                                        game.TweenService:Create(ToggleFrame, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
                                            BackgroundColor3 = Color3.fromRGB(19, 24, 63)
                                        }):Play()
                                    end

                                    if (callback) then
                                        callback(Key)
                                    else
                                        ToggleCallback(Enabled)
                                    end
                                end
                            end
                        end
                    end)

                    function keytypes:SetBind(key)
                        bindtext.Text = "" .. key .. ""
                        Sel = key
                    end

                    function keytypes:GetBind()
                        return Sel
                    end

                    return keytypes
                end

                return ToggleTypes
            end

            function GroupTypes:CreateSlider(name, min, max, def, callback)
                name = name or "New Slider"
                min = min or 0
                max = max or 100
                def = def or 50
                callback = callback or function(s) print(s) end

                -- Slider Main
                local SliderTypes = {}
                local Dragging = false
                local Value = 0

                -- Slider Instances
                local Slider = Instance.new("Frame")
                local SliderBack = Instance.new("Frame")
                local UICorner_12 = Instance.new("UICorner")
                local Value = Instance.new("TextLabel")
                local Dragable = Instance.new("Frame")
                local UICorner_13 = Instance.new("UICorner")
                local Title_6 = Instance.new("TextLabel")

                -- Slider Properties
                Slider.Name = "Slider"
                Slider.Parent = Items
                Slider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Slider.BackgroundTransparency = 1.000
                Slider.BorderSizePixel = 0
                Slider.Size = UDim2.new(1, -24, 0, 20)

                SliderBack.Name = "SliderBack"
                SliderBack.Parent = Slider
                SliderBack.AnchorPoint = Vector2.new(1, 0.5)
                SliderBack.BackgroundColor3 = Color3.fromRGB(19, 24, 63)
                SliderBack.BorderColor3 = Color3.fromRGB(27, 42, 53)
                SliderBack.BorderSizePixel = 0
                SliderBack.Position = UDim2.new(1, 0, 0.5, 0)
                SliderBack.Size = UDim2.new(0, 160, 0, 20)

                UICorner_12.CornerRadius = UDim.new(0, 6)
                UICorner_12.Parent = SliderBack

                Value.Name = "Value"
                Value.Parent = SliderBack
                Value.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Value.BackgroundTransparency = 1.000
                Value.BorderSizePixel = 0
                Value.Size = UDim2.new(1, 0, 1, 0)
                Value.ZIndex = 2
                Value.Font = Enum.Font.Ubuntu
                Value.Text = min .. "/" .. max
                Value.TextColor3 = Color3.fromRGB(255, 255, 255)
                Value.TextSize = 12.000

                Dragable.Name = "Dragable"
                Dragable.Parent = SliderBack
                Dragable.BackgroundColor3 = Color3.fromRGB(39, 69, 209)
                Dragable.BorderSizePixel = 0
                Dragable.Size = UDim2.new(0.5, 0, 1, 0)

                UICorner_13.CornerRadius = UDim.new(0, 6)
                UICorner_13.Parent = Dragable

                Title_6.Name = "Title"
                Title_6.Parent = Slider
                Title_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Title_6.BackgroundTransparency = 1.000
                Title_6.BorderSizePixel = 0
                Title_6.Size = UDim2.new(1, -165, 1, 0)
                Title_6.Font = Enum.Font.Ubuntu
                Title_6.Text = name
                Title_6.TextColor3 = Color3.fromRGB(255, 255, 255)
                Title_6.TextSize = 12.000
                Title_6.TextXAlignment = Enum.TextXAlignment.Left

                -- Slider Code
                Dragable.Size = UDim2.new(def / max, 0, 1, 0)
                Value.Text = def
                
                local function Slide(input)
                    local pos = UDim2.new(math.clamp((input.Position.X - SliderBack.AbsolutePosition.X) / SliderBack.AbsoluteSize.X, 0, 1), 0, 1, 0)
                    Dragable.Size = pos
                    local s = math.floor(((pos.X.Scale * max) / max) * (max - min) + min)
                    value = s
                    Value.Text = tostring(s)
                    callback(value)
                end

                SliderBack.InputBegan:Connect(function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 then
                        Slide(input)
                        Dragging = true
                        SliderDragging = true
                    end
                end)
    
                SliderBack.InputEnded:Connect(function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 then
                        Dragging = false
                        SliderDragging = false
                    end
                end)
    
                userinputservice.InputChanged:Connect(function(input)
                    if Dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
                        Slide(input)
                    end
                end)

                -- Slider Types
                function SliderTypes:SetValue(s)
                    s = s or 0
                    Value = s
                    Dragable.Size = UDim2.new(Value / max, 0, 1, 0)
                    value.Text = tostring(Value) .. "/" .. max
                    callback(Value)
                end

                function SliderTypes:GetValue()
                    return Value
                end

                return SliderTypes
            end

            function GroupTypes:CreateButton(name, callback)
                name = name or "New Button"
                callback = callback or function() print("clicked") end

                -- Button Instances
                local Button = Instance.new("Frame")
                local ButtonFrame = Instance.new("TextButton")
                local UICorner_9 = Instance.new("UICorner")
                local TextLabel = Instance.new("TextLabel")
                local Title_3 = Instance.new("TextLabel")

                -- Button Properties
                Button.Name = "Button"
                Button.Parent = Items
                Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Button.BackgroundTransparency = 1.000
                Button.BorderSizePixel = 0
                Button.Size = UDim2.new(1, -24, 0, 20)

                ButtonFrame.Name = "ButtonFrame"
                ButtonFrame.Parent = Button
                ButtonFrame.AnchorPoint = Vector2.new(1, 0.5)
                ButtonFrame.BackgroundColor3 = Color3.fromRGB(39, 69, 209)
                ButtonFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
                ButtonFrame.BorderSizePixel = 0
                ButtonFrame.Text = ""
                ButtonFrame.Position = UDim2.new(1, 0, 0.5, 0)
                ButtonFrame.Size = UDim2.new(0, 160, 0, 20)

                UICorner_9.CornerRadius = UDim.new(0, 6)
                UICorner_9.Parent = ButtonFrame

                TextLabel.Parent = ButtonFrame
                TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                TextLabel.BackgroundTransparency = 1.000
                TextLabel.BorderSizePixel = 0
                TextLabel.Size = UDim2.new(1, 0, 1, 0)
                TextLabel.Font = Enum.Font.Ubuntu
                TextLabel.Text = "Press"
                TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                TextLabel.TextSize = 12.000

                Title_3.Name = "Title"
                Title_3.Parent = Button
                Title_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Title_3.BackgroundTransparency = 1.000
                Title_3.BorderSizePixel = 0
                Title_3.Size = UDim2.new(1, -165, 1, 0)
                Title_3.Font = Enum.Font.Ubuntu
                Title_3.Text = "Button"
                Title_3.TextColor3 = Color3.fromRGB(255, 255, 255)
                Title_3.TextSize = 12.000
                Title_3.TextXAlignment = Enum.TextXAlignment.Left

                -- Button Code
                ButtonFrame.MouseButton1Click:Connect(function()
                    callback()
                end)
            end

            return GroupTypes
        end

        return TabTypes
    end

    return WinTypes
end

return Library
