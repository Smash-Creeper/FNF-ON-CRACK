circoffx = 0
circoffy = 150

daddy = 0
dadud = false

instacam = false

function onCreate()
	-- background shit
	makeLuaSprite('bg', 'stages/bar/bar', -350, -0);
	setScrollFactor('bg', 1, 1);
	scaleObject('bg', 1.1, 1.1);
	addLuaSprite('bg', false);
end
function onUpdate(elapsed)
--	setProperty('gf.alpha', 0)
	songPos = getSongPosition()
	
end