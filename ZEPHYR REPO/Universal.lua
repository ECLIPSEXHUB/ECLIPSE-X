--[[
    "Game is not supported!" notification UI
    Made by ZEPHYR X
    Works as a LocalScript (StarterPlayerScripts) or in an executor.
]]

local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")

local AUTO_CLOSE_SECONDS = 8 -- set to 0 to disable auto close

-- Pick a parent for the GUI
local function getParent()
	local ok, core = pcall(function()
		return game:GetService("CoreGui")
	end)
	if ok and core then
		-- test if we're allowed to write to CoreGui
		local testOk = pcall(function()
			local f = Instance.new("Folder")
			f.Parent = core
			f:Destroy()
		end)
		if testOk then
			return core
		end
	end
	return Players.LocalPlayer:WaitForChild("PlayerGui")
end

-- Remove old copy
local parent = getParent()
local old = parent:FindFirstChild("UnsupportedGameUI")
if old then
	old:Destroy()
end

-- Helpers
local function create(class, props, children)
	local inst = Instance.new(class)
	for k, v in pairs(props or {}) do
		inst[k] = v
	end
	for _, child in ipairs(children or {}) do
		child.Parent = inst
	end
	return inst
end

local function tween(obj, time, props, style, dir)
	local t = TweenService:Create(
		obj,
		TweenInfo.new(time, style or Enum.EasingStyle.Quint, dir or Enum.EasingDirection.Out),
		props
	)
	t:Play()
	return t
end

-- ScreenGui
local gui = create("ScreenGui", {
	Name = "UnsupportedGameUI",
	ResetOnSpawn = false,
	ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
	IgnoreGuiInset = true,
	DisplayOrder = 999,
})

-- Dim background
local backdrop = create("Frame", {
	Name = "Backdrop",
	Size = UDim2.fromScale(1, 1),
	BackgroundColor3 = Color3.fromRGB(0, 0, 0),
	BackgroundTransparency = 1,
	BorderSizePixel = 0,
	Parent = gui,
})

-- Soft shadow
local shadow = create("ImageLabel", {
	Name = "Shadow",
	AnchorPoint = Vector2.new(0.5, 0.5),
	Position = UDim2.new(0.5, 0, 0.5, 6),
	Size = UDim2.fromOffset(470, 305),
	BackgroundTransparency = 1,
	Image = "rbxassetid://6014261993",
	ImageColor3 = Color3.fromRGB(0, 0, 0),
	ImageTransparency = 1,
	ScaleType = Enum.ScaleType.Slice,
	SliceCenter = Rect.new(49, 49, 450, 450),
	Parent = backdrop,
})

-- Main card
local card = create("Frame", {
	Name = "Card",
	AnchorPoint = Vector2.new(0.5, 0.5),
	Position = UDim2.fromScale(0.5, 0.5),
	Size = UDim2.fromOffset(0, 0),
	BackgroundColor3 = Color3.fromRGB(18, 18, 26),
	BorderSizePixel = 0,
	ClipsDescendants = true,
	Parent = backdrop,
}, {
	create("UICorner", { CornerRadius = UDim.new(0, 18) }),
	create("UIGradient", {
		Color = ColorSequence.new({
			ColorSequenceKeypoint.new(0, Color3.fromRGB(28, 24, 40)),
			ColorSequenceKeypoint.new(1, Color3.fromRGB(14, 14, 22)),
		}),
		Rotation = 90,
	}),
})

local cardStroke = create("UIStroke", {
	Thickness = 2,
	Transparency = 1,
	ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
	Color = Color3.fromRGB(255, 255, 255),
	Parent = card,
})
local strokeGradient = create("UIGradient", {
	Color = ColorSequence.new({
		ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 70, 100)),
		ColorSequenceKeypoint.new(0.5, Color3.fromRGB(150, 80, 255)),
		ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 70, 100)),
	}),
	Parent = cardStroke,
})

-- Top accent bar
local accent = create("Frame", {
	Name = "Accent",
	Size = UDim2.new(1, 0, 0, 5),
	BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	BorderSizePixel = 0,
	Parent = card,
}, {
	create("UIGradient", {
		Color = ColorSequence.new({
			ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 70, 100)),
			ColorSequenceKeypoint.new(1, Color3.fromRGB(150, 80, 255)),
		}),
	}),
})

