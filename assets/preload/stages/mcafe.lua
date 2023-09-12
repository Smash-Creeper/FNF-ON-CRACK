circoffx = 0
circoffy = 150

daddy = 0
dadud = false

instacam = false

function onCreate()
	-- background shit
	makeLuaSprite('bg', 'stages/mcafe/mcafe', -900, -350);
	setScrollFactor('bg', 1, 1);
	scaleObject('bg', 1.6, 1.6);
	addLuaSprite('bg', false);
end

function onCreatePost()
	if dadName == 'gb' then
		scaleObject('dad', getProperty('dad.scale.x') * 1.3, getProperty('dad.scale.y') * 1.3);
	end
end

function onUpdate(elapsed)
	setProperty('gf.alpha', 0)
	songPos = getSongPosition()
end