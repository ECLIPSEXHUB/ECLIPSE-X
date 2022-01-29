if isfolder("ZEPHYRXLOGS") == false then
    makefolder("ZEPHYRXLOGS")
end
if isfolder("Needs") == false then
    makefolder("Needs")
end

local LIB = {}

function LIB:CreateLib(libname)
    local current_time = tick()
local curytime = ""
local day = os.date("%x")
local times = os.date("%X")
local doy = string.gsub(day, "/", ",")
local toim = string.gsub(times, ":", ",")
local intro = [[

























{~><~~><~~><~~><~~><~~><~~><~~><~}
{~><~~><~~><~~><~~><~~><~~><~~><~}

WELCOME TO TELEPORT SAVER
 ______ _____ ______  _   _ __   ________     __   __
|___  /|  ___|| ___ \| | | |\ \ / /| ___ \    \ \ / /
   / / | |__  | |_/ /| |_| | \ V / | |_/ /     \ V / 
  / /  |  __| |  __/ |  _  |  \ /  |    /      /   \ 
./ /___| |___ | |    | | | |  | |  | |\ \     / /^\ \
\_____/\____/ \_|    \_| |_/  \_/  \_| \_|    \/   \/

 ____   ____ _________ _______     _______ _____   ____   ____  _____         __             _____   
|_  _| |_  _|_   ___  |_   __ \   /  ___  |_   _|.'    \.|_   \|_   _|       /  |           / ___ \. 
  \ \   / /   | |_  \_| | |__) | |  (__ \_| | | /  .--.  \ |   \ | |         \| |          |_/___) | 
   \ \ / /    |  _|  _  |  __ /   '.___\-.  | | | |    | | | |\ \| |          | |           .'____.' 
    \ ' /    _| |___/ |_| |  \ \_|\\____) |_| |_\  \--'  /_| |_\   |_        _| |_   _     / /____   
     \_/    |_________|____| |___|_______.'_____|\.____.'|_____|\____|      |_____| (_)    |_______| 

                                                
LOADING TAKES AN ESTIMATED 5 SECONDS

DEV: SYL
CO DEV: HIELKE


{~><~~><~~><~~><~~><~~><~~><~~><~}
{~><~~><~~><~~><~~><~~><~~><~~><~}






]]

warn(intro)
writefile("ZEPHYRXLOGS/"..toim.."[]"..doy..".txt", intro)
print("_-_-_checking if MainFolder Exists_-_-_")
appendfile("ZEPHYRXLOGS/"..toim.."[]"..doy..".txt", [[       
_-_-_checking if MainFolder Exists_-_-
]])
wait(1)
if isfolder("Needs") == true then
    print("Main Folder Exists")
    appendfile("ZEPHYRXLOGS/"..toim.."[]"..doy..".txt", [[      
Main Folder Exists
]])
    fileslist = listfiles("Needs")
else
    print("Main Folder Doesn't exists ADDING")
    print(isfolder("Needs"))
    appendfile("ZEPHYRXLOGS/"..toim.."[]"..doy..".txt", [[ 
Main Folder Doesn't exists ADDING

]])
    appendfile("ZEPHYRXLOGS/"..toim.."[]"..doy..".txt", isfolder("Needs"))
    fileslist = listfiles("Needs")
    makefolder("Needs")
end
print("_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_")
appendfile("ZEPHYRXLOGS/"..toim.."[]"..doy..".txt", [[ 
_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_
]])
print("_-_-_checking if GameFolder Exists_-_-_")
appendfile("ZEPHYRXLOGS/"..toim.."[]"..doy..".txt", [[ 
_-_-_checking if GameFolder Exists_-_-_
]])
wait(1)
local cointer = 0
for i, v in pairs(fileslist) do
    wait(0.5)
if v:find(game.PlaceId) then
    print("~~~~~~~~~~~~~~~~~~")
    print("Game Folder Exists")
    cointer = cointer + 1
    print("Attempt:"..cointer)
    print("~~~~~~~~~~~~~~~~~~")
    appendfile("ZEPHYRXLOGS/"..toim.."[]"..doy..".txt", [[ 
~~~~~~~~~~~~~~~~~~
Game Folder Exists
Attempt:]]..cointer..[[ 
~~~~~~~~~~~~~~~~~~
]]
)
else
    cointer = cointer + 1
    print("not found, Attempt:"..cointer)
    appendfile("ZEPHYRXLOGS/"..toim.."[]"..doy..".txt", [[ 
not found, Attempt:]]..cointer)
    makefolder("Needs/" .. game.PlaceId)
end
end
print("_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_")
appendfile("ZEPHYRXLOGS/"..toim.."[]"..doy..".txt", [[ 
_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-
]])
    local SylshubLoader = Instance.new("ScreenGui")
    local Main = Instance.new("Frame")
    local UnderTop = Instance.new("ImageLabel")
    local UICorner = Instance.new("UICorner")
    local PFP = Instance.new("ImageLabel")
    local UICorner_2 = Instance.new("UICorner")
    local Playername = Instance.new("TextLabel")
    local ct_uicorner = Instance.new("UICorner")
    local Playername_2 = Instance.new("TextLabel")
    local ct_uicorner_2 = Instance.new("UICorner")
    local close = Instance.new("ImageButton")
    local Mini = Instance.new("ImageButton")
    local UICorner_3 = Instance.new("UICorner")
    local CONTAINORS = Instance.new("Frame")
    local UICorner_4 = Instance.new("UICorner")
    local Txteditor = Instance.new("Frame")
    local UICorner_5 = Instance.new("UICorner")
    local Lines = Instance.new("TextLabel")
    local Comments_ = Instance.new("TextLabel")
    local Globals_ = Instance.new("TextLabel")
    local Keywords_ = Instance.new("TextLabel")
    local RemoteHighlight_ = Instance.new("TextLabel")
    local Strings_ = Instance.new("TextLabel")
    local Tokens_ = Instance.new("TextLabel")
    local Numbers_ = Instance.new("TextLabel")
    local Execute = Instance.new("TextButton")
    local executeui = Instance.new("UICorner")
    local Clear = Instance.new("TextButton")
    local UICorner_6 = Instance.new("UICorner")
    local ScrollingFrame = Instance.new("ScrollingFrame")
    local Source = Instance.new("TextBox")
    local settings = Instance.new("Frame")
    local settings_uicorner = Instance.new("UICorner")
    local SettingTabs = Instance.new("Frame")
    local settings_uicorner_2 = Instance.new("UICorner")
    local tabuiconfigs = Instance.new("TextButton")
    local UICONF = Instance.new("UICorner")
    local UiColors = Instance.new("TextButton")
    local colouring = Instance.new("UICorner")
    local UIListLayout = Instance.new("UIListLayout")
    local Creds = Instance.new("TextButton")
    local CRUDS = Instance.new("UICorner")
    local setcontains = Instance.new("Folder")
    local UIconfigs = Instance.new("Frame")
    local KeyBind = Instance.new("TextButton")
    local UICorner_7 = Instance.new("UICorner")
    local ImageLabel = Instance.new("ImageLabel")
    local Name = Instance.new("TextLabel")
    local Keybindtxt = Instance.new("TextLabel")
    local UICorner_8 = Instance.new("UICorner")
    local UIListLayout_2 = Instance.new("UIListLayout")
    local UICorner_9 = Instance.new("UICorner")
    local UIColouring = Instance.new("Frame")
    local UICorner_10 = Instance.new("UICorner")
    local Credits = Instance.new("Frame")
    local UICorner_13 = Instance.new("UICorner")
    local SYLname = Instance.new("TextLabel")
    local syl = Instance.new("UICorner")
    local Container = Instance.new("Frame")
    local ct_uicorner_3 = Instance.new("UICorner")
    local Containers = Instance.new("Folder")
    local TabsContainer = Instance.new("ScrollingFrame")
    local UIListLayout_4 = Instance.new("UIListLayout")
    local LocationSave = Instance.new("Frame")
local Loco_uicorner = Instance.new("UICorner")
local Locations = Instance.new("ScrollingFrame")
local Loco_uicorner_2 = Instance.new("UICorner")
local UIListLayout_5 = Instance.new("UIListLayout")
local Lococont = Instance.new("Folder")
local Infoloc = Instance.new("Frame")
local UICorner_12 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local Cfra = Instance.new("Frame")
local UICorner_13 = Instance.new("UICorner")
local TextLabel_2 = Instance.new("TextLabel")
local Loco = Instance.new("Frame")
local UICorner_14 = Instance.new("UICorner")
local TextLabel_3 = Instance.new("TextLabel")
local TextLabel_4 = Instance.new("TextLabel")
local REfresh = Instance.new("TextButton")
local Loco_uicorner_4 = Instance.new("UICorner")
local TextBox = Instance.new("TextBox")
local Loco_uicorner_5 = Instance.new("UICorner")
local Savw = Instance.new("TextButton")
local Loco_uicorner_6 = Instance.new("UICorner")
local Del = Instance.new("TextButton")
local Loco_uicorner_7 = Instance.new("UICorner")
    local icons = Instance.new("Frame")
    local TpTAb = Instance.new("ImageButton")
    local UICorner_14 = Instance.new("UICorner")
    local Execution = Instance.new("ImageButton")
    local Hub = Instance.new("ImageButton")
    local Settings = Instance.new("ImageButton")
    local containvis = true
    local minimum = false
    local wastrue = true
    local sttingsvis = false
    local curkey = Enum.KeyCode.RightShift
local tps = {
    
}
local names = {
    
}

