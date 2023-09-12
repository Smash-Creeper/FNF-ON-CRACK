function onCreate()
	setPropertyFromClass('ClientPrefs', 'hideHud', true)
end
function onUpdate(elapsed)
--	setProperty('gf.alpha', 0)
	songPos = getSongPosition()
	if curStep == 404 then
		doTweenAngle('CA','camGame',360 * 7,5.6,'sineInOut')
		doTweenZoom('CZ','camGame',0,5.6,'sineInOut')
		doTweenAngle('HCA','camHud',360 * 7,5.6,'sineInOut')
		doTweenZoom('HCZ','camHud',0,5.6,'sineInOut')
		doTweenAngle('OCA','camOther',360 * 7,5.6,'sineInOut')
		doTweenZoom('OCZ','camOther',0,5.6,'sineInOut')
		cameraFade('camGame','000000',5.5,true)
	elseif curStep == 447 then
		doTweenAlpha('goodbyefaelo', 'FaeloTribute', 1, 2.5, 'sineOut')
--		setProperty('cameraZoomOnBeat',0)
	setPropertyFromClass('ClientPrefs', 'hideHud', false)
	end
end
function onDestroy()
    setPropertyFromClass('ClientPrefs', 'hideHud', false)
end