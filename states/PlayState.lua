PlayState = Class{__includes = BaseState}

function PlayState:init()
	titleRED = 255
	titleGREEN = 100
	titleBLUE = 255
	redDESCENDING = true
	greenDESCENDING = true
	blueDESCENDING = true
	scale1 = 4
	scale2 = 3
	scale3 = 2
end

function PlayState:update(dt)
	---[[

	--RED DESCENDING
	if redDESCENDING then
		titleRED = titleRED - 1 / scale1
		if titleRED < 0 then
			titleRED = 0
			redDESCENDING = false
		end
	else
		titleRED = titleRED + 1 / scale1
		if titleRED > 255 then
			titleRED = 255
			redDESCENDING = true
		end
	end

		if greenDESCENDING then
		titleGREEN = titleGREEN - 1 / scale2
		if titleGREEN < 0 then
			titleGREEN = 0
			greenDESCENDING = false
		end
	else
		titleGREEN = titleGREEN + 1 / scale2
		if titleGREEN > 255 then
			titleGREEN = 255
			greenDESCENDING = true
		end
	end
--BLUE
		if blueDESCENDING then
		titleBLUE = titleBLUE - 1 / scale3
		if titleBLUE < 0 then
			titleBLUE = 0
			blueDESCENDING = false
		end
	else
		titleBLUE = titleBLUE + 1 / scale3
		if titleBLUE > 255 then
			titleBLUE = 255
			blueDESCENDING = true
		end
	end

--]]

	--[[

	if titleGREEN < 1 then
		titleGREEN = 255
	else
		titleGREEN = titleGREEN - 1
	end

	if titleBLUE < 1 then
		titleBLUE = 255
	else
		titleBLUE = titleBLUE - 1.5
	end
	--]]
end


function PlayState:render()
	love.graphics.clear(100/255, 100/255, 100/255, 255/255)
	love.graphics.setFont(titleFont)
	love.graphics.setColor(titleRED/255, titleGREEN/255, titleBLUE/255, 255/255)
	love.graphics.printf('MUSAK', 0, 100, VIRTUAL_WIDTH, 'center')

	--[[
	love.graphics.setColor(0, 0, 0)
	love.graphics.setFont(pixelFont)
	love.graphics.print(table.concat({
		'',
		'',
		'titleRED: '.. titleRED,
		'titleGREEN: '.. titleGREEN,
		'titleBLUE: '.. titleBLUE,
	}, '\n'))

--]]
end 

