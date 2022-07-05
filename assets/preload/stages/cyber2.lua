function onCreate()
	-- background shit
	makeLuaSprite('bottom', 'stage/cyber2/bottomcolor', 0, 0)
	addLuaSprite('bottom', false)

	makeLuaSprite('behind', 'stage/cyber2/behindwall', 0, 0)
	addLuaSprite('behind', false)

	makeLuaSprite('wall', 'stage/cyber2/wall', 0, 0)
	addLuaSprite('wall', false)

	makeLuaSprite('floor', 'stage/cyber2/floor', 0, 0)
	addLuaSprite('floor', false)

	makeLuaSprite('tv', 'stage/cyber2/TV', 0, 0)
	addLuaSprite('tv', false)

	makeLuaSprite('screen', 'stage/cyber2/screen', 0, 0)
	addLuaSprite('screen', true)

	makeLuaSprite('line', 'stage/cyber2/blueline', 0, 0)
	addLuaSprite('line', true)

	makeAnimatedLuaSprite('mute', 'stage/cyber2/mute', 0, 200)
	addAnimationByPrefix('mute', 'idle', 'jingyin', 24)
	setGraphicSize('mute', getProperty('mute.width') * 0.5)
	setObjectCamera('mute', 'hud')
	setProperty('mute.alpha', 0.00001)
	addLuaSprite('mute', true)

	makeAnimatedLuaSprite('blue', 'stage/cyber2/blue', 0, 0)
	addAnimationByPrefix('blue', 'idle', 'texiao', 24)
	objectPlayAnimation('blue', 'idle')
	setObjectCamera('blue', 'hud')
	setProperty('blue.alpha', 0.00001)
	addLuaSprite('blue', true)
end

function onMoveCamera(focus)
	if focus == 'boyfriend' then
		setProperty('camFollow.y', getMidpointY("boyfriend") - 120)
	end
end

function onBeatHit()
	objectPlayAnimation('mute', 'idle', true)
end

function onStepHit()
	if songName == 'The battle of robbery' and dadName == 'acesora' then
		if curStep == 580 then
			characterPlayAnim('dad', 'smile')
		end
		if curStep == 588 then
			setProperty('blue.alpha', 1)
			setProperty('mute.alpha', 1)
		end
		if curStep == 943 then
			setProperty('blue.alpha', 0.00001)
			setProperty('mute.alpha', 0.00001)
		end
	end
end
