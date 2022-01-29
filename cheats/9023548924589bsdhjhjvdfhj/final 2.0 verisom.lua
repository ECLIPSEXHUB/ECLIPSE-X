if isfolder("ZEPHYRXLOGS") == false then
    makefolder("ZEPHYRXLOGS")
end
local current_time = tick()

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
 _   _                   _                  __  
| | | |                 (_)                /  | 
| | | |  ___  _ __  ___  _   ___   _ __    `| | 
| | | | / _ \| '__|/ __|| | / _ \ | '_ \    | | 
\ \_/ /|  __/| |   \__ \| || (_) || | | |  _| |_
 \___/  \___||_|   |___/|_| \___/ |_| |_|  \___/
                                                
                                                
LOADING TAKES AN ESTIMATED 5 SECONDS

DEV: SYL
{~><~~><~~><~~><~~><~~><~~><~~><~}
{~><~~><~~><~~><~~><~~><~~><~~><~}






]]

print(intro)
writefile("ZEPHYRXLOGS/"..toim.."[]"..doy..".txt", intro)

wait(2)
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/ECLIPSEXHUB/ECLIPSEREPO/main/README.txt"))()

    local colors = {
    SchemeColor = Color3.fromRGB(0,255,255),
    Background = Color3.fromRGB(0, 0, 0),
    Header = Color3.fromRGB(0, 0, 0),
    TextColor = Color3.fromRGB(255,255,255),
    ElementColor = Color3.fromRGB(20, 20, 20)
}


local Window = Library.CreateLib("ZEPHYR X LOCATION SAVER", colors)

local Tab = Window:NewTab("TELEPORTS")

local TP = Tab:NewSection("TELEPORTS")

local lobals = TP:NewLabel("LOADING SCRIPT!! CHECK CONSOLE FOR LOGS")

local tps = {
    
}
local names = {
    
}

local counter = 0
local counter2 = 0
local fileslist = ""

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







local drop = TP:NewDropdown("Saved Teleports", "", names, function(currentOption)
    local readd = readfile("Needs/"..game.PlaceId..[[\]]..currentOption..".txt")
    local split = string.split(readd, ",")
	    
	local first = split[1]
	local second = split[2]
	local third = split[3]
    print(tonumber(first)..","..tonumber(second)..","..tonumber(third))
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(tonumber(first),tonumber(second),tonumber(third))
end)

local function Refresh()
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
    fileslist = listfiles("Needs/"..game.PlaceId)
    if isfile("Needs/"..game.PlaceId.."/PLACES.txt") == false then
        writefile("Needs/"..game.PlaceId.."/PLACES.txt", "")
        wait(0.5)
    end
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
        drop:Refresh(names)
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
        drop:Refresh(names)
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
    fileslist = listfiles("Needs/"..game.PlaceId)
    if isfile("Needs/"..game.PlaceId.."/PLACES.txt") == false then
        writefile("Needs/"..game.PlaceId.."/PLACES.txt", "")
        wait(0.5)
    end
    if isfile("Needs/"..game.PlaceId.."/PLACES.txt") == true then
        delfile("Needs/"..game.PlaceId.."/PLACES.txt")
        wait(0.5)
        writefile("Needs/"..game.PlaceId.."/PLACES.txt", "")
    end
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
        drop:Refresh(names)
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
        drop:Refresh(names)
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
print("_-LOADING INTERNALS-_")
appendfile("ZEPHYRXLOGS/"..toim.."[]"..doy..".txt", [[ 
_-LOADING INTERNALS-_
]])
wait(0.2)
TP:NewButton("Current Table", "", function()
    print("----Teleports----")
        for i, v in pairs(tps) do
print(v)
wait(0.2)

end
print("-------------------")
wait(1)
print("-------names-------")
for i, v in pairs(names) do
print(v)
wait(0.2)

end
print("-------------------")
    
end)
wait(0.2)
TP:NewButton("Refresh Table", "", function()
        Refresh()
        drop:Refresh(names)
end)
wait(0.2)
TP:NewTextBox("Delete a file", "", function(txt)
	delfile("Needs/"..game.PlaceId..[[\]]..txt..".txt")
	Refresh()
	drop:Refresh(names)
end)
wait(0.2)
TP:NewLabel("Save location")
wait(0.2)
TP:NewTextBox("SAVING", "", function(txt)
    if isfolder("Needs/"..game.PlaceId) == true then
        if isfile("Needs/"..game.PlaceId.."/PLACES.txt") == true then
            local cors = readfile("Needs/"..game.PlaceId.."/PLACES.txt")
        	if cors:find(txt) then
        	        print("exists")
                    game.StarterGui:SetCore("SendNotification", {
                    Title = txt;
                    Text = "already exists";
                    Duration = "2";
                    })
        	   else
        	       print("succes")
        	       appendfile("Needs/"..game.PlaceId.."/PLACES.txt", txt)
	               writefile("Needs/"..game.PlaceId..[[\]]..txt..".txt", tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame))
	               game.StarterGui:SetCore("SendNotification", {
                   Title = txt;
                   Text = tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame);
                   Duration = "2";
                   })
               	   Refresh()
               	   drop:Refresh(names)
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
wait(0.2)
local Settings = Window:NewTab("Settings")
wait(0.2)
local SETE = Settings:NewSection("Settings")
wait(0.2)
local Colours = Settings:NewSection("Ui Colours")
for theme, color in pairs(colors) do
    Colours:NewColorPicker(theme, "Change your "..theme, color, function(color3)
        Library:ChangeColor(theme, color3)
    end)
end
wait(0.2)
local ToggleUI = Settings:NewSection("ToggleUI")
wait(0.2)
ToggleUI:NewKeybind("ToggleUI", "", Enum.KeyCode.LeftControl, function()
	Library:ToggleUI()
end)
wait(0.2)
local Function = Window:NewTab("Function")
wait(0.2)
local Walkspeed = Function:NewSection("Walkspeed")
wait(0.2)
Walkspeed:NewSlider("Walkspeed", "", 500, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
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
lobals:UpdateLabel("Teleport Section")
appendfile("ZEPHYRXLOGS/"..toim.."[]"..doy..".txt", [[ 
took ]]..tick()-current_time..[[ Seconds to load]])
print("took "..tick()-current_time.." Seconds to load")