local counter = 0
local counter2 = 0
local fileslist = ""
curytime = toim.."[]"..doy
writefile("ZEPHYRXLOGS/"..toim.."[]"..doy..".txt", intro)
    -- Properties:

    SylshubLoader.Name = "SylshubLoader"
    SylshubLoader.Parent = game.CoreGui
    SylshubLoader.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    Main.Name = "Main"
    Main.Parent = SylshubLoader
    Main.AnchorPoint = Vector2.new(0.5, 0)
    Main.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    Main.Position = UDim2.new(0.499653041, 0, 0.260223031, 0)
    Main.Size = UDim2.new(0, 588, 0, 386)
    Main.Active = true
    Main.Draggable = true

    UnderTop.Name = "UnderTop"
    UnderTop.Parent = Main
    UnderTop.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UnderTop.BackgroundTransparency = 1.000
    UnderTop.Size = UDim2.new(0, 587, 0, 109)
    UnderTop.Image = "http://www.roblox.com/asset/?id=7223297061"

    UICorner.CornerRadius = UDim.new(0, 4)
    UICorner.Parent = UnderTop

    PFP.Name = "PFP"
    PFP.Parent = UnderTop
    PFP.BackgroundColor3 = Color3.fromRGB(0, 24, 43)
    PFP.Position = UDim2.new(0.0164787471, 0, 0.0837594718, 0)
    PFP.Size = UDim2.new(0, 78, 0, 75)
    PFP.Image = "http://www.roblox.com/asset/?id=927692546"
    local Players = game:GetService("Players")

    local player = Players.LocalPlayer

    local userId = player.UserId
    local thumbType = Enum.ThumbnailType.HeadShot
    local thumbSize = Enum.ThumbnailSize.Size420x420
    local content, isReady = Players:GetUserThumbnailAsync(userId, thumbType,
                                                           thumbSize)

    -- Set the ImageLabel's content to the user thumbnail
    local imageLabel = PFP
    PFP.Image = content

    UICorner_2.CornerRadius = UDim.new(1, 0)
    UICorner_2.Parent = PFP

    Playername.Name = "Playername"
    Playername.Parent = UnderTop
    Playername.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
    Playername.BackgroundTransparency = 1.000
    Playername.Position = UDim2.new(0.166641712, 0, 0.417721659, 0)
    Playername.Size = UDim2.new(0, 266, 0, 22)
    Playername.Font = Enum.Font.Gotham
    Playername.Text = "DORA"
    Playername.TextColor3 = Color3.fromRGB(255, 255, 255)
    Playername.TextScaled = true
    Playername.TextSize = 22.000
    Playername.TextWrapped = true
    Playername.TextXAlignment = Enum.TextXAlignment.Left
    local player = game.Players.LocalPlayer.Name
    Playername.Text = player

    ct_uicorner.CornerRadius = UDim.new(0, 4)
    ct_uicorner.Name = "ct_uicorner"
    ct_uicorner.Parent = Playername

    Playername_2.Name = "Playername"
    Playername_2.Parent = UnderTop
    Playername_2.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
    Playername_2.BackgroundTransparency = 1.000
    Playername_2.Position = UDim2.new(0.147934228, 0, 0.217721656, 0)
    Playername_2.Size = UDim2.new(0, 89, 0, 22)
    Playername_2.Font = Enum.Font.GothamBold
    Playername_2.Text = "WELCOME TO"..libname
    Playername_2.TextColor3 = Color3.fromRGB(255, 255, 255)
    Playername_2.TextSize = 13.000
    Playername_2.TextWrapped = true

    ct_uicorner_2.CornerRadius = UDim.new(0, 4)
    ct_uicorner_2.Name = "ct_uicorner"
    ct_uicorner_2.Parent = Playername_2

    close.Name = "close"
    close.Parent = UnderTop
    close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    close.BackgroundTransparency = 1.000
    close.Position = UDim2.new(0.952000022, 0, 0.00899999961, 0)
    close.Size = UDim2.new(0.0460000001, 1, 0.266000003, 1)
    close.Image = "rbxassetid://7072725342"
    close.MouseButton1Click:connect(function() 
        SylshubLoader:Destroy() 
    end)

    Mini.Name = "close"
    Mini.Parent = UnderTop
    Mini.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Mini.BackgroundTransparency = 1.000
    Mini.Position = UDim2.new(0.902596295, 0, 0.00899999961, 0)
    Mini.Size = UDim2.new(0.0460000001, 1, 0.266000003, 1)
    Mini.Image = "rbxassetid://7072719338"
    Mini.MouseButton1Click:connect(function() 
        SylshubLoader:Destroy() 
    end)

    UICorner_3.CornerRadius = UDim.new(0, 4)
    UICorner_3.Parent = Main

    CONTAINORS.Name = "CONTAINORS"
    CONTAINORS.Parent = Main
    CONTAINORS.AnchorPoint = Vector2.new(0.5, 0)
    CONTAINORS.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    CONTAINORS.Position = UDim2.new(0.537107825, 0, 0.282383412, 0)
    CONTAINORS.Size = UDim2.new(0, 525, 0, 277)

    UICorner_4.CornerRadius = UDim.new(0, 4)
    UICorner_4.Parent = CONTAINORS

    Txteditor.Name = "Txteditor"
    Txteditor.Parent = CONTAINORS
    Txteditor.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    Txteditor.Size = UDim2.new(0, 535, 0, 277)
    Txteditor.Visible = false

    UICorner_5.CornerRadius = UDim.new(0, 4)
    UICorner_5.Parent = Txteditor

    Lines.Name = "Lines"
    Lines.Parent = ScrollingFrame
    Lines.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Lines.BackgroundTransparency = 1.000
    Lines.Position = UDim2.new(1, 0, 0.0487106033, 0)
    Lines.Size = UDim2.new(0.00822673179, 30, 0.822349548, 0)
    Lines.ZIndex = 4
    Lines.Font = Enum.Font.Code
    Lines.Text = "1"
    Lines.TextColor3 = Color3.fromRGB(255, 255, 255)
    Lines.TextSize = 15.000
    Lines.TextYAlignment = Enum.TextYAlignment.Top

    Execute.Name = "Execute"
    Execute.Parent = Txteditor
    Execute.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    Execute.Position = UDim2.new(0.876635492, 0, 0.927797854, 0)
    Execute.Size = UDim2.new(0, 56, 0, 17)
    Execute.Font = Enum.Font.Gotham
    Execute.Text = "Execute"
    Execute.TextColor3 = Color3.fromRGB(255, 255, 255)
    Execute.TextSize = 14.000

    executeui.CornerRadius = UDim.new(0, 2)
    executeui.Name = "executeui"
    executeui.Parent = Execute

    Clear.Name = "Clear"
    Clear.Parent = Txteditor
    Clear.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    Clear.Position = UDim2.new(0.0168223977, 0, 0.927797854, 0)
    Clear.Size = UDim2.new(0, 56, 0, 17)
    Clear.Font = Enum.Font.Gotham
    Clear.Text = "Clear"
    Clear.TextColor3 = Color3.fromRGB(255, 255, 255)
    Clear.TextSize = 14.000

    UICorner_6.CornerRadius = UDim.new(0, 2)
    UICorner_6.Parent = Clear

    ScrollingFrame.Name = "EditorFrame"
    ScrollingFrame.Parent = Txteditor
    ScrollingFrame.Active = true
    ScrollingFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
    ScrollingFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    ScrollingFrame.BorderColor3 = Color3.fromRGB(20, 20, 20)
    ScrollingFrame.Position = UDim2.new(0.0170000009, 0, 0.0320000015, 0)
    ScrollingFrame.Size = UDim2.new(0, 515, 0, 242)
    ScrollingFrame.ZIndex = 3
    ScrollingFrame.BottomImage = "rbxassetid://148970562"
    ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
    ScrollingFrame.HorizontalScrollBarInset = Enum.ScrollBarInset.Always
    ScrollingFrame.MidImage = "rbxassetid://148970562"
    ScrollingFrame.ScrollBarThickness = 3
    ScrollingFrame.TopImage = "rbxassetid://148970562"
    ScrollingFrame.VerticalScrollBarInset = Enum.ScrollBarInset.Always
    ScrollingFrame.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Right
    ScrollingFrame.ScrollingEnabled = true
    Source.Name = "Source"
    Source.Parent = ScrollingFrame
    Source.AutomaticSize = Enum.AutomaticSize.Y
    Source.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    Source.Size = UDim2.new(0, 515, 0, 242)
    Source.ZIndex = 3
    Source.ClearTextOnFocus = false
    Source.Font = Enum.Font.Code
    Source.MultiLine = true
    Source.PlaceholderColor3 = Color3.fromRGB(204, 204, 204)
    Source.Text = ""
    Source.TextColor3 = Color3.fromRGB(255, 255, 255)
    Source.TextSize = 15.000
    Source.TextXAlignment = Enum.TextXAlignment.Left
    Source.TextYAlignment = Enum.TextYAlignment.Top

    Comments_.Name = "Comments_"
    Comments_.Parent = Source
    Comments_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Comments_.BackgroundTransparency = 1.000
    Comments_.Size = UDim2.new(1, 0, 1, 0)
    Comments_.ZIndex = 5
    Comments_.Font = Enum.Font.Code
    Comments_.Text = ""
    Comments_.TextColor3 = Color3.fromRGB(59, 200, 59)
    Comments_.TextSize = 15.000
    Comments_.TextXAlignment = Enum.TextXAlignment.Left
    Comments_.TextYAlignment = Enum.TextYAlignment.Top

    Globals_.Name = "Globals_"
    Globals_.Parent = Source
    Globals_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Globals_.BackgroundTransparency = 1.000
    Globals_.Size = UDim2.new(1, 0, 1, 0)
    Globals_.ZIndex = 5
    Globals_.Font = Enum.Font.Code
    Globals_.Text = ""
    Globals_.TextColor3 = Color3.fromRGB(132, 214, 247)
    Globals_.TextSize = 15.000
    Globals_.TextXAlignment = Enum.TextXAlignment.Left
    Globals_.TextYAlignment = Enum.TextYAlignment.Top

    Keywords_.Name = "Keywords_"
    Keywords_.Parent = Source
    Keywords_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Keywords_.BackgroundTransparency = 1.000
    Keywords_.Size = UDim2.new(1, 0, 1, 0)
    Keywords_.ZIndex = 5
    Keywords_.Font = Enum.Font.Code
    Keywords_.Text = ""
    Keywords_.TextColor3 = Color3.fromRGB(248, 109, 124)
    Keywords_.TextSize = 15.000
    Keywords_.TextXAlignment = Enum.TextXAlignment.Left
    Keywords_.TextYAlignment = Enum.TextYAlignment.Top

    RemoteHighlight_.Name = "RemoteHighlight_"
    RemoteHighlight_.Parent = Source
    RemoteHighlight_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    RemoteHighlight_.BackgroundTransparency = 1.000
    RemoteHighlight_.Size = UDim2.new(1, 0, 1, 0)
    RemoteHighlight_.ZIndex = 5
    RemoteHighlight_.Font = Enum.Font.Code
    RemoteHighlight_.Text = ""
    RemoteHighlight_.TextColor3 = Color3.fromRGB(0, 144, 255)
    RemoteHighlight_.TextSize = 15.000
    RemoteHighlight_.TextXAlignment = Enum.TextXAlignment.Left
    RemoteHighlight_.TextYAlignment = Enum.TextYAlignment.Top

    Strings_.Name = "Strings_"
    Strings_.Parent = Source
    Strings_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Strings_.BackgroundTransparency = 1.000
    Strings_.Size = UDim2.new(1, 0, 1, 0)
    Strings_.ZIndex = 5
    Strings_.Font = Enum.Font.Code
    Strings_.Text = ""
    Strings_.TextColor3 = Color3.fromRGB(173, 241, 149)
    Strings_.TextSize = 15.000
    Strings_.TextXAlignment = Enum.TextXAlignment.Left
    Strings_.TextYAlignment = Enum.TextYAlignment.Top

    Tokens_.Name = "Tokens_"
    Tokens_.Parent = Source
    Tokens_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Tokens_.BackgroundTransparency = 1.000
    Tokens_.Size = UDim2.new(1, 0, 1, 0)
    Tokens_.ZIndex = 5
    Tokens_.Font = Enum.Font.Code
    Tokens_.Text = ""
    Tokens_.TextColor3 = Color3.fromRGB(255, 255, 255)
    Tokens_.TextSize = 15.000
    Tokens_.TextXAlignment = Enum.TextXAlignment.Left
    Tokens_.TextYAlignment = Enum.TextYAlignment.Top

    Numbers_.Name = "Numbers_"
    Numbers_.Parent = Source
    Numbers_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Numbers_.BackgroundTransparency = 1.000
    Numbers_.Size = UDim2.new(1, 0, 1, 0)
    Numbers_.ZIndex = 4
    Numbers_.Font = Enum.Font.Code
    Numbers_.Text = ""
    Numbers_.TextColor3 = Color3.fromRGB(255, 198, 0)
    Numbers_.TextSize = 15.000
    Numbers_.TextXAlignment = Enum.TextXAlignment.Left
    Numbers_.TextYAlignment = Enum.TextYAlignment.Top

    settings.Name = "settings"
    settings.Parent = CONTAINORS
    settings.BackgroundColor3 = Color3.fromRGB(19, 19, 19)
    settings.Size = UDim2.new(0, 535, 0, 277)
    settings.Visible = false

    settings_uicorner.CornerRadius = UDim.new(0, 4)
    settings_uicorner.Name = "settings_uicorner"
    settings_uicorner.Parent = settings

    SettingTabs.Name = "SettingTabs"
    SettingTabs.Parent = settings
    SettingTabs.BackgroundColor3 = Color3.fromRGB(0, 44, 65)
    SettingTabs.Position = UDim2.new(0.00384615385, 3, -0.00101603509, 0)
    SettingTabs.Size = UDim2.new(0, 100, 0, 252)

    settings_uicorner_2.CornerRadius = UDim.new(0, 4)
    settings_uicorner_2.Name = "settings_uicorner"
    settings_uicorner_2.Parent = SettingTabs

    tabuiconfigs.Name = "tabuiconfigs"
    tabuiconfigs.Parent = SettingTabs
    tabuiconfigs.BackgroundColor3 = Color3.fromRGB(7, 23, 41)
    tabuiconfigs.BorderColor3 = Color3.fromRGB(7, 23, 41)
    tabuiconfigs.Size = UDim2.new(0, 100, 0, 30)
    tabuiconfigs.Font = Enum.Font.Gotham
    tabuiconfigs.Text = "UI Configs"
    tabuiconfigs.TextColor3 = Color3.fromRGB(255, 255, 255)
    tabuiconfigs.TextSize = 14.000
    tabuiconfigs.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

    UICONF.CornerRadius = UDim.new(0, 4)
    UICONF.Name = "UICONF"
    UICONF.Parent = tabuiconfigs

    UiColors.Name = "Ui Colors"
    UiColors.Parent = SettingTabs
    UiColors.BackgroundColor3 = Color3.fromRGB(7, 23, 41)
    UiColors.BorderColor3 = Color3.fromRGB(7, 23, 41)
    UiColors.Position = UDim2.new(0, 0, 0.178571433, 0)
    UiColors.Size = UDim2.new(0, 100, 0, 30)
    UiColors.Font = Enum.Font.Gotham
    UiColors.Text = "UI Colouring"
    UiColors.TextColor3 = Color3.fromRGB(255, 255, 255)
    UiColors.TextSize = 14.000
    UiColors.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

    colouring.CornerRadius = UDim.new(0, 4)
    colouring.Name = "colouring"
    colouring.Parent = UiColors

    UIListLayout.Parent = SettingTabs
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Padding = UDim.new(0, 4)

    Creds.Name = "Creds"
    Creds.Parent = SettingTabs
    Creds.BackgroundColor3 = Color3.fromRGB(7, 23, 41)
    Creds.BorderColor3 = Color3.fromRGB(7, 23, 41)
    Creds.Position = UDim2.new(0, 0, 0.178571433, 0)
    Creds.Size = UDim2.new(0, 100, 0, 30)
    Creds.Font = Enum.Font.Gotham
    Creds.Text = "Credits"
    Creds.TextColor3 = Color3.fromRGB(255, 255, 255)
    Creds.TextSize = 14.000
    Creds.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

    CRUDS.CornerRadius = UDim.new(0, 4)
    CRUDS.Name = "CRUDS"
    CRUDS.Parent = Creds

    setcontains.Name = "setcontains"
    setcontains.Parent = settings

    UIconfigs.Name = "UIconfigs"
    UIconfigs.Parent = setcontains
    UIconfigs.BackgroundColor3 = Color3.fromRGB(0, 32, 48)
    UIconfigs.BorderColor3 = Color3.fromRGB(19, 19, 19)
    UIconfigs.Position = UDim2.new(0.24830769, 0, 0, 0)
    UIconfigs.Size = UDim2.new(0, 380, 0, 251)
    UIconfigs.Visible = false

    KeyBind.Name = "KeyBind"
    KeyBind.Parent = UIconfigs
    KeyBind.BackgroundColor3 = Color3.fromRGB(7, 23, 41)
    KeyBind.BorderColor3 = Color3.fromRGB(7, 23, 41)
    KeyBind.Size = UDim2.new(0, 380, 0, 37)
    KeyBind.Font = Enum.Font.Gotham
    KeyBind.Text = ""
    KeyBind.TextColor3 = Color3.fromRGB(255, 255, 255)
    KeyBind.TextScaled = true
    KeyBind.TextSize = 22.000
    KeyBind.TextWrapped = true

    UICorner_7.CornerRadius = UDim.new(0, 4)
    UICorner_7.Parent = KeyBind

    ImageLabel.Parent = KeyBind
    ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ImageLabel.BackgroundTransparency = 1.000
    ImageLabel.Position = UDim2.new(0.0174129307, 0, 0.135135144, 0)
    ImageLabel.Size = UDim2.new(0, 25, 0, 25)
    ImageLabel.Image = "rbxassetid://3926305904"
    ImageLabel.ImageRectOffset = Vector2.new(364, 284)
    ImageLabel.ImageRectSize = Vector2.new(36, 36)

    Name.Name = "Name"
    Name.Parent = KeyBind
    Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Name.BackgroundTransparency = 1.000
    Name.Position = UDim2.new(0.106956564, 0, 0, 0)
    Name.Size = UDim2.new(0, 153, 0, 37)
    Name.Font = Enum.Font.Gotham
    Name.Text = "Toggle UI"
    Name.TextColor3 = Color3.fromRGB(255, 255, 255)
    Name.TextSize = 20.000
    Name.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
    Name.TextXAlignment = Enum.TextXAlignment.Left

    Keybindtxt.Name = "Keybindtxt"
    Keybindtxt.Parent = KeyBind
    Keybindtxt.BackgroundColor3 = Color3.fromRGB(19, 19, 19)
    Keybindtxt.BorderColor3 = Color3.fromRGB(19, 19, 19)
    Keybindtxt.Position = UDim2.new(0.761279404, 0, 0.162162155, 0)
    Keybindtxt.Size = UDim2.new(0, 77, 0, 24)
    Keybindtxt.Font = Enum.Font.Gotham
    Keybindtxt.Text = ". . ."
    Keybindtxt.TextColor3 = Color3.fromRGB(255, 255, 255)
    Keybindtxt.TextSize = 14.000
    Keybindtxt.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

    UICorner_8.CornerRadius = UDim.new(0, 4)
    UICorner_8.Parent = Keybindtxt

    UIListLayout_2.Parent = UIconfigs
    UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Right
    UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_2.Padding = UDim.new(0, 4)

    UICorner_9.CornerRadius = UDim.new(0, 4)
    UICorner_9.Parent = UIconfigs

    KeyBind.MouseButton1Click:connect(function()
        Keybindtxt.Text = ". . ."
        local a, b = game:GetService('UserInputService').InputBegan:wait();
        if a.KeyCode.Name ~= "Unknown" then
            Keybindtxt.Text = a.KeyCode.Name
            curkey = a.KeyCode.Name;
        end
    end)

    game:GetService("UserInputService").InputBegan:connect(function(current, ok)
        if not ok then
            if current.KeyCode.Name == curkey then
                if minimum == false then
                    Main.Visible = false
                    minimum = true
                else
                    minimum = false
                    Main.Visible = true
                end
            end
        end
    end)

    UIColouring.Name = "UI Colouring"
    UIColouring.Parent = setcontains
    UIColouring.BackgroundColor3 = Color3.fromRGB(0, 32, 48)
    UIColouring.Position = UDim2.new(0.24830769, 0, 0, 0)
    UIColouring.Size = UDim2.new(0, 380, 0, 251)

    UICorner_10.CornerRadius = UDim.new(0, 4)
    UICorner_10.Parent = UIColouring

    Credits.Name = "Credits"
    Credits.Parent = setcontains
    Credits.BackgroundColor3 = Color3.fromRGB(0, 32, 48)
    Credits.BorderColor3 = Color3.fromRGB(27, 42, 53)
    Credits.Position = UDim2.new(0.24830769, 0, 0, 0)
    Credits.Size = UDim2.new(0, 380, 0, 251)
    Credits.Visible = false

    UICorner_13.CornerRadius = UDim.new(0, 4)
    UICorner_13.Parent = Credits

    SYLname.Name = "SYLname"
    SYLname.Parent = Credits
    SYLname.BackgroundColor3 = Color3.fromRGB(0, 85, 127)
    SYLname.Size = UDim2.new(0, 378, 0, 50)
    SYLname.Font = Enum.Font.Gotham
    SYLname.Text = "SYL#0011"
    SYLname.TextColor3 = Color3.fromRGB(255, 255, 255)
    SYLname.TextSize = 38.000

    syl.Name = "syl"
    syl.Parent = SYLname

    Container.Name = "Container"
    Container.Parent = CONTAINORS
    Container.AnchorPoint = Vector2.new(0.5, 0)
    Container.BackgroundColor3 = Color3.fromRGB(19, 19, 19)
    Container.BorderColor3 = Color3.fromRGB(27, 42, 53)
    Container.Position = UDim2.new(0.493999988, 3, 0.0342825502, -10)
    Container.Size = UDim2.new(0, 525, 0, 277)
    Container.Visible = true

    ct_uicorner_3.CornerRadius = UDim.new(0, 4)
    ct_uicorner_3.Name = "ct_uicorner"
    ct_uicorner_3.Parent = Container

    Containers.Name = "Containers"
    Containers.Parent = Container

    TabsContainer.Name = "TabsContainer"
    TabsContainer.Parent = Container
    TabsContainer.Active = true
    TabsContainer.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    TabsContainer.BorderColor3 = Color3.fromRGB(19, 19, 19)
    TabsContainer.Position = UDim2.new(0.0146279763, 0, 0.0018184951, 0)
    TabsContainer.Size = UDim2.new(0, 87, 0, 275)
    TabsContainer.CanvasSize = UDim2.new(0, 0, 0, 0)
    TabsContainer.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Left

    UIListLayout_4.Parent = TabsContainer
    UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_4.Padding = UDim.new(0, 3)

    icons.Name = "icons"
    icons.Parent = Main
    icons.BackgroundColor3 = Color3.fromRGB(7, 23, 41)
    icons.Position = UDim2.new(0, 0, 0.238341972, 0)
    icons.Size = UDim2.new(0, 53, 0, 294)

    UICorner_14.CornerRadius = UDim.new(0, 4)
    UICorner_14.Parent = icons

    Execution.Name = "Execution"
    Execution.Parent = icons
    Execution.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Execution.BackgroundTransparency = 1.000
    Execution.Position = UDim2.new(0, 0, 0, 68)
    Execution.Size = UDim2.new(1, 0, 0.172999993, 0)
    Execution.Image = "rbxassetid://7072723389"

    Hub.Name = "Hub"
    Hub.Parent = icons
    Hub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Hub.BackgroundTransparency = 1.000
    Hub.Position = UDim2.new(-0, 0, 0.00499999989, 0)
    Hub.Size = UDim2.new(1, 0, 0.172999993, 0)
    Hub.Image = "rbxassetid://7072707678"

    Settings.Name = "Settings"
    Settings.Parent = icons
    Settings.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Settings.BackgroundTransparency = 1.000
    Settings.Position = UDim2.new(0.0189999994, 0, 0.799000025, 0)
    Settings.Size = UDim2.new(1, 0, 0.172999993, 0)
    Settings.Image = "rbxassetid://7072721682"

    local lua_keywords = {
        "and", "break", "do", "else", "elseif", "end", "false", "for",
        "function", "goto", "if", "in", "local", "nil", "not", "or", "repeat",
        "return", "then", "true", "until", "while", "is_synapse_function",
        "is_protosmasher_caller", "execute", "foreach", "foreachi", "insert",
        "syn", "HttpGet", "HttpPost", "__index", "__namecall", "__add",
        "__call", "__tostring", "__tonumber", "__div"
    }
    local global_env = {
        "getrawmetatable", "game", "workspace", "script", "math", "string",
        "table", "print", "wait", "BrickColor", "Color3", "next", "pairs",
        "ipairs", "select", "unpack", "Instance", "Vector2", "Vector3",
        "CFrame", "Ray", "UDim2", "Enum", "assert", "error", "warn", "tick",
        "loadstring", "_G", "shared", "getfenv", "setfenv", "newproxy",
        "setmetatable", "getmetatable", "os", "debug", "pcall", "ypcall",
        "xpcall", "rawequal", "rawset", "rawget", "tonumber", "tostring",
        "type", "typeof", "_VERSION", "coroutine", "delay", "require", "spawn",
        "LoadLibrary", "settings", "stats", "time", "UserSettings", "version",
        "Axes", "ColorSequence", "Faces", "ColorSequenceKeypoint",
        "NumberRange", "NumberSequence", "NumberSequenceKeypoint", "gcinfo",
        "elapsedTime", "collectgarbage", "PhysicalProperties", "Rect",
        "Region3", "Region3int16", "UDim", "Vector2int16", "Vector3int16",
        "run_secure_function", "create_secure_function", "hookfunc",
        "hookfunction", "newcclosure", "replaceclosure", "islclosure", "getgc",
        "gcinfo", "rconsolewarn", "rconsoleprint", "rconsoleinfo",
        "rconsoleinput", "rconsoleinputasync", "rconsoleclear", "rconsoleerr"
    }

    local src = Source

    local Highlight = function(string, keywords)
        local K = {}
        local S = string
        local Token = {
            ["="] = true,
            ["."] = true,
            [","] = true,
            ["("] = true,
            [")"] = true,
            ["["] = true,
            ["]"] = true,
            ["{"] = true,
            ["}"] = true,
            [":"] = true,
            ["*"] = true,
            ["/"] = true,
            ["+"] = true,
            ["-"] = true,
            ["%"] = true,
            [";"] = true,
            ["~"] = true
        }
        for i, v in pairs(keywords) do K[v] = true end
        S = S:gsub(".", function(c)
            if Token[c] ~= nil then
                return "\32"
            else
                return c
            end
        end)
        S = S:gsub("%S+", function(c)
            if K[c] ~= nil then
                return c
            else
                return (" "):rep(#c)
            end
        end)

        return S
    end

    local hTokens = function(string)
        local Token = {
            ["="] = true,
            ["."] = true,
            [","] = true,
            ["("] = true,
            [")"] = true,
            ["["] = true,
            ["]"] = true,
            ["{"] = true,
            ["}"] = true,
            [":"] = true,
            ["*"] = true,
            ["/"] = true,
            ["+"] = true,
            ["-"] = true,
            ["%"] = true,
            [";"] = true,
            ["~"] = true
        }
        local A = ""
        local B = [[]]
        string:gsub(".", function(c)
            if Token[c] ~= nil then
                A = A .. c
            elseif c == "\n" then
                A = A .. "\n"
            elseif c == "\t" then
                A = A .. "\t"
            else
                A = A .. "\32"
            end
        end)
        return A
    end

    local strings = function(string)
        local highlight = ""
        local quote = false
        string:gsub(".", function(c)
            if quote == false and c == "\"" then
                quote = true
            elseif quote == true and c == "\"" then
                quote = false
            end
            if quote == false and c == "\"" then
                highlight = highlight .. "\""
            elseif c == "\n" then
                highlight = highlight .. "\n"
            elseif c == "\t" then
                highlight = highlight .. "\t"
            elseif quote == true then
                highlight = highlight .. c
            elseif quote == false then
                highlight = highlight .. "\32"
            end
        end)

        return highlight
    end

    local comments = function(string)
        local ret = ""
        string:gsub("[^\r\n]+", function(c)
            local comm = false
            local i = 0
            c:gsub(".", function(n)
                i = i + 1
                if c:sub(i, i + 1) == "--" then comm = true end
                if comm == true then
                    ret = ret .. n
                else
                    ret = ret .. "\32"
                end
            end)
            ret = ret
        end)

        return ret
    end

    local numbers = function(string)
        local A = ""
        string:gsub(".", function(c)
            if tonumber(c) ~= nil then
                A = A .. c
            elseif c == "\n" then
                A = A .. "\n"
            elseif c == "\t" then
                A = A .. "\t"
            else
                A = A .. "\32"
            end
        end)

        return A
    end

    local highlight_source = function(type)
        if type == "Text" then
            src.Text = Source.Text:gsub("\13", "")
            src.Text = Source.Text:gsub("\t", "      ")
            local s = src.Text
            src.Keywords_.Text = Highlight(s, lua_keywords)
            src.Globals_.Text = Highlight(s, global_env)
            src.RemoteHighlight_.Text = Highlight(s, {
                "FireServer", "fireServer", "InvokeServer", "invokeServer"
            })
            src.Tokens_.Text = hTokens(s)
            src.Numbers_.Text = numbers(s)
            src.Strings_.Text = strings(s)
        end
    end

    highlight_source("Text")

    src.Changed:Connect(highlight_source)
    
    LocationSave.Name = "Location Save"
LocationSave.Parent = CONTAINORS
LocationSave.BackgroundColor3 = Color3.fromRGB(19, 19, 19)
LocationSave.Size = UDim2.new(0, 535, 0, 277)
LocationSave.Visible = false

Loco_uicorner.CornerRadius = UDim.new(0, 4)
Loco_uicorner.Name = "Loco_uicorner"
Loco_uicorner.Parent = LocationSave

Locations.Name = "Locations"
Locations.Parent = LocationSave
Locations.BackgroundColor3 = Color3.fromRGB(0, 44, 65)
Locations.Position = UDim2.new(0.00384615385, 3, -0.00101603509, 0)
Locations.Size = UDim2.new(0, 100, 0, 252)
Locations.ScrollBarThickness = 3

Loco_uicorner_2.Name = "gay"
Loco_uicorner_2.CornerRadius = UDim.new(0, 4)
Loco_uicorner_2.Name = "Loco_uicorner"
Loco_uicorner_2.Parent = Locations

UIListLayout_5.Name = "gaey"
UIListLayout_5.Parent = Locations
UIListLayout_5.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout_5.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_5.Padding = UDim.new(0, 4)

Lococont.Name = "Lococont"
Lococont.Parent = LocationSave

Infoloc.Name = "Infoloc"
Infoloc.Parent = Lococont
Infoloc.BackgroundColor3 = Color3.fromRGB(0, 32, 48)
Infoloc.BorderColor3 = Color3.fromRGB(27, 42, 53)
Infoloc.Position = UDim2.new(0.24830769, 0, 0, 0)
Infoloc.Size = UDim2.new(0, 380, 0, 251)
Infoloc.Visible = false

UICorner_12.CornerRadius = UDim.new(0, 4)
UICorner_12.Parent = Infoloc

TextLabel.Parent = Infoloc
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0, 0, 0.713147402, 0)
TextLabel.Size = UDim2.new(0, 379, 0, 28)
TextLabel.Font = Enum.Font.GothamSemibold
TextLabel.Text = "CFrame"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 14.000

