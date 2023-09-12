circoffx = 0
circoffy = 150

daddy = 0
dadud = false

instacam = false

function onCreate()
	-- background shit
	makeLuaSprite('bg', 'pixel', -1000, -1500);
	setScrollFactor('bg', 0, 0);
	scaleObject('bg', 3000, 3000);
	addLuaSprite('bg', false);
end
function onCreatePost()
	setProperty('dad.y', getProperty('boyfriend.y'))
end
function onUpdate(elapsed)
	setProperty('gf.alpha', 0)
	songPos = getSongPosition()
	
end