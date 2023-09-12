function onCreatePost()
	-- background shit
	t1 = 0
	t2 = 0
	setProperty('gf.alpha',0)
--	setProperty('defaultCamZoom',0.1)
end

function onStepHit(elapsed)
	if curBeat >= 63.6 and t1 == 0 then
		setProperty('defaultCamZoom', 1.25)
		doTweenZoom('czoom','camGame',1.25,0.18,'linear')
		doTweenAlpha('bag','bg',0,0.18,'linear')
		doTweenAlpha('bsaaaf','dad',0,0.18,'linear')
		t1 = 1
	end
	if curBeat >= 97 and t2 == 0 then
		setProperty('defaultCamZoom', 0.75)
		doTweenZoom('czoom','camGame',0.75,1.5,'linear')
		doTweenAlpha('bag','bg',1,1.5,'linear')
		doTweenAlpha('bsaaaf','dad',1,1.5,'linear')
		t2 = 1
	end
	if curBeat >= 64 then
		objectPlayAnimation('dad','Shock',true)
	end
end