ondrugs = 0
gbcount = 32
function onCreatePost()
	for i = 0, gbcount do 
		makeAnimatedLuaSprite('gbman'..i,'characters/gayboi 3',-750 + (300 * i),getProperty('dad.y') - 100)
		addAnimationByPrefix('gbman'..i, 'idledance', 'gb ialt', 24, true)
		setScrollFactor('gbman' ..i, 0, 1);
		scaleObject('gbman' ..i, 1, 1);
		addLuaSprite('gbman' ..i, false);
		objectPlayAnimation('gbman'..i, 'idledance', true)
		setProperty('gbman'..i..'.alpha', 0)
		setObjectOrder('gbman'..i,getObjectOrder('gfGroup')+1)
	end
	setObjectOrder('dadGroup',100)
end
function onUpdate(elapsed)
	songPos = getSongPosition()
	if curStep >= 64 then
		for i = 0, gbcount do 
			if(getProperty('gbman'..i..'.x')) > -750 + (300 * (gbcount)) then
				setProperty('gbman'..i..'.x',-750)
				cancelTween('gbman'..i..'shmove')
			end
		end
	end
	if curStep >= 64 and curStep <= 128 then
		objectPlayAnimation('gf','Shock',true)
	end
end
function onStepHit(elapsed)
	if curStep == 64 then
		for i = 0, gbcount do 
			setProperty('gbman'..i..'.alpha', 1)
		end
		objectPlayAnimation('gf','Shock',true)
		setProperty('bg.alpha', 0)
	end
	if curStep >= 64 and curStep <= 128 and curStep % 4 == 3 then
		for i = 0, gbcount do 
			doTweenX('gbman'..i..'shmove', 'gbman'..i, getProperty('gbman'..i..'.x') + 300, 0.16, 'sineOut')
		end
	end
	if curStep == 128 then
		for i = 0, gbcount do
			setProperty('gbman'..i..'.alpha', 0)
		end
		setProperty('bg.alpha', 1)
	end
end