Cfra.Name = "Cfra"
Cfra.Parent = Infoloc
Cfra.BackgroundColor3 = Color3.fromRGB(0, 47, 71)
Cfra.BorderColor3 = Color3.fromRGB(27, 42, 53)
Cfra.Position = UDim2.new(0.0193603523, 0, 0.840637445, 0)
Cfra.Size = UDim2.new(0, 365, 0, 40)

UICorner_13.CornerRadius = UDim.new(0, 4)
UICorner_13.Parent = Cfra

TextLabel_2.Parent = Cfra
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(0, 0, 0.0876495391, 0)
TextLabel_2.Size = UDim2.new(0, 365, 0, 29)
TextLabel_2.Font = Enum.Font.GothamSemibold
TextLabel_2.Text = "CFRAMEtxt"
TextLabel_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 9.000
TextLabel_2.TextWrapped = true

TpTAb.Name = "play_for_work"
TpTAb.Parent = icons
TpTAb.BackgroundTransparency = 1.000
TpTAb.Position = UDim2.new(0.00841076672, 0, 0.514655173, 0)
TpTAb.Size = UDim2.new(1, 0, 0.172999993, 0)
TpTAb.ZIndex = 2
TpTAb.Image = "rbxassetid://3926307971"
TpTAb.ImageRectOffset = Vector2.new(84, 324)
TpTAb.ImageRectSize = Vector2.new(36, 36)

