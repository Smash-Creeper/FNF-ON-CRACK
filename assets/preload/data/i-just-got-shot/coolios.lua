function onCreate()

end
function onCreatePost()
	setProperty('gf.alpha',0)
end
function onUpdate(elapsed)

end
function onStepHit(elapsed)
	if curStep == 236 then
	doTweenZoom('zoomiemoment', 'camGame', 1.5, 1, 'sineOut')
	end
	if curStep == 240 then
	doTweenAlpha('bgfadecool', 'bg', 0, 1, 'sineOut')
	end
	if curStep == 244 then
	doTweenAlpha('gfafd', 'gf', 0, 0.75, 'sineOut')
	end
	if curStep == 236 then
	setProperty('defaultCamZoom', 1.5)
	end
	if curStep == 255 then
	setProperty('defaultCamZoom', 1)
	doTweenZoom('zoomiemoment', 'camGame', 1, 0.05, 'linear')
	doTweenAlpha('bgfadecool', 'bg', 1, 0.05, 'linear')
	doTweenAlpha('gfafd', 'gf', 1, 0.05, 'linear')
	end
end