function onCreate()
	-- background shit
	makeLuaSprite('white', 'stage/window/white', 0, 0)
	addLuaSprite('white', false)

	makeAnimatedLuaSprite('specialr', 'stage/window/Rteshu', 10,14)
	addAnimationByPrefix('specialr', 'black', 'Rblack', 24, false)
	addAnimationByPrefix('specialr', 'smile', 'Rsmile', 18, false)
	setProperty('specialr.alpha', 0.00001)
	addLuaSprite('specialr', false)

	makeAnimatedLuaSprite('border', 'stage/window/Black', 0,0)
	addAnimationByPrefix('border', 'black', 'Black', 12, false)
	setObjectCamera('border', 'hud')
	setProperty('border.alpha', 0.00001)
	addLuaSprite('border', false)

	makeAnimatedLuaSprite('winbg', 'stage/window/week2BG', 0,0)
	addAnimationByPrefix('winbg', 'idle', 'week2Background', 24, false)

	makeLuaSprite('win1', 'stage/window/window_1', 0, 0)

	makeAnimatedLuaSprite('line', 'stage/window/tiaowen', 0,0)
	addAnimationByPrefix('line', 'idle', 'tiaowen', 24, false)

	makeLuaSprite('win2', 'stage/window/window_2', 0, 0)

	makeAnimatedLuaSprite('warning', 'stage/window/Warning', 0,0)
	addAnimationByPrefix('warning', 'idle', 'warning', 24, false)

	addLuaSprite('winbg', true)
	addLuaSprite('win1', true)
	addLuaSprite('line', true)
	addLuaSprite('win2', true)
	addLuaSprite('warning', true)
end

local onetime = false
function onUpdate(elapsed)
	if not onetime then
		setProperty('boyfriend.visible', false)
		setProperty('gf.visible', false)
		onetime = true
	end
end

function onStepHit()
	if songName == 'Virus R' and dadName == 'r-window' then
		if curStep == 239 then
			setProperty('dad.alpha', 0)
			setProperty('specialr.alpha', 1)
			objectPlayAnimation('specialr', 'black', true)
		end
		if curStep == 256 then
			setProperty('dad.alpha', 1)
			setProperty('specialr.alpha', 0.00001)
		end
		if curStep == 768 then
			objectPlayAnimation('border', 'idle', true)
			setProperty('border.alpha', 1)
		end
		if curStep == 1471 then
			doTweenAlpha('border1', 'border', 0, 0.5)
		end
		if curStep == 1776 then
			setProperty('dad.alpha', 0.00001)
			setProperty('specialr.alpha', 1)
			objectPlayAnimation('specialr', 'black', true)
		end
		if curStep == 1792 then
			setProperty('dad.alpha', 1)
			setProperty('specialr.alpha', 0.00001)
		end
		if curStep == 2692 then
			objectPlayAnimation('border', 'idle', true)
			setProperty('border.alpha', 1)
			doTweenAlpha('border2', 'border', 0, 19)
		end
		if curStep == 2815 then
			setProperty('dad.alpha', 0.00001)
			setProperty('specialr.alpha', 1)
			objectPlayAnimation('specialr', 'smile', true)
		end
	end
end

function onBeatHit()
	objectPlayAnimation('winbg', 'idle', true)
	objectPlayAnimation('line', 'idle', true)
	objectPlayAnimation('warning', 'idle', true)
end

function onMoveCamera(focus)
	if focus == 'boyfriend' then
		setProperty('camFollow.x', getMidpointX("dad"))
		setProperty('camFollow.y', getMidpointY("dad"))
	elseif focus == 'dad' then
		setProperty('camFollow.x', getMidpointX("dad"))
		setProperty('camFollow.y', getMidpointY("dad"))
	end
end