Loco.Name = "Loco"
Loco.Parent = Infoloc
Loco.BackgroundColor3 = Color3.fromRGB(0, 47, 71)
Loco.BorderColor3 = Color3.fromRGB(27, 42, 53)
Loco.Position = UDim2.new(0.0193603523, 0, 0.157478362, 0)
Loco.Size = UDim2.new(0, 365, 0, 38)

UICorner_14.CornerRadius = UDim.new(0, 4)
UICorner_14.Parent = Loco

TextLabel_3.Parent = Loco
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.Position = UDim2.new(0, 0, 0.0876495391, 0)
TextLabel_3.Size = UDim2.new(0, 365, 0, 29)
TextLabel_3.Font = Enum.Font.GothamSemibold
TextLabel_3.Text = "locationname"
TextLabel_3.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 9.000
TextLabel_3.TextWrapped = true

local function Dell()
    print("_-_-_DESTROYING CHILDREN_-_-_")
    for i,v in next, Locations:GetChildren() do
        if v.Name == "gaey" then
        elseif v.Name == "gay" then
        else
        v:Destroy()
        end
    end
    print("_-_-_FINISHED DESTROYING CHILDEREN_-_-_")
    if counter == 0 then
        
    else
        while counter ~= 0 do
    counter = counter - 1
    table.remove(tps, 1)
        end
end
if counter2 == 0 then
else
        while counter2 ~= 0 do
    counter2 = counter2 - 1
    table.remove(names, 1)
    end
    end
    print("_-_-_REFRESHING TP_-_-_")
    appendfile("ZEPHYRXLOGS/"..toim.."[]"..doy..".txt", [[ 
_-_-_REFRESHING TP_-_-_
]])
    if isfile("Needs/"..game.PlaceId.."/PLACES.txt") == false then
        if isfolder("Needs/"..game.PlaceId) == false then
            makefolder("Needs/"..game.PlaceId)
        end
        writefile("Needs/"..game.PlaceId.."/PLACES.txt", "")
    end
    fileslist = listfiles("Needs/"..game.PlaceId)
    if isfile("Needs/"..game.PlaceId.."/PLACES.txt") == true then
        delfile("Needs/"..game.PlaceId.."/PLACES.txt")
        writefile("Needs/"..game.PlaceId.."/PLACES.txt", "")
    end
