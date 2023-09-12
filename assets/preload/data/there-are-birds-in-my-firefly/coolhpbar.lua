function onCreate()

end
function onUpdate(elapsed)
--	setProperty('gf.alpha', 0)
	songPos = getSongPosition()
	hpp = getProperty('healthBar.percent')
	cf = getProperty('iconP2.animation.curAnim.curFrame')
	quta = 25.7
	if cf == 1 then
	setProperty('iconP1.alpha', 0)
	setProperty('iconP2.offset.x', 1000)
	end	
	if cf == 0 then
	setProperty('iconP1.alpha', 1)
	setProperty('iconP2.offset.x', 0)
	end	
	
	
end