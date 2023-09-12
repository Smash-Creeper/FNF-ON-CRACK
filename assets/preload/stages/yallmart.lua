circoffx = 0
circoffy = 150

daddy = 0
dadud = false

instacam = false

function onCreate()
	-- background shit
	makeLuaSprite('bg', 'stages/yallmart/yallmart', -0, -0);
	setScrollFactor('bg', 1, 1);
	scaleObject('bg', 1.1, 1.1);
	addLuaSprite('bg', false);
	setProperty('bg.offset.x', 4998/2);
	makeLuaSprite('lights', 'stages/yallmart/yallmartlights', -0, -0);
	setScrollFactor('lights', 1, 1);
	scaleObject('lights', 1.1, 1.1);
	addLuaSprite('lights', true);
	setProperty('lights.offset.x', 4998/2);
end
function onUpdate(elapsed)
--	setProperty('gf.alpha', 0)
	songPos = getSongPosition()
	
end