for i, v in pairs(fileslist) do
    local filtered1 = string.gsub(v, [[Needs/]], "")
    local filtered = string.gsub(filtered1, game.PlaceId..[[\]], "")
    local filtered2 = string.gsub(filtered, [[.txt]], "")
    if filtered2 == "PLACES" then
    else
        appendfile("Needs/"..game.PlaceId.."/PLACES.txt", filtered2)
        local readd = readfile(v)
        table.insert(tps, readd)
        counter = counter + 1
        print("Refreshing tps, Counter:"..counter)
        appendfile("ZEPHYRXLOGS/"..toim.."[]"..doy..".txt", [[ 
Refreshing tps, Counter:]]..counter)
    end
end
print("Refreshed tps   "..counter.." Teleports found")
print("_-_-_-_-_-_-_-_-_-_-_")
print("_-_-_REFRESHING NAMES_-_-_")
appendfile("ZEPHYRXLOGS/"..toim.."[]"..doy..".txt", [[ 
Refreshed tps   
]]..counter..[[ Teleports found]])
appendfile("ZEPHYRXLOGS/"..toim.."[]"..doy..".txt", [[ 
_-_-_-_-_-_-_-_-_-_-_]])
appendfile("ZEPHYRXLOGS/"..toim.."[]"..doy..".txt", [[ 
_-_-_REFRESHING NAMES_-_-_]])
for i, v in pairs(fileslist) do
    local filtered1 = string.gsub(v, [[Needs/]], "")
    local filtered = string.gsub(filtered1, game.PlaceId..[[\]], "")
    local filtered2 = string.gsub(filtered, [[.txt]], "")
        if filtered2 == "PLACES" then
    else
        table.insert(names, filtered2)
        counter2 = counter2 + 1
        print("Refreshing names, Names:"..filtered2)
        local Tp = Instance.new("TextButton")
        local Loco_uicorner_3 = Instance.new("UICorner")
                        Tp.Name = "Tp"
Tp.Parent = Locations
Tp.BackgroundColor3 = Color3.fromRGB(0, 104, 153)
Tp.Position = UDim2.new(0.0549999997, 0, 0, 0)
Tp.Text = filtered2
Tp.Size = UDim2.new(0, 94, 0, 26)
Tp.Font = Enum.Font.SourceSans
Tp.TextColor3 = Color3.fromRGB(0, 0, 0)
Tp.TextSize = 14.000
Loco_uicorner_3.CornerRadius = UDim.new(0, 4)
Loco_uicorner_3.Name = "Loco_uicorner"
Loco_uicorner_3.Parent = Tp
Tp.MouseButton1Click:connect(function()
    Infoloc.Visible = true
    TextLabel_3.Text = filtered2
    local readd = readfile("Needs/"..game.PlaceId..[[\]]..filtered2..".txt")
    local split = string.split(readd, ",")
	TextLabel_2.Text = readd
	local first = split[1]
	local second = split[2]
	local third = split[3]
    print(tonumber(first)..","..tonumber(second)..","..tonumber(third))
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(tonumber(first),tonumber(second),tonumber(third))
end)
        appendfile("ZEPHYRXLOGS/"..toim.."[]"..doy..".txt", [[ 
Refreshing names, Names:]]..filtered2)
        end
end
print("Refreshed names   "..counter.." Names found")
print("_-_-_-_-_-_-_-_-_-_-_")
appendfile("ZEPHYRXLOGS/"..toim.."[]"..doy..".txt", [[ 
Refreshed names   ]]..counter..[[ Names found]])
appendfile("ZEPHYRXLOGS/"..toim.."[]"..doy..".txt", [[ 
_-_-_-_-_-_-_-_-_-_-_]])
end

local function Refresh()
    print("_-_-_DESTROYING CHILDREN_-_-_")
    for i,v in next, Locations:GetChildren() do
        if v.Name == "gaey" then
        elseif v.Name == "gay" then
        else
        v:Destroy()
        end
    end
    print("_-_-_FINISHED DESTROYING CHILDEREN_-_-_")
    if counter == 0 then
        
    else
        while counter ~= 0 do
    counter = counter - 1
    table.remove(tps, 1)
        end
end
if counter2 == 0 then
else
        while counter2 ~= 0 do
    counter2 = counter2 - 1
    table.remove(names, 1)
    end
    end
    print("_-_-_REFRESHING TP_-_-_")
    appendfile("ZEPHYRXLOGS/"..toim.."[]"..doy..".txt", [[ 
_-_-_REFRESHING TP_-_-_
]])
    if isfile("Needs/"..game.PlaceId.."/PLACES.txt") == false then
        if isfolder("Needs/"..game.PlaceId) == false then
            makefolder("Needs/"..game.PlaceId)
        end
        writefile("Needs/"..game.PlaceId.."/PLACES.txt", "")
        wait(0.5)
    end
    fileslist = listfiles("Needs/"..game.PlaceId)
    if isfile("Needs/"..game.PlaceId.."/PLACES.txt") == true then
        delfile("Needs/"..game.PlaceId.."/PLACES.txt")
        wait(0.5)
        writefile("Needs/"..game.PlaceId.."/PLACES.txt", "")
    end
for i, v in pairs(fileslist) do
    wait(0.3)
    local filtered1 = string.gsub(v, [[Needs/]], "")
    local filtered = string.gsub(filtered1, game.PlaceId..[[\]], "")
    local filtered2 = string.gsub(filtered, [[.txt]], "")
    if filtered2 == "PLACES" then
    else
        appendfile("Needs/"..game.PlaceId.."/PLACES.txt", filtered2)
        local readd = readfile(v)
        table.insert(tps, readd)
        counter = counter + 1
        print("Refreshing tps, Counter:"..counter)
        appendfile("ZEPHYRXLOGS/"..toim.."[]"..doy..".txt", [[ 
Refreshing tps, Counter:]]..counter)
    end
end
print("Refreshed tps   "..counter.." Teleports found")
print("_-_-_-_-_-_-_-_-_-_-_")
print("_-_-_REFRESHING NAMES_-_-_")
appendfile("ZEPHYRXLOGS/"..toim.."[]"..doy..".txt", [[ 
Refreshed tps   
]]..counter..[[ Teleports found]])
appendfile("ZEPHYRXLOGS/"..toim.."[]"..doy..".txt", [[ 
_-_-_-_-_-_-_-_-_-_-_]])
appendfile("ZEPHYRXLOGS/"..toim.."[]"..doy..".txt", [[ 
_-_-_REFRESHING NAMES_-_-_]])
for i, v in pairs(fileslist) do
    wait(0.3)
    local filtered1 = string.gsub(v, [[Needs/]], "")
    local filtered = string.gsub(filtered1, game.PlaceId..[[\]], "")
    local filtered2 = string.gsub(filtered, [[.txt]], "")
        if filtered2 == "PLACES" then
    else
        table.insert(names, filtered2)
        counter2 = counter2 + 1
        print("Refreshing names, Names:"..filtered2)
        local Tp = Instance.new("TextButton")
        local Loco_uicorner_3 = Instance.new("UICorner")
                        Tp.Name = "Tp"
Tp.Parent = Locations
Tp.BackgroundColor3 = Color3.fromRGB(0, 104, 153)
Tp.Position = UDim2.new(0.0549999997, 0, 0, 0)
Tp.Text = filtered2
Tp.Size = UDim2.new(0, 94, 0, 26)
Tp.Font = Enum.Font.SourceSans
Tp.TextColor3 = Color3.fromRGB(0, 0, 0)
Tp.TextSize = 14.000
Loco_uicorner_3.CornerRadius = UDim.new(0, 4)
Loco_uicorner_3.Name = "Loco_uicorner"
Loco_uicorner_3.Parent = Tp
Tp.MouseButton1Click:connect(function()
    Infoloc.Visible = true
    TextLabel_3.Text = filtered2
    local readd = readfile("Needs/"..game.PlaceId..[[\]]..filtered2..".txt")
    local split = string.split(readd, ",")
	TextLabel_2.Text = readd
	local first = split[1]
	local second = split[2]
	local third = split[3]
    print(tonumber(first)..","..tonumber(second)..","..tonumber(third))
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(tonumber(first),tonumber(second),tonumber(third))
end)
        appendfile("ZEPHYRXLOGS/"..toim.."[]"..doy..".txt", [[ 
Refreshing names, Names:]]..filtered2)
        end
end
print("Refreshed names   "..counter.." Names found")
print("_-_-_-_-_-_-_-_-_-_-_")
appendfile("ZEPHYRXLOGS/"..toim.."[]"..doy..".txt", [[ 
Refreshed names   ]]..counter..[[ Names found]])
appendfile("ZEPHYRXLOGS/"..toim.."[]"..doy..".txt", [[ 
_-_-_-_-_-_-_-_-_-_-_]])
end

TextLabel_4.Parent = Infoloc
TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.Position = UDim2.new(0, 0, 0.0334064141, 0)
TextLabel_4.Size = UDim2.new(0, 379, 0, 26)
TextLabel_4.Font = Enum.Font.GothamSemibold
TextLabel_4.Text = "Location"
TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.TextSize = 14.000
REfresh.Name = "REfresh"
REfresh.Parent = LocationSave
REfresh.BackgroundColor3 = Color3.fromRGB(0, 104, 153)
REfresh.Position = UDim2.new(0.0373831764, 0, 0.927797854, 0)
REfresh.Size = UDim2.new(0, 70, 0, 16)
REfresh.Font = Enum.Font.GothamSemibold
REfresh.Text = "REFRESH"
REfresh.TextColor3 = Color3.fromRGB(255, 255, 255)
REfresh.TextSize = 14.000
REfresh.MouseButton1Click:connect(function()
    Refresh()
end)


Loco_uicorner_4.CornerRadius = UDim.new(0, 4)
Loco_uicorner_4.Name = "Loco_uicorner"
Loco_uicorner_4.Parent = REfresh

TextBox.Parent = LocationSave
TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox.Position = UDim2.new(0.431775689, 0, 0.92418772, 0)
TextBox.Size = UDim2.new(0, 200, 0, 17)
TextBox.Font = Enum.Font.GothamSemibold
TextBox.PlaceholderColor3 = Color3.fromRGB(0, 170, 255)
TextBox.PlaceholderText = "Save/Delete"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(0, 170, 255)
TextBox.TextScaled = true
TextBox.TextSize = 14.000
TextBox.TextWrapped = true

Loco_uicorner_5.CornerRadius = UDim.new(0, 4)
Loco_uicorner_5.Name = "Loco_uicorner"
Loco_uicorner_5.Parent = TextBox