-- Icon circle
local iconHolder = create("Frame", {
	Name = "IconHolder",
	AnchorPoint = Vector2.new(0.5, 0),
	Position = UDim2.new(0.5, 0, 0, 30),
	Size = UDim2.fromOffset(64, 64),
	BackgroundColor3 = Color3.fromRGB(255, 70, 100),
	BackgroundTransparency = 0.8,
	BorderSizePixel = 0,
	Parent = card,
}, {
	create("UICorner", { CornerRadius = UDim.new(1, 0) }),
	create("UIStroke", {
		Thickness = 2,
		Color = Color3.fromRGB(255, 70, 100),
		Transparency = 0.2,
	}),
})

local icon = create("TextLabel", {
	Name = "Icon",
	Size = UDim2.fromScale(1, 1),
	BackgroundTransparency = 1,
	Text = "!",
	Font = Enum.Font.GothamBlack,
	TextSize = 38,
	TextColor3 = Color3.fromRGB(255, 90, 115),
	Parent = iconHolder,
})

-- Title
local title = create("TextLabel", {
	Name = "Title",
	AnchorPoint = Vector2.new(0.5, 0),
	Position = UDim2.new(0.5, 0, 0, 106),
	Size = UDim2.new(1, -40, 0, 36),
	BackgroundTransparency = 1,
	Text = "Game is not supported!",
	Font = Enum.Font.GothamBold,
	TextSize = 28,
	TextColor3 = Color3.fromRGB(255, 255, 255),
	Parent = card,
}, {
	create("UIGradient", {
		Color = ColorSequence.new({
			ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)),
			ColorSequenceKeypoint.new(1, Color3.fromRGB(205, 180, 255)),
		}),
	}),
})

-- Subtitle
local subtitle = create("TextLabel", {
	Name = "Subtitle",
	AnchorPoint = Vector2.new(0.5, 0),
	Position = UDim2.new(0.5, 0, 0, 148),
	Size = UDim2.new(1, -60, 0, 40),
	BackgroundTransparency = 1,
	Text = "This script doesn't work in the game you're currently playing. Try joining a supported game.",
	Font = Enum.Font.Gotham,
	TextSize = 14,
	TextWrapped = true,
	TextColor3 = Color3.fromRGB(160, 160, 185),
	Parent = card,
})

-- Close button
local closeBtn = create("TextButton", {
	Name = "Close",
	AnchorPoint = Vector2.new(0.5, 0),
	Position = UDim2.new(0.5, 0, 0, 200),
	Size = UDim2.fromOffset(150, 40),
	BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	AutoButtonColor = false,
	Text = "Got it",
	Font = Enum.Font.GothamBold,
	TextSize = 16,
	TextColor3 = Color3.fromRGB(255, 255, 255),
	Parent = card,
}, {
	create("UICorner", { CornerRadius = UDim.new(0, 12) }),
	create("UIGradient", {
		Color = ColorSequence.new({
			ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 70, 100)),
			ColorSequenceKeypoint.new(1, Color3.fromRGB(150, 80, 255)),
		}),
		Rotation = 20,
	}),
})

-- Branding footer
local divider = create("Frame", {
	Name = "Divider",
	AnchorPoint = Vector2.new(0.5, 1),
	Position = UDim2.new(0.5, 0, 1, -38),
	Size = UDim2.new(1, -60, 0, 1),
	BackgroundColor3 = Color3.fromRGB(45, 45, 62),
	BorderSizePixel = 0,
	Parent = card,
})

local brand = create("TextLabel", {
	Name = "Brand",
	AnchorPoint = Vector2.new(0.5, 1),
	Position = UDim2.new(0.5, 0, 1, -14),
	Size = UDim2.new(1, -40, 0, 18),
	BackgroundTransparency = 1,
	RichText = true,
	Text = '<font color="rgb(125,125,150)">MADE BY</font>  <font color="rgb(190,120,255)"><b>ZEPHYR X</b></font>',
	Font = Enum.Font.GothamMedium,
	TextSize = 12,
	TextColor3 = Color3.fromRGB(255, 255, 255),
	Parent = card,
})

-- Countdown bar (bottom)
local barBack = create("Frame", {
	Name = "BarBack",
	AnchorPoint = Vector2.new(0, 1),
	Position = UDim2.fromScale(0, 1),
	Size = UDim2.new(1, 0, 0, 4),
	BackgroundColor3 = Color3.fromRGB(40, 40, 55),
	BorderSizePixel = 0,
	Parent = card,
})
local bar = create("Frame", {
	Name = "Bar",
	Size = UDim2.fromScale(1, 1),
	BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	BorderSizePixel = 0,
	Parent = barBack,
}, {
	create("UIGradient", {
		Color = ColorSequence.new({
			ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 70, 100)),
			ColorSequenceKeypoint.new(1, Color3.fromRGB(150, 80, 255)),
		}),
	}),
})

