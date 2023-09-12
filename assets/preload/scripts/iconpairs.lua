function onCreatePost()
	if (dadName == 'smash' and boyfriendName == 'bazil') then
		setProperty('iconP1.alpha', 0)
		setProperty('iconP2.alpha', 0)
		makeLuaSprite('smabaILose','icons/exceptions/smashbazillosing',640,620)
		setObjectCamera('smabaILose', 'camHUD')
		makeLuaSprite('smabaINormal','icons/exceptions/smashbazilnormal',640,620)
		setObjectCamera('smabaINormal', 'camHUD')
		addLuaSprite('smabaILose',true)
		addLuaSprite('smabaINormal',true)
		setProperty('smabaILose.alpha', 0)
		scaleObject('smabaINormal', 1/972 * 150, 1/972 * 150);
		scaleObject('smabaILose', 1/972 * 150, 1/972 * 150);
	end
end
function onUpdate(elapsed)
	if (dadName == 'smash' and boyfriendName == 'bazil') then
		hpp = getProperty('healthBar.percent')/100
		cf = getProperty('iconP1.animation.curAnim.curFrame')
		if cf == 1 then
		setProperty('smabaINormal.alpha', 0)
		setProperty('smabaILose.alpha', 1)
		end	
		if cf == 0 then
		setProperty('smabaINormal.alpha', 1)
		setProperty('smabaILose.alpha', 0)
		end	
		
		
		setProperty('smabaILose.x', 960 - 640 * hpp - 75)
		setProperty('smabaILose.y', 590)
		setProperty('smabaINormal.x', 960 - 640 * hpp - 75)
		setProperty('smabaINormal.y', 590)

		scaleObject('smabaINormal', 1/972 * 150, 1/972 * 150);
		scaleObject('smabaILose', 1/972 * 150, 1/972 * 150);

	end
	if dadName == 'faelo' and boyfriendName == 'bobbyplayer' then
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
	if dadName == 'bobby' and boyfriendName == 'faelo' then
		hpp = getProperty('healthBar.percent')
		cf = getProperty('iconP1.animation.curAnim.curFrame')
		quta = 25.7
		if cf == 1 then
		setProperty('iconP2.alpha', 0)
		setProperty('iconP1.offset.x', 1000)
		end	
		if cf == 0 then
		setProperty('iconP2.alpha', 1)
		setProperty('iconP1.offset.x', 0)
		end	
	end
	
end