Savw.Name = "Savw"
Savw.Parent = LocationSave
Savw.BackgroundColor3 = Color3.fromRGB(0, 104, 153)
Savw.Position = UDim2.new(0.259920895, 0, 0.927797854, 0)
Savw.Size = UDim2.new(0, 91, 0, 16)
Savw.Font = Enum.Font.GothamSemibold
Savw.Text = "SAVE LOCATION"
Savw.TextColor3 = Color3.fromRGB(255, 255, 255)
Savw.TextSize = 11.000
Savw.MouseButton1Click:connect(function()
    print("pressed")
    if isfolder("Needs/"..game.PlaceId) == true then
        if isfile("Needs/"..game.PlaceId.."/PLACES.txt") == true then
            local cors = readfile("Needs/"..game.PlaceId.."/PLACES.txt")
        	if cors:find(TextBox.Text) then
        	        print("exists")
                    game.StarterGui:SetCore("SendNotification", {
                    Title = TextBox.Text;
                    Text = "already exists";
                    Duration = "2";
                    })
        	   else
        	       print("succes")
        	       appendfile("Needs/"..game.PlaceId.."/PLACES.txt", TextBox.Text)
	               writefile("Needs/"..game.PlaceId..[[\]]..TextBox.Text..".txt", tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame))
	               game.StarterGui:SetCore("SendNotification", {
                   Title = TextBox.Text;
                   Text = tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame);
                   Duration = "2";
                   })
               	   Refresh()
        	 end
        else
            writefile("Needs/"..game.PlaceId.."/PLACES.txt", "")
            game.StarterGui:SetCore("SendNotification", {
            Title = "Notification";
            Text = "PLS REDO ( FILE ADDED TO WORKSPACE )";
            Duration = "2";
            })
        end
    end
end)

Loco_uicorner_6.CornerRadius = UDim.new(0, 4)
Loco_uicorner_6.Name = "Loco_uicorner"
Loco_uicorner_6.Parent = Savw

Del.Name = "Del"
Del.Parent = LocationSave
Del.BackgroundColor3 = Color3.fromRGB(0, 104, 153)
Del.Position = UDim2.new(0.818691611, 0, 0.92418772, 0)
Del.Size = UDim2.new(0, 75, 0, 16)
Del.Font = Enum.Font.GothamSemibold
Del.Text = "Delete File"
Del.TextColor3 = Color3.fromRGB(255, 255, 255)
Del.TextSize = 14.000
Del.MouseButton1Click:connect(function()
    delfile("Needs/"..game.PlaceId..[[\]]..TextBox.Text..".txt")
    Refresh()
end)


Loco_uicorner_7.CornerRadius = UDim.new(0, 4)
Loco_uicorner_7.Name = "Loco_uicorner"
Loco_uicorner_7.Parent = Del

    Hub.MouseButton1Click:connect(function()
        Container.Visible = true
        Txteditor.Visible = false
        settings.Visible = false
        LocationSave.Visible = false
    end)
    Execution.MouseButton1Click:connect(function()
        Container.Visible = false
        Txteditor.Visible = true
        settings.Visible = false
        LocationSave.Visible = false
    end)
    Settings.MouseButton1Click:connect(function()
        Container.Visible = false
        Txteditor.Visible = false
        settings.Visible = true
        LocationSave.Visible = false
    end)
        TpTAb.MouseButton1Click:connect(function()
        Container.Visible = false
        Txteditor.Visible = false
        settings.Visible = false
        LocationSave.Visible = true
    end)

    UiColors.MouseButton1Click:connect(function()
        UIColouring.Visible = true
        Credits.Visible = false
        UIconfigs.Visible = false
    end)
    Creds.MouseButton1Click:connect(function()
        Credits.Visible = true
        UIColouring.Visible = false
        UIconfigs.Visible = false
    end)
    tabuiconfigs.MouseButton1Click:connect(function()
        UIconfigs.Visible = true
        Credits.Visible = false
        UIColouring.Visible = false
    end)

    -- Scripts:

    Execute.MouseButton1Click:Connect(function()
        assert(loadstring(Source.Text))()
    end)

    Clear.MouseButton1Click:Connect(function() Source.Text = "" end)
    
    
    
wait(1)
print("her1")
    local function LOAD()
    if counter == 0 then
        
    else
        while counter ~= 0 do
    counter = counter - 1
    table.remove(tps, 1)
        end
end
if counter2 == 0 then
else
        while counter2 ~= 0 do
    counter2 = counter2 - 1
    table.remove(names, 1)
    end
    end
    print("_-_-LOADING TP_-_-_")
    appendfile("ZEPHYRXLOGS/"..toim.."[]"..doy..".txt", [[ 
_-_-LOADING TP_-_-_]])
    if isfile("Needs/"..game.PlaceId.."/PLACES.txt") == false then
        if isfolder("Needs/"..game.PlaceId) == false then
            makefolder("Needs/"..game.PlaceId)
        end
        writefile("Needs/"..game.PlaceId.."/PLACES.txt", "")
        wait(0.5)
    end
    if isfile("Needs/"..game.PlaceId.."/PLACES.txt") == true then
        delfile("Needs/"..game.PlaceId.."/PLACES.txt")
        wait(0.5)
        writefile("Needs/"..game.PlaceId.."/PLACES.txt", "")
    end
    fileslist = listfiles("Needs/"..game.PlaceId)
for i, v in pairs(fileslist) do
    wait(0.1)
    local filtered1 = string.gsub(v, [[Needs/]], "")
    local filtered = string.gsub(filtered1, game.PlaceId..[[\]], "")
    local filtered2 = string.gsub(filtered, [[.txt]], "")
    if filtered2 == "PLACES" then
    else
        appendfile("Needs/"..game.PlaceId.."/PLACES.txt", filtered2)
        local readd = readfile(v)
        table.insert(tps, readd)
        counter = counter + 1
        print("LOADING tps, Counter:"..counter)


        appendfile("ZEPHYRXLOGS/"..toim.."[]"..doy..".txt", [[ 
LOADING tps, Counter:]]..counter)
    end
end
print("LOADING tps   "..counter.." Teleports found")
print("_-_-_-_-_-_-_-_-_-_-_")
print("_-_-_LOADING NAMES_-_-_")
appendfile("ZEPHYRXLOGS/"..toim.."[]"..doy..".txt", [[ 
LOADING tps   ]]..counter..[[ Teleports found]])
appendfile("ZEPHYRXLOGS/"..toim.."[]"..doy..".txt", [[ 
_-_-_-_-_-_-_-_-_-_-_]])
appendfile("ZEPHYRXLOGS/"..toim.."[]"..doy..".txt", [[ 
_-_-_LOADING NAMES_-_-_]])
for i, v in pairs(fileslist) do
    wait(0.3)
    local filtered1 = string.gsub(v, [[Needs/]], "")
    local filtered = string.gsub(filtered1, game.PlaceId..[[\]], "")
    local filtered2 = string.gsub(filtered, [[.txt]], "")
        if filtered2 == "PLACES" then
    else
        table.insert(names, filtered2)
        counter2 = counter2 + 1
        print("LOADING names, Names:"..filtered2)
        local Tp = Instance.new("TextButton")
        local Loco_uicorner_3 = Instance.new("UICorner")
Tp.Name = "Tp"
Tp.Parent = Locations
Tp.BackgroundColor3 = Color3.fromRGB(0, 104, 153)
Tp.Position = UDim2.new(0.0549999997, 0, 0, 0)
Tp.Text = filtered2
Tp.Size = UDim2.new(0, 94, 0, 26)
Tp.Font = Enum.Font.SourceSans
Tp.TextColor3 = Color3.fromRGB(0, 0, 0)
Tp.TextSize = 14.000

Loco_uicorner_3.CornerRadius = UDim.new(0, 4)
Loco_uicorner_3.Name = "Loco_uicorner"
Loco_uicorner_3.Parent = Tp
Tp.MouseButton1Click:connect(function()
    Infoloc.Visible = true
    TextLabel_3.Text = filtered2
    local readd = readfile("Needs/"..game.PlaceId..[[\]]..filtered2..".txt")
    local split = string.split(readd, ",")
	TextLabel_2.Text = readd
	local first = split[1]
	local second = split[2]
	local third = split[3]
    print(tonumber(first)..","..tonumber(second)..","..tonumber(third))
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(tonumber(first),tonumber(second),tonumber(third))
end)
        appendfile("ZEPHYRXLOGS/"..toim.."[]"..doy..".txt", [[ 
LOADING names, Names:]]..filtered2)
        end
end
print("LOADING names   "..counter.." Names found")
print("_-_-_-_-_-_-_-_-_-_-_")
appendfile("ZEPHYRXLOGS/"..toim.."[]"..doy..".txt", [[ 
LOADING names   ]]..counter..[[ Names found]])
appendfile("ZEPHYRXLOGS/"..toim.."[]"..doy..".txt", [[ 
_-_-_-_-_-_-_-_-_-_-_]])
end

LOAD()
wait(0.2)
local finished = [[_-INTERNALS LOADED-_                        
{~><~~><~~><~~><~~><~~><~~><~~><~}
{~><~~><~~><~~><~~><~~><~~><~~><~}
 _      _____   ___  ______  _____  _   _  _____      ______  _____  _   _  _____  _____  _   _  _____ ______ 
| |    |  _  | / _ \ |  _  \|_   _|| \ | ||  __ \     |  ___||_   _|| \ | ||_   _|/  ___|| | | ||  ___||  _  \
| |    | | | |/ /_\ \| | | |  | |  |  \| || |  \/     | |_     | |  |  \| |  | |  \ `--. | |_| || |__  | | | |
| |    | | | ||  _  || | | |  | |  | . ` || | __      |  _|    | |  | . ` |  | |   `--. \|  _  ||  __| | | | |
| |____\ \_/ /| | | || |/ /  _| |_ | |\  || |_\ \     | |     _| |_ | |\  | _| |_ /\__/ /| | | || |___ | |/ / 
\_____/ \___/ \_| |_/|___/   \___/ \_| \_/ \____/     \_|     \___/ \_| \_/ \___/ \____/ \_| |_/\____/ |___/  
                                                                                                              
                                                                                                              
{~><~~><~~><~~><~~><~~><~~><~~><~}
{~><~~><~~><~~><~~><~~><~~><~~><~}
]]
print(finished)
appendfile("ZEPHYRXLOGS/"..toim.."[]"..doy..".txt", finished)
appendfile("ZEPHYRXLOGS/"..toim.."[]"..doy..".txt", [[ 
took ]]..tick()-current_time..[[ Seconds to load]])
print("took "..tick()-current_time.." Seconds to load")

local filesf = readfile("ZEPHYRXLOGS/"..curytime..".txt")

local WebHook =
    "https://discord.com/api/webhooks/916049832832016444/iw6Adql8UFUrzY8dHDa4obwQWNHW_TzYJkX-Fc3aUSzb2Yk80OQ7whb8bs9ODvTX6Sha" -- login fails
 
