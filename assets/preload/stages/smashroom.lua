scale = 1
gridx = 0
gridy = 0
gridspd = 5
gridscale = 1
gridwidth = 582*gridscale
gridheight = 484*gridscale
gridxcount = 6
gridycount = 6
gridxoffset = -1200
gridyoffset = 100
gridcurstate = 0
gridstates = {'idle','guy'}

gridcolor = 'FFFFFF'--'7803ad'
function onCreate()

	for gridspotx = 0, gridxcount do
		for gridspoty = 0, gridycount do
			makeAnimatedLuaSprite('coolgrid'..gridspotx..'_'..gridspoty, 'stages/smashroom/glitchguy', 0 + gridspotx*gridwidth, 0 + gridspoty * gridheight);
			addAnimationByPrefix('coolgrid'..gridspotx..'_'..gridspoty,'guy','Glitch',24,false)
			addAnimationByPrefix('coolgrid'..gridspotx..'_'..gridspoty,'idle','Glitch Guy',24,false)
			setScrollFactor('coolgrid'..gridspotx..'_'..gridspoty, 1, 1);
			scaleObject('coolgrid'..gridspotx..'_'..gridspoty, gridscale , gridscale);
			addLuaSprite('coolgrid'..gridspotx..'_'..gridspoty, false);	
			doTweenColor('coolgrid'..gridspotx..'_'..gridspoty..'colormoment','coolgrid'..gridspotx..'_'..gridspoty,gridcolor,0.0000001,'linear')
			objectPlayAnimation('coolgrid'..gridspotx..'_'..gridspoty, 'guy', true)
		end
	end

	-- background shit
	makeLuaSprite('pback', 'stages/smashroom/smashroomangleportalback', 0 - (1920/3) * scale, -0);
	setScrollFactor('pback', 1, 1);
	scaleObject('pback', scale, scale);
--	setProperty('pback.alpha', 0)
	addLuaSprite('pback', false);
	makeLuaSprite('bg', 'stages/smashroom/smashroomangle', 0 - (1920/3) * scale, -0);
	setScrollFactor('bg', 1, 1);
	scaleObject('bg', scale, scale);
	addLuaSprite('bg', false);
	
	
	
end
function onCreatePost()
	setObjectOrder('gf',getObjectOrder('dad')+4)
	doTweenColor('dadcolormoment','dad','AAAAAA',0.0000001,'linear')
	setProperty('dad.alpha', 0)
end
function onUpdate(elapsed)
	if (songName == "against-the-sound") then
		if curStep == 0 then
		setProperty('dad.alpha', 0)
		end
		if curStep == 462 then
			doTweenAlpha('pbackbye','pback',0,4,'sineOut')
			doTweenAlpha('gfbye','gf',0,4,'sineOut')
			doTweenAlpha('bfbye','boyfriend',0,4,'sineOut')
			doTweenAlpha('cambye','camHUD',0,4,'sineOut')
			setProperty('dad.alpha', 0)
		end
		if curStep == 500 then
			triggerEvent("Change Character","dad","Variant 1")
		end
		if curStep == 504 then
		doTweenZoom('litzoom','camGame',0.7,0.8,'linear')
		triggerEvent("Camera Follow Pos","330","600")
		end
		if curStep == 512 then
		doTweenZoom('litzoom','camGame',4,0.2,'sineOut')
		triggerEvent("Camera Follow Pos","330","300")
		end
		if curStep == 514 then
			setProperty('bg.alpha', 0)
			doTweenZoom('litzoom','camGame',1,0.6,'sineOut')
			
		triggerEvent("Camera Follow Pos","330","500")
		end
		if curStep == 576 then
			gridcurstate = 1
			
			doTweenColor('dadcolormoment','dad','242424',10,'sineOut')
		end
		if curStep == 640 then
	--		gridspd = 0
			setProperty('dad.alpha', 1)
		end
	end
	songPos = getSongPosition()
	gamefps = getPropertyFromClass('ClientPrefs', 'framerate')
	local framedif = gamefps / 60
	gridx = gridx - gridspd / framedif
	gridy = gridy - gridspd / framedif
	local tgridx = (gridx * -1) % gridwidth*1
	local tgridy = (gridy * -1) % gridheight*1
	gridx = tgridx * -1 
	gridy = tgridy * -1 
	
	for gridspotx = 0, gridxcount do
		for gridspoty = 0, gridycount do
			setProperty('coolgrid'..gridspotx..'_'..gridspoty..'.x',gridx + gridspotx*gridwidth + gridxoffset);
			setProperty('coolgrid'..gridspotx..'_'..gridspoty..'.y',gridy + gridspoty * gridheight + gridyoffset);
			objectPlayAnimation('coolgrid'..gridspotx..'_'..gridspoty, gridstates[gridcurstate], true)
		end
	end
end