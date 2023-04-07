local Library = {}

function Library:CreateWindow(title)
    title = title or "UI Library"

    if game:GetService("CoreGui"):FindFirstChild(title) then
        game:GetService("CoreGui")[title]:Destroy()
    end

    -- Window Main
    local WinTypes = {}
    local WindowDragging, SliderDragging, ColorPickerDragging = false, false, false
    local oldcolor = nil
    local keybind = "RightControl"
    local cancbind = false

    local Fatility = Instance.new("ScreenGui")
    local Main = Instance.new("Frame")
    local TopBar = Instance.new("Frame")
    local Line = Instance.new("Frame")
    local UIGradient = Instance.new("UIGradient")
    local Title = Instance.new("TextLabel")
    local Pattern = Instance.new("ImageLabel")
    local TabHolder = Instance.new("ScrollingFrame")
    local UIListLayout = Instance.new("UIListLayout")
    local UIPadding = Instance.new("UIPadding")
    local Tab = Instance.new("Frame")
    local TopBar_2 = Instance.new("Frame")
    local ContentContainer = Instance.new("Frame")
    local Outline_6 = Instance.new("Frame")
    local RightLine_6 = Instance.new("Frame")
    local BottomLine_6 = Instance.new("Frame")
    local TopLine_9 = Instance.new("Frame")
    local LeftLine_6 = Instance.new("Frame")
    local TopLine2 = Instance.new("Frame")

    local pagesFolder = Instance.new("Folder")
 
    pagesFolder.Name = "pagesFolder"
    pagesFolder.Parent = ContentContainer

    local pagesFolder2 = Instance.new("Folder")
 
    pagesFolder2.Name = "pagesFolder"
    pagesFolder2.Parent = TopBar_2

    Fatility.Name = title
    Fatility.Parent = game:GetService("CoreGui")

    Main.Name = "Main"
    Main.Parent = Fatility
    Main.AnchorPoint = Vector2.new(0.5, 0.5)
    Main.BackgroundColor3 = Color3.fromRGB(15, 10, 30)
    Main.BorderSizePixel = 0
    Main.Position = UDim2.new(0.5, 0, 0.5, 0)
    Main.Size = UDim2.new(0, 940, 0, 630)

    TopBar.Name = "TopBar"
    TopBar.Parent = Main
    TopBar.AnchorPoint = Vector2.new(1, 0)
    TopBar.BackgroundColor3 = Color3.fromRGB(30, 23, 64)
    TopBar.BorderSizePixel = 0
    TopBar.Position = UDim2.new(1, 0, 0, 0)
    TopBar.Size = UDim2.new(1, 0, 0, 70)

    Pattern.Name = "Pattern"
    Pattern.Parent = TopBar
    Pattern.BackgroundColor3 = Color3.fromRGB(15, 10, 30)
    Pattern.BorderSizePixel = 0
    Pattern.Position = UDim2.new(0, 0, 0, 70)
    Pattern.Size = UDim2.new(0, 940, 0, 560)
    Pattern.Image = "rbxassetid://300134974"
    Pattern.ImageColor3 = Color3.fromRGB(20, 13, 39)
    Pattern.ScaleType = Enum.ScaleType.Tile
    Pattern.TileSize = UDim2.new(0, 15, 0, 15)

    Line.Name = "Line"
    Line.Parent = TopBar
    Line.AnchorPoint = Vector2.new(0, 1)
    Line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Line.BorderSizePixel = 0
    Line.Position = UDim2.new(0, 0, 0, 20)
    Line.Size = UDim2.new(1, 0, 0, 2)

    UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(62, 45, 164)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(161, 38, 86))}
    UIGradient.Parent = Line

    Title.Name = "Title"
    Title.Parent = TopBar
    Title.AnchorPoint = Vector2.new(0, 0.5)
    Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Title.BackgroundTransparency = 1.000
    Title.BorderSizePixel = 0
    Title.Position = UDim2.new(0, 12, 0.649999976, 0)
    Title.Size = UDim2.new(0, 150, 0, 40)
    Title.Font = Enum.Font.Ubuntu
    Title.Text = "<b>".. title .."</b>"
    Title.RichText = true
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.TextSize = 30.000
    Title.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
    Title.TextWrapped = true

    TabHolder.Name = "TabHolder"
    TabHolder.Parent = TopBar
    TabHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TabHolder.BackgroundTransparency = 1.000
    TabHolder.Position = UDim2.new(0, 162, 0, 20)
    TabHolder.Size = UDim2.new(1, -162, 1, -20)
    TabHolder.ScrollBarImageTransparency = 1
    TabHolder.ScrollBarThickness = 0
    TabHolder.CanvasSize = UDim2.new(1,0,0,0)
    TabHolder.CanvasPosition = Vector2.new(0,0)
    
    UIListLayout.Parent = TabHolder
    UIListLayout.FillDirection = Enum.FillDirection.Horizontal
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
    UIListLayout.Padding = UDim.new(0, 12)
    
    UIPadding.Parent = TabHolder
    UIPadding.PaddingLeft = UDim.new(0, 12)

    Tab.Name = "Tab"
    Tab.Parent = Main
    Tab.BackgroundColor3 = Color3.fromRGB(26, 20, 54)
    Tab.BackgroundTransparency = 0.4
    Tab.BorderColor3 = Color3.fromRGB(62, 54, 90)
    Tab.BorderSizePixel = 0
    Tab.Position = UDim2.new(0, 12, 0, 82)
    Tab.Size = UDim2.new(1, -24, 1, -94)
    
    TopBar_2.Name = "TopBar"
    TopBar_2.Parent = Tab
    TopBar_2.AnchorPoint = Vector2.new(0, 1)
    TopBar_2.BackgroundColor3 = Color3.fromRGB(32, 25, 67)
    TopBar_2.BorderSizePixel = 0
    TopBar_2.Position = UDim2.new(0, 1, 0, 30)
    TopBar_2.Size = UDim2.new(1, -1, 0, 30)
    
    ContentContainer.Name = "ContentContainer"
    ContentContainer.Parent = Tab
    ContentContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ContentContainer.BackgroundTransparency = 1.000
    ContentContainer.BorderSizePixel = 0
    ContentContainer.Position = UDim2.new(0, 0, 0, 30)
    ContentContainer.Size = UDim2.new(1, 0, 1, -30)

    Outline_6.Name = "Outline"
    Outline_6.Parent = Tab
    Outline_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Outline_6.BackgroundTransparency = 1.000
    Outline_6.Size = UDim2.new(1, 0, 1, 0)
    
    RightLine_6.Name = "RightLine"
    RightLine_6.Parent = Outline_6
    RightLine_6.BackgroundColor3 = Color3.fromRGB(62, 54, 90)
    RightLine_6.BorderSizePixel = 0
    RightLine_6.Position = UDim2.new(1, 0, 0, -1)
    RightLine_6.Size = UDim2.new(0, 1, 1, 1)
    
    BottomLine_6.Name = "BottomLine"
    BottomLine_6.Parent = Outline_6
    BottomLine_6.AnchorPoint = Vector2.new(0, 1)
    BottomLine_6.BackgroundColor3 = Color3.fromRGB(62, 54, 90)
    BottomLine_6.BorderSizePixel = 0
    BottomLine_6.Position = UDim2.new(0, 0, 1, 0)
    BottomLine_6.Size = UDim2.new(1, 0, 0, 1)
    
    TopLine_9.Name = "TopLine"
    TopLine_9.Parent = Outline_6
    TopLine_9.AnchorPoint = Vector2.new(0, 1)
    TopLine_9.BackgroundColor3 = Color3.fromRGB(62, 54, 90)
    TopLine_9.BorderSizePixel = 0
    TopLine_9.Size = UDim2.new(1, 0, 0, 1)
    
    LeftLine_6.Name = "LeftLine"
    LeftLine_6.Parent = Outline_6
    LeftLine_6.BackgroundColor3 = Color3.fromRGB(62, 54, 90)
    LeftLine_6.BorderSizePixel = 0
    LeftLine_6.Size = UDim2.new(0, 1, 1, 0)
    
    TopLine2.Name = "TopLine2"
    TopLine2.Parent = Outline_6
    TopLine2.AnchorPoint = Vector2.new(0, 1)
    TopLine2.BackgroundColor3 = Color3.fromRGB(62, 54, 90)
    TopLine2.BorderSizePixel = 0
    TopLine2.Position = UDim2.new(0, 0, 0, 30)
    TopLine2.Size = UDim2.new(1, 0, 0, 1)

    TabHolder.ChildAdded:Connect(function(child)
        repeat wait() until child.Size ~= nil and child.Size ~= UDim2.new(0,0,0,0)
        TabHolder.CanvasSize = UDim2.new(0,UIListLayout.AbsoluteContentSize.X,0,0)
    end)

    -- Window Dragging
    local userinputservice = game:GetService("UserInputService")
    local dragInput, dragStart, startPos = nil, nil, nil
    local gui = Main

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
        if input == dragInput and WindowDragging and not SliderDragging and not ColorPickerDragging then
            local Delta = input.Position - dragStart
            Main:TweenPosition(UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y), Enum.EasingDirection.In, Enum.EasingStyle.Linear, 0.02, true)
        end
    end)

    function WinTypes:CreateTab(name)
        name = name or "Tab"

        local TabTypes = {}

        local TabButtonA = Instance.new("TextButton")
        local Line_2 = Instance.new("Frame")
        local UnderTab = Instance.new("Frame")
        local UIListLayout_2 = Instance.new("UIListLayout")
        local UIPadding_2 = Instance.new("UIPadding")

        TabButtonA.Name = "TabButton[A]"
        TabButtonA.Parent = TabHolder
        TabButtonA.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TabButtonA.BackgroundTransparency = 1.000
        TabButtonA.BorderSizePixel = 0
        TabButtonA.Size = UDim2.new(0, 40, 0, 20)
        TabButtonA.Font = Enum.Font.Ubuntu
        TabButtonA.Text = name
        TabButtonA.TextColor3 = Color3.fromRGB(104, 98, 138)
        TabButtonA.TextSize = 14.000

        local cooldown = false
        TabButtonA.MouseButton1Click:Connect(function()
            if cooldown == false then
                cooldown = true
                for i,v in next, pagesFolder2:GetChildren() do
                    v.Visible = false
                end 
                UnderTab.Visible = true
                UnderTab.Active = true

                for i,v in next, TabHolder:GetChildren() do
                    if v:IsA("TextButton") then
                        game.TweenService:Create(v, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                            TextColor3 = Color3.fromRGB(104, 98, 138)
                        }):Play()
                    end
                end
                game.TweenService:Create(TabButtonA, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                    TextColor3 = Color3.fromRGB(255, 255, 255)
                }):Play()
                wait(0.25)
                cooldown = false
            end
        end)

        Line_2.Name = "Line"
        Line_2.Parent = TabButtonA
        Line_2.AnchorPoint = Vector2.new(0, 1)
        Line_2.BackgroundColor3 = Color3.fromRGB(119, 20, 76)
        Line_2.BorderSizePixel = 0
        Line_2.BackgroundTransparency = 1
        Line_2.Position = UDim2.new(0, 0, 1, 0)
        Line_2.Size = UDim2.new(1, 0, 0, 1)

        UnderTab.Name = "UnderTab"
        UnderTab.Parent = pagesFolder2
        UnderTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        UnderTab.BackgroundTransparency = 1.000
        UnderTab.BorderSizePixel = 0
        UnderTab.Active = false
        UnderTab.Visible = false
        UnderTab.ClipsDescendants = true
        UnderTab.Size = UDim2.new(1, 0, 1, 0)

        UIListLayout_2.Parent = UnderTab
        UIListLayout_2.FillDirection = Enum.FillDirection.Horizontal
        UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout_2.VerticalAlignment = Enum.VerticalAlignment.Center
        UIListLayout_2.Padding = UDim.new(0, 12)
        
        UIPadding_2.Parent = UnderTab
        UIPadding_2.PaddingLeft = UDim.new(0, 12)

        local textSize = game:GetService("TextService"):GetTextSize(TabButtonA.text, TabButtonA.textSize, TabButtonA.Font, Vector2.new(math.huge, math.huge))
        TabButtonA.Size = UDim2.new(0, textSize.X, 0, 20)

        function TabTypes:CreateUnderTab(name)
            name = name or "UnderTab"

            local GroupTypes = {}

            local TabButtonA_2 = Instance.new("TextButton")
            local Line_3 = Instance.new("Frame")
            local HomeTab = Instance.new("Frame")
            local UIPadding_4 = Instance.new("UIPadding")
            local Left = Instance.new("Frame")
            local UIListLayout_4 = Instance.new("UIListLayout")
            local UIPadding_3 = Instance.new("UIPadding")
            local Right = Instance.new("Frame")
            local UIListLayout_5 = Instance.new("UIListLayout")
            local UIPadding_5 = Instance.new("UIPadding")
            local Middle = Instance.new("Frame")
            local UIListLayout_7 = Instance.new("UIListLayout")
            local UIPadding_6 = Instance.new("UIPadding")

            TabButtonA_2.Name = "TabButton[A]"
            TabButtonA_2.Parent = UnderTab
            TabButtonA_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TabButtonA_2.BackgroundTransparency = 1.000
            TabButtonA_2.BorderSizePixel = 0
            TabButtonA_2.Size = UDim2.new(0, 40, 0, 20)
            TabButtonA_2.Font = Enum.Font.Ubuntu
            TabButtonA_2.Text = name
            TabButtonA_2.RichText = true
            TabButtonA_2.TextColor3 = Color3.fromRGB(104, 98, 138)
            TabButtonA_2.TextSize = 14.000

            local cooldown = false
            TabButtonA_2.MouseButton1Click:Connect(function()
                if cooldown == false then
                    cooldown = true
                    for i,v in next, pagesFolder:GetChildren() do
                        v.Visible = false
                    end 
                    HomeTab.Visible = true
                    HomeTab.Active = true
                
                    for _, folder in pairs(pagesFolder2:GetChildren()) do
                        if folder:IsA("Frame") and folder.Name == "UnderTab" then
                            for i,v in next, folder:GetChildren() do
                                if v:IsA("TextButton") then
                                    if v == TabButtonA_2 then
                                        game.TweenService:Create(v, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                                            TextColor3 = Color3.fromRGB(255, 255, 255)
                                        }):Play()
                                        game.TweenService:Create(v.Line, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                                            BackgroundTransparency = 0
                                        }):Play()
                                    else
                                        game.TweenService:Create(v, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                                            TextColor3 = Color3.fromRGB(104, 98, 138)
                                        }):Play()
                                        game.TweenService:Create(v.Line, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                                            BackgroundTransparency = 1
                                        }):Play()
                                    end
                                end
                            end
                        end
                    end
                    wait(0.25)
                    cooldown = false
                end
            end)

            Line_3.Name = "Line"
            Line_3.Parent = TabButtonA_2
            Line_3.AnchorPoint = Vector2.new(0, 1)
            Line_3.BackgroundColor3 = Color3.fromRGB(119, 20, 76)
            Line_3.BackgroundTransparency = 1
            Line_3.BorderSizePixel = 0
            Line_3.Position = UDim2.new(0, 0, 1, 0)
            Line_3.Size = UDim2.new(1, 0, 0, 1)

            HomeTab.Name = "HomeTab"
            HomeTab.Parent = pagesFolder
            HomeTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            HomeTab.BackgroundTransparency = 1.000
            HomeTab.BorderSizePixel = 0
            HomeTab.Active = false
            HomeTab.Visible = false
            HomeTab.ClipsDescendants = true
            HomeTab.Size = UDim2.new(1, 0, 1, 0)

            UIPadding_4.Parent = HomeTab
            UIPadding_4.PaddingBottom = UDim.new(0, 1)
            UIPadding_4.PaddingLeft = UDim.new(0, 1)
            UIPadding_4.PaddingRight = UDim.new(0, 1)
            UIPadding_4.PaddingTop = UDim.new(0, 1)

            Left.Name = "Left"
            Left.Parent = HomeTab
            Left.BackgroundColor3 = Color3.fromRGB(33, 26, 68)
            Left.BackgroundTransparency = 1.000
            Left.BorderSizePixel = 0
            Left.Size = UDim2.new(0.333000004, 0, 1, 0)

            UIListLayout_4.Parent = Left
            UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout_4.Padding = UDim.new(0, 12)
    
            UIPadding_3.Parent = Left
            UIPadding_3.PaddingBottom = UDim.new(0, 12)
            UIPadding_3.PaddingLeft = UDim.new(0, 12)
            UIPadding_3.PaddingRight = UDim.new(0, 6)
            UIPadding_3.PaddingTop = UDim.new(0, 12)

            Right.Name = "Right"
            Right.Parent = HomeTab
            Right.AnchorPoint = Vector2.new(1, 0)
            Right.BackgroundColor3 = Color3.fromRGB(33, 26, 68)
            Right.BackgroundTransparency = 1.000
            Right.BorderSizePixel = 0
            Right.Position = UDim2.new(1, 0, 0, 0)
            Right.Size = UDim2.new(0.333000004, 0, 1, 0)
            
            UIListLayout_5.Parent = Right
            UIListLayout_5.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout_5.Padding = UDim.new(0, 12)
            
            UIPadding_5.Parent = Right
            UIPadding_5.PaddingBottom = UDim.new(0, 12)
            UIPadding_5.PaddingLeft = UDim.new(0, 6)
            UIPadding_5.PaddingRight = UDim.new(0, 12)
            UIPadding_5.PaddingTop = UDim.new(0, 12)

            Middle.Name = "Middle"
            Middle.Parent = HomeTab
            Middle.BackgroundColor3 = Color3.fromRGB(33, 26, 68)
            Middle.BackgroundTransparency = 1.000
            Middle.BorderSizePixel = 0
            Middle.Position = UDim2.new(0.333333343, 0, 0, 0)
            Middle.Size = UDim2.new(0.333333343, 0, 1, 0)
            
            UIListLayout_7.Parent = Middle
            UIListLayout_7.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout_7.Padding = UDim.new(0, 12)
            
            UIPadding_6.Parent = Middle
            UIPadding_6.PaddingBottom = UDim.new(0, 12)
            UIPadding_6.PaddingLeft = UDim.new(0, 6)
            UIPadding_6.PaddingRight = UDim.new(0, 6)
            UIPadding_6.PaddingTop = UDim.new(0, 12)

            local textSize = game:GetService("TextService"):GetTextSize(TabButtonA_2.text, TabButtonA_2.textSize, TabButtonA_2.Font, Vector2.new(math.huge, math.huge))
            TabButtonA_2.Size = UDim2.new(0, textSize.X, 0, 20)

            function GroupTypes:CreateSection(name, side)
                name = name or "Section"
                side = side or "Left"

                local SectionTypes = {}
        
                local Section = Instance.new("Frame")
                local SectionName = Instance.new("TextLabel")
                local Items = Instance.new("Frame")
                local UIListLayout_3 = Instance.new("UIListLayout")
                local Outline = Instance.new("Frame")
                local RightLine = Instance.new("Frame")
                local BottomLine = Instance.new("Frame")
                local TopLine = Instance.new("Frame")
                local LeftLine = Instance.new("Frame")
                local TopLine_2 = Instance.new("Frame")
        
                Section.Name = "Section"
                Section.Parent = HomeTab[side]
                Section.BackgroundColor3 = Color3.fromRGB(33, 26, 68)
                Section.BorderSizePixel = 0
                Section.Size = UDim2.new(1, 0, 1, 0)
        
                SectionName.Name = "SectionName"
                SectionName.Parent = Section
                SectionName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                SectionName.BackgroundTransparency = 1.000
                SectionName.BorderSizePixel = 0
                SectionName.Position = UDim2.new(0, 15, 0, -7)
                SectionName.Size = UDim2.new(0, 50, 0, 15)
                SectionName.Font = Enum.Font.Ubuntu
                SectionName.Text = name
                SectionName.TextColor3 = Color3.fromRGB(255, 255, 255)
                SectionName.TextSize = 12.000
                SectionName.TextWrapped = true
                SectionName.TextXAlignment = Enum.TextXAlignment.Left
                SectionName.TextYAlignment = Enum.TextYAlignment.Top
        
                Items.Name = "Items"
                Items.Parent = Section
                Items.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Items.BackgroundTransparency = 1.000
                Items.BorderSizePixel = 0
                Items.Position = UDim2.new(0, 0, 0, 12)
                Items.Size = UDim2.new(1, 0, 1, -12)
        
                UIListLayout_3.Parent = Items
                UIListLayout_3.HorizontalAlignment = Enum.HorizontalAlignment.Center
                UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
                UIListLayout_3.Padding = UDim.new(0, 6)
        
                Outline.Name = "Outline"
                Outline.Parent = Section
                Outline.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Outline.BackgroundTransparency = 1.000
                Outline.Size = UDim2.new(1, 0, 1, 0)
        
                RightLine.Name = "RightLine"
                RightLine.Parent = Outline
                RightLine.AnchorPoint = Vector2.new(1, 0)
                RightLine.BackgroundColor3 = Color3.fromRGB(62, 54, 90)
                RightLine.BorderSizePixel = 0
                RightLine.Position = UDim2.new(1, 0, 0, 0)
                RightLine.Size = UDim2.new(0, 1, 1, 0)
        
                BottomLine.Name = "BottomLine"
                BottomLine.Parent = Outline
                BottomLine.BackgroundColor3 = Color3.fromRGB(62, 54, 90)
                BottomLine.BorderSizePixel = 0
                BottomLine.Position = UDim2.new(0, 0, 1, 0)
                BottomLine.Size = UDim2.new(1, 0, 0, 1)
        
                TopLine.Name = "TopLine"
                TopLine.Parent = Outline
                TopLine.AnchorPoint = Vector2.new(0, 1)
                TopLine.BackgroundColor3 = Color3.fromRGB(62, 54, 90)
                TopLine.BorderSizePixel = 0
                TopLine.Size = UDim2.new(0, 10, 0, 1)
        
                LeftLine.Name = "LeftLine"
                LeftLine.Parent = Outline
                LeftLine.AnchorPoint = Vector2.new(1, 0)
                LeftLine.BackgroundColor3 = Color3.fromRGB(62, 54, 90)
                LeftLine.BorderSizePixel = 0
                LeftLine.Position = UDim2.new(0, 0, 0, -1)
                LeftLine.Size = UDim2.new(0, 1, 1, 2)
        
                TopLine_2.Name = "TopLine"
                TopLine_2.Parent = Outline
                TopLine_2.AnchorPoint = Vector2.new(0, 1)
                TopLine_2.BackgroundColor3 = Color3.fromRGB(62, 54, 90)
                TopLine_2.BorderSizePixel = 0
                TopLine_2.Position = UDim2.new(1, -1, 0, 0)
                TopLine_2.Size = UDim2.new(1, -20, 0, 1)

                local textSize = game:GetService("TextService"):GetTextSize(SectionName.text, SectionName.textSize, SectionName.Font, Vector2.new(math.huge, math.huge))
                SectionName.Size = UDim2.new(0, textSize.X, 0, 15)
                TopLine_2.Size = UDim2.new(1, textSize.X - textSize.X - textSize.X + -20, 0, 1)
                TopLine_2.Position = UDim2.new(1, TopLine_2.AbsoluteSize.X - TopLine_2.AbsoluteSize.X - TopLine_2.AbsoluteSize.X + -1, 0, 0)

                function SectionTypes:CreateToggle(name, callback)
                    name = name or "New Toggle"
                    callback = callback or function(v) print(v) end

                    local ToggleTypes = {}
                    local Enabled = false

                    local ToggleOff = Instance.new("Frame")
                    local Title_2 = Instance.new("TextLabel")
                    local ToggleFrame = Instance.new("TextButton")

                    ToggleOff.Name = "Toggle (Off)"
                    ToggleOff.Parent = Items
                    ToggleOff.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    ToggleOff.BackgroundTransparency = 1.000
                    ToggleOff.BorderSizePixel = 0
                    ToggleOff.Size = UDim2.new(1, -24, 0, 20)
                    
                    Title_2.Name = "Title"
                    Title_2.Parent = ToggleOff
                    Title_2.AnchorPoint = Vector2.new(0, 0.5)
                    Title_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    Title_2.BackgroundTransparency = 1.000
                    Title_2.BorderSizePixel = 0
                    Title_2.Position = UDim2.new(0, 25, 0.5, 0)
                    Title_2.Size = UDim2.new(1, -25, 1, 0)
                    Title_2.Font = Enum.Font.Ubuntu
                    Title_2.Text = name
                    Title_2.TextColor3 = Color3.fromRGB(104, 98, 138)
                    Title_2.TextSize = 12.000
                    Title_2.TextXAlignment = Enum.TextXAlignment.Left
                    
                    ToggleFrame.Name = "ToggleFrame"
                    ToggleFrame.Parent = ToggleOff
                    ToggleFrame.Active = false
                    ToggleFrame.AnchorPoint = Vector2.new(0, 0.5)
                    ToggleFrame.BackgroundColor3 = Color3.fromRGB(28, 21, 63)
                    ToggleFrame.BorderColor3 = Color3.fromRGB(62, 54, 90)
                    ToggleFrame.AutoButtonColor = false
                    ToggleFrame.Position = UDim2.new(0, 0, 0.5, 0)
                    ToggleFrame.Selectable = false
                    ToggleFrame.Size = UDim2.new(0, 13, 0, 13)
                    ToggleFrame.Text = ""

                    local ToggleCallback = callback

                    ToggleFrame.MouseButton1Click:Connect(function()
                        Enabled = not Enabled
    
                        if (Enabled) then
                            game.TweenService:Create(Title_2, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
                                TextColor3 = Color3.fromRGB(255, 255, 255)
                            }):Play()
                            game.TweenService:Create(ToggleFrame, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
                                BackgroundColor3 = Color3.fromRGB(194, 7, 84)
                            }):Play()
                        else
                            game.TweenService:Create(Title_2, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
                                TextColor3 = Color3.fromRGB(104, 98, 138)
                            }):Play()
                            game.TweenService:Create(ToggleFrame, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
                                BackgroundColor3 = Color3.fromRGB(28, 21, 63)
                            }):Play()
                        end
    
                        callback(Enabled)
                    end)

                    function ToggleTypes:SetState(state)
                        state = state or false
                        Enabled = state
    
                        if (Enabled) then
                            ToggleFrame.BackgroundColor3 = color
                        else
                            ToggleFrame.BackgroundColor3 = Color3.fromRGB(194, 7, 84)
                        end
    
                        callback(Enabled)
                    end
    
                    function ToggleTypes:GetState()
                        return Enabled
                    end

                    function ToggleTypes:CreateKeyBind(def, callback)
                        def = def or "NONE"

                        local keytypes = {}

                        local Keybind = Instance.new("TextButton")

                        Keybind.Name = "Keybind"
                        Keybind.Parent = ToggleOff
                        Keybind.AnchorPoint = Vector2.new(1, 0.5)
                        Keybind.BackgroundColor3 = Color3.fromRGB(28, 21, 63)
                        Keybind.BorderColor3 = Color3.fromRGB(62, 54, 90)
                        Keybind.Position = UDim2.new(1, 0, 0.5, 0)
                        Keybind.Size = UDim2.new(0, 33, 0, 13)
                        Keybind.Font = Enum.Font.Ubuntu
                        Keybind.AutoButtonColor = false
                        Keybind.Text = def
                        Keybind.TextColor3 = Color3.fromRGB(255, 255, 255)
                        Keybind.TextSize = 10.000

                        local WaitingForBind = false
                        local Clicked = false
                        local Sel = def
                        local Blacklisted = { "W", "A", "S", "D", "Slash", "Tab", "Backspace", "Escape", "Space", "Delete", "Unknown" }

                        Keybind.MouseButton1Click:Connect(function()
                            Clicked = true
                            Keybind.Text = "..."
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
                                    Keybind.Text = "" .. Key .. ""
                                else
                                    Keybind.Text = "NONE"
                                end
    
                                Sel = Key
                                WaitingForBind = false
                            else
                                if (Input.UserInputType == Enum.UserInputType.Keyboard) then
                                    local Key = tostring(Input.KeyCode):gsub("Enum.KeyCode.", "")
    
                                    if (Key == Sel) then
                                        Enabled = not Enabled
    
                                        if (Enabled) then
                                            game.TweenService:Create(Title_2, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
                                                TextColor3 = Color3.fromRGB(255, 255, 255)
                                            }):Play()
                                            game.TweenService:Create(ToggleFrame, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
                                                BackgroundColor3 = Color3.fromRGB(194, 7, 84)
                                            }):Play()
                                        else
                                            game.TweenService:Create(Title_2, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
                                                TextColor3 = Color3.fromRGB(104, 98, 138)
                                            }):Play()
                                            game.TweenService:Create(ToggleFrame, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
                                                BackgroundColor3 = Color3.fromRGB(28, 21, 63)
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

                function SectionTypes:CreateButton(name, callback)
                    name = name or "New Button"
                    callback = callback or function() print("clicked") end

                    local Button = Instance.new("Frame")
                    local ButtonFrame = Instance.new("TextButton")
                    local Title_4 = Instance.new("TextLabel")
                    local Outline_3 = Instance.new("Frame")
                    local RightLine_3 = Instance.new("Frame")
                    local BottomLine_3 = Instance.new("Frame")
                    local TopLine_5 = Instance.new("Frame")
                    local LeftLine_3 = Instance.new("Frame")
                    local Title_5 = Instance.new("TextLabel")

                    Button.Name = "Button"
                    Button.Parent = Items
                    Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    Button.BackgroundTransparency = 1.000
                    Button.BorderSizePixel = 0
                    Button.Size = UDim2.new(1, -24, 0, 30)

                    ButtonFrame.Name = "ButtonFrame"
                    ButtonFrame.Parent = Button
                    ButtonFrame.Active = false
                    ButtonFrame.AnchorPoint = Vector2.new(0, 0.5)
                    ButtonFrame.BackgroundColor3 = Color3.fromRGB(194, 7, 84)
                    ButtonFrame.BorderColor3 = Color3.fromRGB(62, 54, 90)
                    ButtonFrame.BorderSizePixel = 0
                    ButtonFrame.Position = UDim2.new(0, 0, 1, -6)
                    ButtonFrame.Selectable = false
                    ButtonFrame.Size = UDim2.new(0.5, 0, 0, 15)
                    ButtonFrame.Text = ""

                    Title_4.Name = "Title"
                    Title_4.Parent = ButtonFrame
                    Title_4.AnchorPoint = Vector2.new(0, 0.5)
                    Title_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    Title_4.BackgroundTransparency = 1.000
                    Title_4.BorderSizePixel = 0
                    Title_4.Position = UDim2.new(0, 0, 0.5, 0)
                    Title_4.Size = UDim2.new(1, 0, 1, 0)
                    Title_4.Font = Enum.Font.Ubuntu
                    Title_4.Text = "Press"
                    Title_4.TextColor3 = Color3.fromRGB(255, 255, 255)
                    Title_4.TextSize = 10.000

                    Outline_3.Name = "Outline"
                    Outline_3.Parent = ButtonFrame
                    Outline_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    Outline_3.BackgroundTransparency = 1.000
                    Outline_3.BorderSizePixel = 0
                    Outline_3.Size = UDim2.new(1, 0, 1, 0)

                    RightLine_3.Name = "RightLine"
                    RightLine_3.Parent = Outline_3
                    RightLine_3.BackgroundColor3 = Color3.fromRGB(62, 54, 90)
                    RightLine_3.BorderSizePixel = 0
                    RightLine_3.Position = UDim2.new(1, 0, 0, -1)
                    RightLine_3.Size = UDim2.new(0, 1, 1, 2)

                    BottomLine_3.Name = "BottomLine"
                    BottomLine_3.Parent = Outline_3
                    BottomLine_3.BackgroundColor3 = Color3.fromRGB(62, 54, 90)
                    BottomLine_3.BorderSizePixel = 0
                    BottomLine_3.Position = UDim2.new(0, 0, 1, 0)
                    BottomLine_3.Size = UDim2.new(1, 0, 0, 1)

                    TopLine_5.Name = "TopLine"
                    TopLine_5.Parent = Outline_3
                    TopLine_5.AnchorPoint = Vector2.new(0, 1)
                    TopLine_5.BackgroundColor3 = Color3.fromRGB(62, 54, 90)
                    TopLine_5.BorderSizePixel = 0
                    TopLine_5.Size = UDim2.new(1, 0, 0, 1)

                    LeftLine_3.Name = "LeftLine"
                    LeftLine_3.Parent = Outline_3
                    LeftLine_3.AnchorPoint = Vector2.new(1, 0)
                    LeftLine_3.BackgroundColor3 = Color3.fromRGB(62, 54, 90)
                    LeftLine_3.BorderSizePixel = 0
                    LeftLine_3.Position = UDim2.new(0, 0, 0, -1)
                    LeftLine_3.Size = UDim2.new(0, 1, 1, 2)

                    Title_5.Name = "Title"
                    Title_5.Parent = Button
                    Title_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    Title_5.BackgroundTransparency = 1.000
                    Title_5.BorderSizePixel = 0
                    Title_5.Size = UDim2.new(1, -165, 0, 15)
                    Title_5.Font = Enum.Font.Ubuntu
                    Title_5.Text = name
                    Title_5.TextColor3 = Color3.fromRGB(255, 255, 255)
                    Title_5.TextSize = 12.000
                    Title_5.TextXAlignment = Enum.TextXAlignment.Left

                    ButtonFrame.MouseButton1Click:Connect(function()
                        callback()
                    end)
                end

                function SectionTypes:CreateDivider(name)
                    name = name or "New Divider"

                    local Divider = Instance.new("Frame")
                    local Title_7 = Instance.new("TextLabel")
                    local Line_7 = Instance.new("Frame")
                    local Line_8 = Instance.new("Frame")

                    Divider.Name = "Divider"
                    Divider.Parent = Items
                    Divider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    Divider.BackgroundTransparency = 1.000
                    Divider.BorderSizePixel = 0
                    Divider.Size = UDim2.new(1, -24, 0, 20)
                    
                    Title_7.Name = "Title"
                    Title_7.Parent = Divider
                    Title_7.AnchorPoint = Vector2.new(0.5, 0.5)
                    Title_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    Title_7.BackgroundTransparency = 1.000
                    Title_7.BorderSizePixel = 0
                    Title_7.Position = UDim2.new(0.5, 0, 0.5, 0)
                    Title_7.Size = UDim2.new(0, 50, 1, 0)
                    Title_7.Font = Enum.Font.Ubuntu
                    Title_7.Text = name
                    Title_7.TextColor3 = Color3.fromRGB(255, 255, 255)
                    Title_7.TextSize = 12.000
                    
                    Line_7.Name = "Line"
                    Line_7.Parent = Divider
                    Line_7.AnchorPoint = Vector2.new(0, 0.5)
                    Line_7.BackgroundColor3 = Color3.fromRGB(194, 7, 84)
                    Line_7.BorderColor3 = Color3.fromRGB(62, 54, 90)
                    Line_7.Position = UDim2.new(0, 0, 0.5, 0)
                    Line_7.Size = UDim2.new(1, -250, 0, 1)
                    
                    Line_8.Name = "Line"
                    Line_8.Parent = Divider
                    Line_8.AnchorPoint = Vector2.new(0, 0.5)
                    Line_8.BackgroundColor3 = Color3.fromRGB(194, 7, 84)
                    Line_8.BorderColor3 = Color3.fromRGB(62, 54, 90)
                    Line_8.Position = UDim2.new(0, 250, 0.5, 0)
                    Line_8.Size = UDim2.new(1, -250, 0, 1)
                end

                function SectionTypes:CreateSlider(name, min, max, def, callback)
                    name = name or "New Slider"
                    min = min or 0
                    max = max or 100
                    def = def or 50
                    callback = callback or function(s) print(s) end

                    local SliderTypes = {}
                    local Dragging = false
                    local Value = 0

                    local Slider = Instance.new("Frame")
                    local SliderBack = Instance.new("Frame")
                    local Value = Instance.new("TextLabel")
                    local Dragable = Instance.new("Frame")
                    local Outline_4 = Instance.new("Frame")
                    local RightLine_4 = Instance.new("Frame")
                    local BottomLine_4 = Instance.new("Frame")
                    local TopLine_6 = Instance.new("Frame")
                    local LeftLine_4 = Instance.new("Frame")
                    local Title_6 = Instance.new("TextLabel")

                    Slider.Name = "Slider"
                    Slider.Parent = Items
                    Slider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    Slider.BackgroundTransparency = 1.000
                    Slider.BorderSizePixel = 0
                    Slider.Size = UDim2.new(1, -24, 0, 30)
                    
                    SliderBack.Name = "SliderBack"
                    SliderBack.Parent = Slider
                    SliderBack.AnchorPoint = Vector2.new(0, 0.5)
                    SliderBack.BackgroundColor3 = Color3.fromRGB(28, 21, 63)
                    SliderBack.BorderColor3 = Color3.fromRGB(27, 42, 53)
                    SliderBack.BorderSizePixel = 0
                    SliderBack.Position = UDim2.new(0, 0, 1, -6)
                    SliderBack.Size = UDim2.new(0.5, 0, 0, 15)
                    
                    Value.Name = "Value"
                    Value.Parent = SliderBack
                    Value.AnchorPoint = Vector2.new(0, 0.5)
                    Value.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    Value.BackgroundTransparency = 1.000
                    Value.BorderSizePixel = 0
                    Value.Position = UDim2.new(0, 0, 0.5, 0)
                    Value.Size = UDim2.new(1, 0, 1, 0)
                    Value.ZIndex = 2
                    Value.Font = Enum.Font.Ubuntu
                    Value.Text = ""
                    Value.TextColor3 = Color3.fromRGB(255, 255, 255)
                    Value.TextSize = 10.000
                    
                    Dragable.Name = "Dragable"
                    Dragable.Parent = SliderBack
                    Dragable.BackgroundColor3 = Color3.fromRGB(194, 7, 84)
                    Dragable.BorderSizePixel = 0
                    Dragable.Size = UDim2.new(0.5, 0, 1, 0)
                    
                    Outline_4.Name = "Outline"
                    Outline_4.Parent = SliderBack
                    Outline_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    Outline_4.BackgroundTransparency = 1.000
                    Outline_4.BorderSizePixel = 0
                    Outline_4.Size = UDim2.new(1, 0, 1, 0)
                    
                    RightLine_4.Name = "RightLine"
                    RightLine_4.Parent = Outline_4
                    RightLine_4.BackgroundColor3 = Color3.fromRGB(62, 54, 90)
                    RightLine_4.BorderSizePixel = 0
                    RightLine_4.Position = UDim2.new(1, 0, 0, -1)
                    RightLine_4.Size = UDim2.new(0, 1, 1, 1)
                    
                    BottomLine_4.Name = "BottomLine"
                    BottomLine_4.Parent = Outline_4
                    BottomLine_4.AnchorPoint = Vector2.new(0, 1)
                    BottomLine_4.BackgroundColor3 = Color3.fromRGB(62, 54, 90)
                    BottomLine_4.BorderSizePixel = 0
                    BottomLine_4.Position = UDim2.new(0, 0, 1, 0)
                    BottomLine_4.Size = UDim2.new(1, 0, 0, 1)
                    
                    TopLine_6.Name = "TopLine"
                    TopLine_6.Parent = Outline_4
                    TopLine_6.AnchorPoint = Vector2.new(0, 1)
                    TopLine_6.BackgroundColor3 = Color3.fromRGB(62, 54, 90)
                    TopLine_6.BorderSizePixel = 0
                    TopLine_6.Size = UDim2.new(1, 0, 0, 1)
                    
                    LeftLine_4.Name = "LeftLine"
                    LeftLine_4.Parent = Outline_4
                    LeftLine_4.AnchorPoint = Vector2.new(1, 0)
                    LeftLine_4.BackgroundColor3 = Color3.fromRGB(62, 54, 90)
                    LeftLine_4.BorderSizePixel = 0
                    LeftLine_4.Position = UDim2.new(0, 0, 0, -1)
                    LeftLine_4.Size = UDim2.new(0, 1, 1, 1)
                    
                    Title_6.Name = "Title"
                    Title_6.Parent = Slider
                    Title_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    Title_6.BackgroundTransparency = 1.000
                    Title_6.BorderSizePixel = 0
                    Title_6.Size = UDim2.new(1, -165, 0, 15)
                    Title_6.Font = Enum.Font.Ubuntu
                    Title_6.Text = name
                    Title_6.TextColor3 = Color3.fromRGB(255, 255, 255)
                    Title_6.TextSize = 12.000
                    Title_6.TextXAlignment = Enum.TextXAlignment.Left

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

                return SectionTypes
            end

            return GroupTypes
        end

        return TabTypes
    end

    return WinTypes
end

return Library