-- Start hidden contents
title.TextTransparency = 1
subtitle.TextTransparency = 1
icon.TextTransparency = 1
iconHolder.BackgroundTransparency = 1
closeBtn.BackgroundTransparency = 1
closeBtn.TextTransparency = 1
accent.BackgroundTransparency = 1
brand.TextTransparency = 1
divider.BackgroundTransparency = 1
barBack.BackgroundTransparency = 1
bar.BackgroundTransparency = 1

gui.Parent = parent

-- Draggable card
do
	local dragging, dragStart, startPos
	card.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = card.Position
		end
	end)
	UserInputService.InputChanged:Connect(function(input)
		if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
			local delta = input.Position - dragStart
			card.Position = UDim2.new(
				startPos.X.Scale, startPos.X.Offset + delta.X,
				startPos.Y.Scale, startPos.Y.Offset + delta.Y
			)
			shadow.Position = UDim2.new(card.Position.X.Scale, card.Position.X.Offset, card.Position.Y.Scale, card.Position.Y.Offset + 6)
		end
	end)
	UserInputService.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = false
		end
	end)
end

-- Button hover effects
closeBtn.MouseEnter:Connect(function()
	tween(closeBtn, 0.2, { Size = UDim2.fromOffset(160, 42) }, Enum.EasingStyle.Back)
end)
closeBtn.MouseLeave:Connect(function()
	tween(closeBtn, 0.2, { Size = UDim2.fromOffset(150, 40) })
end)

-- Animated border gradient + icon pulse
local alive = true
task.spawn(function()
	local rot = 0
	while alive and gui.Parent do
		rot = (rot + 2) % 360
		strokeGradient.Rotation = rot
		task.wait(0.02)
	end
end)
task.spawn(function()
	while alive and gui.Parent do
		tween(iconHolder, 0.8, { Size = UDim2.fromOffset(70, 70) }, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut)
		task.wait(0.8)
		tween(iconHolder, 0.8, { Size = UDim2.fromOffset(64, 64) }, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut)
		task.wait(0.8)
	end
end)

-- Close logic
local closing = false
local function close()
	if closing then return end
	closing = true
	alive = false
	tween(title, 0.2, { TextTransparency = 1 })
	tween(subtitle, 0.2, { TextTransparency = 1 })
	tween(brand, 0.2, { TextTransparency = 1 })
	tween(backdrop, 0.35, { BackgroundTransparency = 1 })
	tween(shadow, 0.3, { ImageTransparency = 1 })
	tween(cardStroke, 0.3, { Transparency = 1 })
	local t = tween(card, 0.35, { Size = UDim2.fromOffset(0, 0) }, Enum.EasingStyle.Back, Enum.EasingDirection.In)
	t.Completed:Wait()
	gui:Destroy()
end
closeBtn.MouseButton1Click:Connect(close)

-- Intro animation
tween(backdrop, 0.4, { BackgroundTransparency = 0.55 })
tween(shadow, 0.5, { ImageTransparency = 0.5 })
tween(card, 0.55, { Size = UDim2.fromOffset(440, 295) }, Enum.EasingStyle.Back)
tween(cardStroke, 0.5, { Transparency = 0 })

task.delay(0.3, function()
	tween(accent, 0.4, { BackgroundTransparency = 0 })
	tween(iconHolder, 0.4, { BackgroundTransparency = 0.8 })
	tween(icon, 0.4, { TextTransparency = 0 })
	tween(title, 0.5, { TextTransparency = 0 })
	task.wait(0.1)
	tween(subtitle, 0.5, { TextTransparency = 0 })
	tween(closeBtn, 0.5, { BackgroundTransparency = 0, TextTransparency = 0 })
	tween(divider, 0.5, { BackgroundTransparency = 0 })
	tween(brand, 0.6, { TextTransparency = 0 })
	tween(barBack, 0.4, { BackgroundTransparency = 0 })
	tween(bar, 0.4, { BackgroundTransparency = 0 })
end)

-- Auto close with countdown bar
if AUTO_CLOSE_SECONDS > 0 then
	task.delay(0.8, function()
		if closing then return end
		tween(bar, AUTO_CLOSE_SECONDS, { Size = UDim2.fromScale(0, 1) }, Enum.EasingStyle.Linear)
		task.wait(AUTO_CLOSE_SECONDS)
		close()
	end)
end
