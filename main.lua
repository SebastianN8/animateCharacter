-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Created by: Sebastian N
-- Created on: May 7
--
-- This program animates a character
-----------------------------------------------------------------------------------------

-- Hide display status bar
display.setStatusBar(display.HiddenStatusBar)

centerX = display.contentWidth * 0.5
centerY = display.contentHeight * 0.5

-- The idle ninja elements
local sheetsOptionsIdle = {
	width = 232,
	height = 439,
	numFrames = 10
}
local sheetIdleNinja = graphics.newImageSheet('./Assets/SpriteSheets/ninjaBoyIdle.png', sheetsOptionsIdle)

-- The walking robot elements
local sheetOptionsWalk = {
	width = 567,
	height = 556,
	numFrames = 8
}
local sheetRunRobot = graphics.newImageSheet('./Assets/SpriteSheets/robotRun.png', sheetOptionsWalk)


-- Sequence data
local sequence_data = {
	name = 'idle',
	start = 1,
	count = 10,
	time = 800,
	loopCount = 0,
	sheet = sheetIdleNinja
},
{
	name = 'walk',
	start = 1,
	count = 8,
	time = 800,
	loopCount = 0,
	sheet = sheetRunRobot
}

-- Animation for the ninja
local ninja = display.newSprite(sheetIdleNinja, sequence_data)
ninja.x = centerX
ninja.y = centerY

ninja:play()

local robot = display.newSprite(sheetRunRobot, sequence_data)
robot.x = centerX * 1.5
robot.y = centerY 

robot:play()