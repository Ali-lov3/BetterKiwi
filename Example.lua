local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Ali-lov3/BetterKiwi/refs/heads/main/Source.lua"))() or getgenv().Library

local Window = Library:Window({
    Name = "Example",
    Version = "Example",
    Logo = "77434646025119",
    Size = UDim2.new(0, 650, 0, 500),
    FadeSpeed = 0.2,
    ConfigFolder = "ExampleConfigs"
})

Library:Watermark("Example", "77434646025119")
Library:KeybindsList()

local ExamplePage = Window:Page({
    Name = "Example",
    Icon = "home",
    Columns = 2,
    SubPages = false
})

local ExampleLeftSection = ExamplePage:Section({
    Name = "Example Left",
    Icon = "sliders-horizontal",
    Side = 1
})

local ExampleToggle = ExampleLeftSection:Toggle({
    Name = "Example Toggle",
    Default = false,
    Flag = "ExampleToggle",
    Callback = function(Value)
        print("Example Toggle", Value)
    end
})

ExampleToggle:Colorpicker({
    Name = "Example Toggle Colorpicker",
    Default = Color3.fromRGB(196, 231, 255),
    Flag = "ExampleToggleColorpicker",
    Alpha = 0,
    Callback = function(Color, Alpha)
        print("Example Toggle Colorpicker", Color, Alpha)
    end
})

ExampleLeftSection:Slider({
    Name = "Example Slider",
    Min = 0,
    Max = 100,
    Default = 50,
    Decimals = 1,
    Flag = "ExampleSlider",
    Suffix = "%",
    Callback = function(Value)
        print("Example Slider", Value)
    end
})

ExampleLeftSection:Textbox({
    Name = "Example Textbox",
    Default = "",
    Placeholder = "Example Placeholder",
    Flag = "ExampleTextbox",
    Callback = function(Value)
        print("Example Textbox", Value)
    end
})

local ExampleRightSection = ExamplePage:Section({
    Name = "Example Right",
    Icon = "list",
    Side = 2
})

ExampleRightSection:Dropdown({
    Name = "Example Dropdown",
    Items = {"Example 1", "Example 2", "Example 3"},
    Default = "Example 1",
    MaxSize = 125,
    Flag = "ExampleDropdown",
    Multi = false,
    Callback = function(Value)
        print("Example Dropdown", Value)
    end
})

ExampleRightSection:Dropdown({
    Name = "Example Multi Dropdown",
    Items = {"Example 1", "Example 2", "Example 3"},
    Default = {"Example 1"},
    MaxSize = 125,
    Flag = "ExampleMultiDropdown",
    Multi = true,
    Callback = function(Value)
        print("Example Multi Dropdown", Value)
    end
})

ExampleRightSection:Button({
    Name = "Example Button",
    Callback = function()
        Library:Notification({
            Name = "Example",
            Description = "Example Notification",
            Duration = 5,
            Icon = "bell",
            IconColor = Color3.fromRGB(52, 255, 164)
        })
    end
})

local ExampleLabel = ExampleRightSection:Label("Example Label", "Left")

ExampleLabel:Colorpicker({
    Name = "Example Label Colorpicker",
    Default = Color3.fromRGB(255, 255, 255),
    Flag = "ExampleLabelColorpicker",
    Alpha = 0,
    Callback = function(Color, Alpha)
        print("Example Label Colorpicker", Color, Alpha)
    end
})

local ExampleSubPagesPage = Window:Page({
    Name = "Example SubPages",
    Icon = "layers",
    Columns = 2,
    SubPages = true
})

local ExampleSubPageOne = ExampleSubPagesPage:SubPage({
    Name = "Example SubPage 1",
    Icon = "toggle-left",
    Columns = 2
})

local ExampleSubPageOneSection = ExampleSubPageOne:Section({
    Name = "Example SubPage 1 Section",
    Icon = "settings",
    Side = 1
})

ExampleSubPageOneSection:Toggle({
    Name = "Example SubPage 1 Toggle",
    Default = false,
    Flag = "ExampleSubPageOneToggle",
    Callback = function(Value)
        print("Example SubPage 1 Toggle", Value)
    end
})

ExampleSubPageOneSection:Slider({
    Name = "Example SubPage 1 Slider",
    Min = 0,
    Max = 10,
    Default = 5,
    Decimals = 1,
    Flag = "ExampleSubPageOneSlider",
    Suffix = "",
    Callback = function(Value)
        print("Example SubPage 1 Slider", Value)
    end
})

local ExampleSubPageTwo = ExampleSubPagesPage:SubPage({
    Name = "Example SubPage 2",
    Icon = "chevrons-down",
    Columns = 2
})

local ExampleSubPageTwoSection = ExampleSubPageTwo:Section({
    Name = "Example SubPage 2 Section",
    Icon = "mouse-pointer-click",
    Side = 2
})

ExampleSubPageTwoSection:Dropdown({
    Name = "Example SubPage 2 Dropdown",
    Items = {"Example 1", "Example 2"},
    Default = "Example 1",
    MaxSize = 125,
    Flag = "ExampleSubPageTwoDropdown",
    Multi = false,
    Callback = function(Value)
        print("Example SubPage 2 Dropdown", Value)
    end
})

ExampleSubPageTwoSection:Button({
    Name = "Example SubPage 2 Button",
    Callback = function()
        print("Example SubPage 2 Button")
    end
})

Window:SettingManager({
    Name = "Settings",
    Icon = "settings",
    MenuKeybind = Enum.KeyCode.Z
})

Library:Init()
