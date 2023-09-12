circoffx = 0
circoffy = 150

daddy = 0
dadud = false

instacam = false

function onCreate()
	-- background shit
	makeLuaSprite('road', 'stages/road/road', -350, -0);
	setScrollFactor('road', 1, 1);
	scaleObject('road', 1.1, 1.1);
	addLuaSprite('road', false);
	makeLuaSprite('filter', 'pixel', -350, -0);
	setScrollFactor('filter', 1, 1);
	scaleObject('filter', 1000, 1000);
	addLuaSprite('filter', false);
	doTweenColor('cfilter','filter','000000',0.000000000000000000001,'linear')
	setProperty('filter.alpha', 1);
	
	makeLuaSprite('yellowglow', 'stages/road/roadfilter', -400, -350);
	setScrollFactor('yellowglow', 0, 0);
	scaleObject('yellowglow', 1.25, 1.25);
--	addLuaSprite('yellowglow', true);
	doTweenColor('cbf','boyfriend','FFFF0000',0.000000000000000000001,'linear')
	doTweenColor('cgf','gf','FFFF0000',0.000000000000000000001,'linear')
	doTweenColor('cdad','dad','FFFF0000',0.000000000000000000001,'linear')
end
function onCreatePost(elapsed)
	doTweenColor('cbf','boyfriend','e6e2dc',0.000000000000000000001,'linear')
	doTweenColor('cgf','gf','e6e2dc',0.000000000000000000001,'linear')
	doTweenColor('cdad','dad','e6e2dc',0.000000000000000000001,'linear')
end
function onUpdate(elapsed)
--	setProperty('gf.alpha', 0)
	songPos = getSongPosition()
	
	setProperty('filter.alpha', 0.2);
--	setProperty('yellfilter.alpha', 0.0);
end