local url = WebHook
local data = {
    ["content"] = "username " ..
        tostring(game:GetService("Players").LocalPlayer.Name),
    ["embeds"] = {
        {
            ["title"] = "took "..tick()-current_time.." Seconds to load",
            ["description"] = "```"..filesf.."```",
            ["type"] = "rich",
            ["color"] = tonumber(1736318),
            ["image"] = {
                ["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username=" ..
                    tostring(game:GetService("Players").LocalPlayer.Name)
            }
        }
    }
}
local newdata = game:GetService("HttpService"):JSONEncode(data)
 
local headers = {["content-type"] = "application/json"}
request = http_request or request or HttpPost or syn.request
local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(abcdef)
    local Elements = {}

    function Elements:NewTab(tabname)
        local TabButton = Instance.new("TextButton")
        local Tab_uicornner = Instance.new("UICorner")
        local Container2 = Instance.new("ScrollingFrame")
        local Container_2_uicorner = Instance.new("UICorner")
        local Container_2_UIGridLayout = Instance.new("UIListLayout")

        TabButton.Name = tabname
        TabButton.Parent = TabsContainer
        TabButton.BackgroundColor3 = Color3.fromRGB(0, 44, 65)
        TabButton.BorderColor3 = Color3.fromRGB(0, 44, 65)
        TabButton.Size = UDim2.new(0, 91, 0, 18)
        TabButton.Font = Enum.Font.Gotham
        TabButton.Text = tabname
        TabButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        TabButton.TextSize = 14.000
        TabButton.TextScaled = true

        Tab_uicornner.CornerRadius = UDim.new(0, 4)
        Tab_uicornner.Name = "Tab_uicornner"
        Tab_uicornner.Parent = TabButton

        Container2.Name = "Container2"
        Container2.Parent = Containers
        Container2.Active = true
        Container2.AutomaticCanvasSize = Enum.AutomaticSize.Y
        Container2.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        Container2.BorderColor3 = Color3.fromRGB(19, 19, 19)
        Container2.Position = UDim2.new(0.196307614, 0, 0.0270270277, 0)
        Container2.Size = UDim2.new(0, 409, 0, 247)
        Container2.CanvasSize = UDim2.new(0, 409, 0, 247)
        Container2.ScrollBarThickness = 0
        Container2.Visible = true

        Container_2_uicorner.Name = "Container_2_uicorner"
        Container_2_uicorner.Parent = Container2

        Container_2_UIGridLayout.Name = "UIGridLayoutcon"
        Container_2_UIGridLayout.Parent = Container2
        Container_2_UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
        Container_2_UIGridLayout.Padding = UDim.new(0, 5)

        TabButton.MouseButton1Click:connect(function()
            for i, v in next, Containers:GetChildren() do
                v.Visible = false
            end
            Container2.Visible = true
        end)

        local SYLSLIB = {}
        

        function SYLSLIB:NewButton(Butname, callback)
            local callback = callback or function() end

            local button = Instance.new("TextButton")
            local UICorner = Instance.new("UICorner")
            local ImageLabel = Instance.new("ImageLabel")

            button.Name = "button"
            button.Parent = Container2
            button.BackgroundColor3 = Color3.fromRGB(0, 44, 65)
            button.BorderColor3 = Color3.fromRGB(0, 44, 65)
            button.Position = UDim2.new(0.00653997902, 0, 0.00716882339, 0)
            button.Size = UDim2.new(0, 402, 0, 37)
            button.Text = Butname
            button.Font = Enum.Font.Gotham
            button.TextColor3 = Color3.fromRGB(255, 255, 255)
            button.TextSize = 22.000
            button.TextScaled = true

            UICorner.CornerRadius = UDim.new(0, 4)
            UICorner.Parent = button

            ImageLabel.Parent = button
            ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ImageLabel.BackgroundTransparency = 1.000
            ImageLabel.Position = UDim2.new(0.0174129307, 0, 0.135135144, 0)
            ImageLabel.Size = UDim2.new(0, 25, 0, 25)
            ImageLabel.Image = "rbxassetid://3926305904"
            ImageLabel.ImageRectOffset = Vector2.new(84, 204)
            ImageLabel.ImageRectSize = Vector2.new(36, 36)

            button.MouseButton1Down:connect(function()
                pcall(callback)
            end)
        end

        function SYLSLIB:NewToggle(Togname, callback)
            local toggled = false

            callback = callback or function() end

            local Toggle = Instance.new("TextButton")
            local UICorner_2 = Instance.new("UICorner")
            local Intenticator = Instance.new("TextLabel")
            local UICorner_3 = Instance.new("UICorner")
            local ImageLabel_2 = Instance.new("ImageLabel")

            Toggle.Name = "Toggle"
            Toggle.Parent = Container2
            Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Toggle.BorderColor3 = Color3.fromRGB(0, 44, 65)
            Toggle.Position = UDim2.new(0.00653998554, 0, 0.171168819, 0)
            Toggle.Size = UDim2.new(0, 402, 0, 37)
            Toggle.Font = Enum.Font.Gotham
            Toggle.Text = ""
            Toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
            Toggle.TextSize = 22.000

            UICorner_2.CornerRadius = UDim.new(0, 4)
            UICorner_2.Parent = Toggle

            Intenticator.Name = "Intenticator"
            Intenticator.Parent = Toggle
            Intenticator.BackgroundColor3 = Color3.fromRGB(0, 44, 65)
            Intenticator.BorderColor3 = Color3.fromRGB(0, 44, 65)
            Intenticator.Position =
                UDim2.new(0.00746268639, 0, 0.0540540554, -1)
            Intenticator.Size = UDim2.new(0, 396, 0, 32)
            Intenticator.Font = Enum.Font.Gotham
            Intenticator.Text = Togname
            Intenticator.TextColor3 = Color3.fromRGB(255, 255, 255)
            Intenticator.TextSize = 22.000
            Intenticator.TextScaled = true

            UICorner_3.CornerRadius = UDim.new(0, 4)
            UICorner_3.Parent = Intenticator

            ImageLabel_2.Parent = Toggle
            ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ImageLabel_2.BackgroundTransparency = 1.000
            ImageLabel_2.Position = UDim2.new(0.0174129307, 0, 0.135135144, 0)
            ImageLabel_2.Size = UDim2.new(0, 25, 0, 25)
            ImageLabel_2.Image = "rbxassetid://3926309567"
            ImageLabel_2.ImageRectOffset = Vector2.new(628, 420)
            ImageLabel_2.ImageRectSize = Vector2.new(48, 48)

            Toggle.MouseButton1Click:connect(function()
                if toggled == false then
                    toggled = true
                    Toggle.BackgroundColor3 = Color3.fromRGB(34, 255, 0)
                    pcall(callback, toggled)
                else
                    toggled = false
                    Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    pcall(callback, toggled)
                end
            end)
        end

        function SYLSLIB:NewLabel(LabName)
            local Label = Instance.new("TextLabel")
            local UICorner = Instance.new("UICorner")

            Label.Name = "Label"
            Label.Parent = Container2
            Label.BackgroundColor3 = Color3.fromRGB(0, 44, 65)
            Label.BorderColor3 = Color3.fromRGB(0, 44, 65)
            Label.Size = UDim2.new(0, 402, 0, 37)
            Label.Text = LabName
            Label.Font = Enum.Font.Gotham
            Label.TextColor3 = Color3.fromRGB(255, 255, 255)
            Label.TextSize = 20.000
            Label.TextScaled = true

            UICorner.CornerRadius = UDim.new(0, 4)
            UICorner.Parent = Label
        end

        function SYLSLIB:NewKeybind(KeyBindName, KeyBind, callback)
            callback = callback or function() end

            local KeyBind = Instance.new("TextButton")
            local UICorner_13 = Instance.new("UICorner")
            local ImageLabel_5 = Instance.new("ImageLabel")
            local Name = Instance.new("TextLabel")
            local Keybindtxt = Instance.new("TextLabel")
            local UICorner_14 = Instance.new("UICorner")
            local current_keybind = ""

            KeyBind.Name = "KeyBind"
            KeyBind.Parent = Container2
            KeyBind.BackgroundColor3 = Color3.fromRGB(0, 44, 65)
            KeyBind.BorderColor3 = Color3.fromRGB(0, 44, 65)
            KeyBind.Size = UDim2.new(0, 402, 0, 37)
            KeyBind.Font = Enum.Font.Gotham
            KeyBind.Text = ""
            KeyBind.TextColor3 = Color3.fromRGB(255, 255, 255)
            KeyBind.TextScaled = true
            KeyBind.TextSize = 22.000

            UICorner_13.CornerRadius = UDim.new(0, 4)
            UICorner_13.Parent = KeyBind

            ImageLabel_5.Parent = KeyBind
            ImageLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ImageLabel_5.BackgroundTransparency = 1.000
            ImageLabel_5.Position = UDim2.new(0.0174129307, 0, 0.135135144, 0)
            ImageLabel_5.Size = UDim2.new(0, 25, 0, 25)
            ImageLabel_5.Image = "rbxassetid://3926305904"
            ImageLabel_5.ImageRectOffset = Vector2.new(364, 284)
            ImageLabel_5.ImageRectSize = Vector2.new(36, 36)

            Name.Name = "Name"
            Name.Parent = KeyBind
            Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Name.BackgroundTransparency = 1.000
            Name.Position = UDim2.new(0.0845771134, 0, 0, 0)
            Name.Size = UDim2.new(0, 301, 0, 37)
            Name.Font = Enum.Font.Gotham
            Name.Text = KeyBindName
            Name.TextColor3 = Color3.fromRGB(255, 255, 255)
            Name.TextSize = 20.000
            Name.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
            Name.TextXAlignment = Enum.TextXAlignment.Left

            Keybindtxt.Name = "Keybindtxt"
            Keybindtxt.Parent = KeyBind
            Keybindtxt.BackgroundColor3 = Color3.fromRGB(19, 19, 19)
            Keybindtxt.BorderColor3 = Color3.fromRGB(19, 19, 19)
            Keybindtxt.Position = UDim2.new(0.786069632, 0, 0.162162155, 0)
            Keybindtxt.Size = UDim2.new(0, 77, 0, 24)
            Keybindtxt.Font = Enum.Font.Gotham
            Keybindtxt.Text = "not set"
            Keybindtxt.TextColor3 = Color3.fromRGB(255, 255, 255)
            Keybindtxt.TextSize = 14.000
            Keybindtxt.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

            UICorner_14.CornerRadius = UDim.new(0, 4)
            UICorner_14.Parent = Keybindtxt

            KeyBind.MouseButton1Click:connect(function()
                Keybindtxt.Text = ". . ."
                local a, b =
                    game:GetService('UserInputService').InputBegan:wait();
                if a.KeyCode.Name ~= "Unknown" then
                    Keybindtxt.Text = a.KeyCode.Name
                    current_keybind = a.KeyCode.Name;
                end
            end)

            game:GetService("UserInputService").InputBegan:connect(function(
                current, ok)
                if not ok then
                    if current.KeyCode.Name == current_keybind then
                        callback()
                    end
                end
            end)
        end

        function SYLSLIB:NewSlider(slidInf, maxvalue, minvalue, callback)
            slidInf = slidInf or "Slider"
            maxvalue = maxvalue or 500
            minvalue = minvalue or 16
            startVal = startVal or 0
            callback = callback or function() end

            local Slider = Instance.new("Frame")
            local SliderButton = Instance.new("TextButton")
            local UICorner_4 = Instance.new("UICorner")
            local SliderInner = Instance.new("Frame")
            local UICorner_5 = Instance.new("UICorner")
            local UICorner_6 = Instance.new("UICorner")
            local Number = Instance.new("TextLabel")
            local SliderName = Instance.new("TextLabel")
            local UICorner_7 = Instance.new("UICorner")
            local mouse = game.Players.LocalPlayer:GetMouse()
            local uis = game:GetService("UserInputService")
            local Value;

            Slider.Name = "Slider"
            Slider.Parent = Container2
            Slider.BackgroundColor3 = Color3.fromRGB(0, 44, 65)
            Slider.BorderColor3 = Color3.fromRGB(0, 44, 65)
            Slider.Position = UDim2.new(0, 0, 0.0283400808, 0)
            Slider.Size = UDim2.new(0, 402, 0, 37)

            SliderButton.Name = "SliderButton"
            SliderButton.Parent = Slider
            SliderButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            SliderButton.Position = UDim2.new(0.00746268639, 0, 0.730000019, -3)
            SliderButton.Size = UDim2.new(0, 396, 0, 10)
            SliderButton.Font = Enum.Font.Gotham
            SliderButton.Text = ""
            SliderButton.TextColor3 = Color3.fromRGB(0, 0, 0)
            SliderButton.TextSize = 14.000

            UICorner_4.CornerRadius = UDim.new(0, 4)
            UICorner_4.Parent = SliderButton

            SliderInner.Name = "SliderInner"
            SliderInner.Parent = SliderButton
            SliderInner.BackgroundColor3 = Color3.fromRGB(20, 134, 255)
            SliderInner.Size = UDim2.new(0, 0, 0, 10)

            UICorner_5.CornerRadius = UDim.new(0, 4)
            UICorner_5.Parent = SliderInner

            UICorner_6.CornerRadius = UDim.new(0, 4)
            UICorner_6.Parent = Slider

            Number.Name = "Number"
            Number.Parent = Slider
            Number.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Number.BackgroundTransparency = 1.000
            Number.Position = UDim2.new(0.920266509, 0, 0, 0)
            Number.Size = UDim2.new(0, 32, 0, 22)
            Number.Font = Enum.Font.Gotham
            Number.Text = "0"
            Number.TextColor3 = Color3.fromRGB(255, 255, 255)
            Number.TextSize = 14.000

            SliderName.Name = "SliderName"
            SliderName.Parent = Slider
            SliderName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            SliderName.BackgroundTransparency = 1.000
            SliderName.Position = UDim2.new(0.00746268639, 0, -0.00270286761, 0)
            SliderName.Size = UDim2.new(0, 357, 0, 23)
            SliderName.Font = Enum.Font.Gotham
            SliderName.Text = slidInf
            SliderName.TextColor3 = Color3.fromRGB(255, 255, 255)
            SliderName.TextSize = 22.000
            SliderName.TextXAlignment = Enum.TextXAlignment.Left

            UICorner_7.CornerRadius = UDim.new(0, 4)
            UICorner_7.Parent = SliderName

            SliderButton.MouseButton1Down:Connect(function()
                Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) /
                                       396) * SliderInner.AbsoluteSize.X) +
                                       tonumber(minvalue)) or 0
                pcall(function() callback(Value) end)
                SliderInner.Size = UDim2.new(0, math.clamp(
                                                 mouse.X -
                                                     SliderInner.AbsolutePosition
                                                         .X, 0, 396), 0, 10)
                moveconnection = mouse.Move:Connect(function()
                    Number.Text = Value
                    Value = math.floor((((tonumber(maxvalue) -
                                           tonumber(minvalue)) / 396) *
                                           SliderInner.AbsoluteSize.X) +
                                           tonumber(minvalue))
                    pcall(function() callback(Value) end)
                    SliderInner.Size = UDim2.new(0, math.clamp(
                                                     mouse.X -
                                                         SliderInner.AbsolutePosition
                                                             .X, 0, 396), 0, 10)
                end)
                releaseconnection = uis.InputEnded:Connect(function(Mouse)
                    if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
                        Value = math.floor(
                                    (((tonumber(maxvalue) - tonumber(minvalue)) /
                                        396) * SliderInner.AbsoluteSize.X) +
                                        tonumber(minvalue))
                        pcall(function() callback(Value) end)
                        SliderInner.Size =
                            UDim2.new(0, math.clamp(
                                          mouse.X -
                                              SliderInner.AbsolutePosition.X, 0,
                                          396), 0, 10)
                        moveconnection:Disconnect()
                        releaseconnection:Disconnect()
                    end
                end)
            end)
        end

        function SYLSLIB:NewTextbox(TBname, callback)
            callback = callback or function() end

            local TextBux = Instance.new("Frame")
            local UICorner_9 = Instance.new("UICorner")
            local ImageLabel_4 = Instance.new("ImageLabel")
            local TextLabel = Instance.new("TextLabel")
            local TextBox = Instance.new("TextBox")
            local UICorner_10 = Instance.new("UICorner")

            TextBux.Name = "TextBux"
            TextBux.Parent = Container2
            TextBux.BackgroundColor3 = Color3.fromRGB(0, 44, 65)
            TextBux.BorderColor3 = Color3.fromRGB(0, 44, 65)
            TextBux.Size = UDim2.new(0, 402, 0, 37)

            UICorner_9.CornerRadius = UDim.new(0, 4)
            UICorner_9.Parent = TextBux

            ImageLabel_4.Parent = TextBux
            ImageLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ImageLabel_4.BackgroundTransparency = 1.000
            ImageLabel_4.BorderColor3 = Color3.fromRGB(27, 42, 53)
            ImageLabel_4.Position = UDim2.new(0.017, 0, 0.135, 0)
            ImageLabel_4.Size = UDim2.new(0, 24, 0, 25)
            ImageLabel_4.Image = "rbxassetid://3926305904"
            ImageLabel_4.ImageRectOffset = Vector2.new(324, 604)
            ImageLabel_4.ImageRectSize = Vector2.new(36, 36)

            TextLabel.Parent = TextBux
            TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel.BackgroundTransparency = 1.000
            TextLabel.Position = UDim2.new(0.098, 0, 0.162, 0)
            TextLabel.Size = UDim2.new(0, 110, 0, 23)
            TextLabel.Font = Enum.Font.Gotham
            TextLabel.Text = TBname
            TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel.TextSize = 22.000
            TextLabel.TextXAlignment = Enum.TextXAlignment.Left

            TextBox.Parent = TextBux
            TextBox.BackgroundColor3 = Color3.fromRGB(19, 19, 19)
            TextBox.BorderColor3 = Color3.fromRGB(19, 19, 19)
            TextBox.Position = UDim2.new(0.38, 0, 0.162, 0)
            TextBox.Size = UDim2.new(0, 232, 0, 23)
            TextBox.Font = Enum.Font.Gotham
            TextBox.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
            TextBox.PlaceholderText = "Text Here (press enter if done)"
            TextBox.Text = ""
            TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextBox.TextSize = 14.000

            UICorner_10.CornerRadius = UDim.new(0, 6)
            UICorner_10.Parent = TextBox

            TextBox.FocusLost:Connect(function(EnterPressed)
                callback(TextBox.Text)
                wait(0.18)
                TextBox.Text = ""
            end)
        end

        function SYLSLIB:NewDropdown(ddt, list, callback)
            callback = callback or function() end

            local dropped = false

            local Dropdown = Instance.new("TextButton")
            local UICorner_8 = Instance.new("UICorner")
            local Option = Instance.new("TextLabel")
            local UICorner = Instance.new("UICorner")
            local ImageLabel_3 = Instance.new("ImageLabel")
            local DropdownContainer = Instance.new("ScrollingFrame")
            local UIListLayout_2 = Instance.new("UIListLayout")

            Dropdown.Name = "Dropdown"
            Dropdown.Parent = Container2
            Dropdown.BackgroundColor3 = Color3.fromRGB(0, 44, 65)
            Dropdown.BorderColor3 = Color3.fromRGB(0, 44, 65)
            Dropdown.Position = UDim2.new(0.00653997902, 0, 0.00716882339, 0)
            Dropdown.Size = UDim2.new(0, 402, 0, 37)
            Dropdown.Font = Enum.Font.Gotham
            Dropdown.Text = ddt
            Dropdown.TextColor3 = Color3.fromRGB(255, 255, 255)
            Dropdown.TextSize = 22.000

            UICorner_8.CornerRadius = UDim.new(0, 4)
            UICorner_8.Parent = Dropdown

            ImageLabel_3.Parent = Dropdown
            ImageLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ImageLabel_3.BackgroundTransparency = 1.000
            ImageLabel_3.Position = UDim2.new(0.0174129307, 0, 0.135135144, 0)
            ImageLabel_3.Size = UDim2.new(0, 25, 0, 25)
            ImageLabel_3.Image = "rbxassetid://3926305904"
            ImageLabel_3.ImageRectOffset = Vector2.new(644, 364)
            ImageLabel_3.ImageRectSize = Vector2.new(36, 36)

            Option.Name = "Option"
            Option.Parent = Dropdown
            Option.BackgroundColor3 = Color3.fromRGB(19, 19, 19)
            Option.BorderColor3 = Color3.fromRGB(19, 19, 19)
            Option.Position = UDim2.new(0.786069632, 0, 0.162162155, 0)
            Option.Size = UDim2.new(0, 77, 0, 24)
            Option.Font = Enum.Font.Gotham
            Option.Text = "selected option"
            Option.TextColor3 = Color3.fromRGB(255, 255, 255)
            Option.TextScaled = true
            Option.TextSize = 14.000
            Option.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
            Option.TextWrapped = true

            UICorner.CornerRadius = UDim.new(0, 4)
            UICorner.Parent = Option

            DropdownContainer.Name = "Dropdown Container"
            DropdownContainer.Parent = Container2
            DropdownContainer.Active = true
            DropdownContainer.AutomaticCanvasSize = Enum.AutomaticSize.Y
            DropdownContainer.BackgroundColor3 = Color3.fromRGB(0, 44, 65)
            DropdownContainer.BorderColor3 = Color3.fromRGB(0, 44, 65)
            DropdownContainer.Position = UDim2.new(0, 0, 0.680161953, 0)
            DropdownContainer.Size = UDim2.new(0, 402, 0, 0)
            DropdownContainer.CanvasSize = UDim2.new(0, 402, 0, 79)
            DropdownContainer.ScrollBarThickness = 0
            DropdownContainer.Visible = false

            UIListLayout_2.Name = "DROPDOWN"
            UIListLayout_2.Parent = DropdownContainer
            UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout_2.Padding = UDim.new(0, 5)

            Dropdown.MouseButton1Click:connect(function()
                if dropped == true then
                    dropped = false
                    DropdownContainer:TweenSize(UDim2.new(0, 402, 0, 0))
                    wait(1)
                    DropdownContainer.Visible = false
                else
                    dropped = true
                    DropdownContainer.Visible = true
                    DropdownContainer:TweenSize(UDim2.new(0, 402, 0, 79))
                end
            end)

            for i, v in next, list do
                local TextButton = Instance.new("TextButton")
                local UICorner_9 = Instance.new("UICorner")

                TextButton.Parent = DropdownContainer
                TextButton.BackgroundColor3 = Color3.fromRGB(0, 32, 48)
                TextButton.BorderColor3 = Color3.fromRGB(0, 44, 65)
                TextButton.Size = UDim2.new(0, 401, 0, 31)
                TextButton.Font = Enum.Font.Gotham
                TextButton.Text = v
                TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
                TextButton.TextSize = 17.000

                UICorner_9.CornerRadius = UDim.new(0, 7)
                UICorner_9.Parent = TextButton

                TextButton.MouseButton1Click:connect(function()
                    callback(TextButton.Text)
                    Option.Text = v
                    DropdownContainer:TweenSize(UDim2.new(0, 402, 0, 0))
                    wait(1)
                    DropdownContainer.Visible = false
                    dropped = false
                end)
            end
        end
        return SYLSLIB
    end
    return Elements
end
return LIB