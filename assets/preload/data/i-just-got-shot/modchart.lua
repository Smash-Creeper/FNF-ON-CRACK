local trpop
local tim = 0
local tilt = true
function onCreate()
	
end
function onCreatePost()
	
end
function onUpdate(elapsed)
	
end
function onStepHit(elapsed)
	
end

function onBeatHit(elapsed)
	
end

function strumNoteFlexTween(note, property, vari, value, dur, ease)
---!!!NOTE: WHEN USING PROPERTY MAKE SURE A "." IS AT THE BEGINING OF THE VARIABLE NO MATTER WHAT (unless blank)!!!---
		trpop = ""
		if not (property == '') then
			trprop = property
		end
	debugPrint(tostring(property))
	debugPrint(tostring(trprop))
	runHaxeCode([[
		var note:Int = ]]..note..[[;
		var testicle:StrumNote = PlayState.instance.strumLineNotes.members[note % PlayState.instance.strumLineNotes.length];
		FlxTween.tween(testicle]]..property..[[, {]]..vari..[[: ]]..value..[[}, ]]..dur..[[, {ease: FlxEase.]]..ease..[[});
		]])
end
function varFlexTween(vari, value, dur, ease)
---!!!NOTE: WHEN USING PROPERTY MAKE SURE A "." IS AT THE BEGINING OF THE VARIABLE NO MATTER WHAT (unless blank)!!!---
		trpop = ""
		if not (property == '') then
			trprop = property
		end
	debugPrint(tostring(property))
	debugPrint(tostring(trprop))
	runHaxeCode([[
		var litty:StrumNote = PlayState.instance]]..[[;
		FlxTween.tween(litty, {]]..vari..[[: ]]..value..[[}, ]]..dur..[[, {ease: FlxEase.]]..ease..[[});
		]])
end

function onTimerCompleted(tag, loops, loopsleft)
	for i = 0, 3 do
		if tag == "byeoppnote"..i then
			strumNoteFlexTween(i,'','y','720','1.5','sineIn')
			strumNoteFlexTween(i,'','alpha','0','1','sineIn')
		end
	end
	for i = 4, 7 do
		if tag == "coolslide"..i then
			strumNoteFlexTween(i,'','x',defPosToFlex('x',i-4)-320,'1.5','sineOut')
		end
	end
end

function defPosToFlex(xy,num)
	if xy == 'x' then
		if num == 0 then
		return defaultPlayerStrumX0
		elseif num == 1 then
		return defaultPlayerStrumX1
		elseif num == 2 then
		return defaultPlayerStrumX2
		elseif num == 3 then
		return defaultPlayerStrumX3
		end
	elseif xy == 'y' then
		if num == 0 then
		return defaultPlayerStrumY0
		elseif num == 1 then
		return defaultPlayerStrumY1
		elseif num == 2 then
		return defaultPlayerStrumY2
		elseif num == 3 then
		return defaultPlayerStrumY3
		end
	end
end
function toggleCopyAngle(tf)
	for i = 0, getProperty('unspawnNotes.length')-1 do
		setPropertyFromGroup('unspawnNotes', i, 'copyAngle', tf); 
	end
	for i = 0, getProperty('notes.length')-1 do
		setPropertyFromGroup('notes', i, 'copyAngle', tf); 
	end
end

function setPropertyNotes(prop, value, dirfilter)
	if dirfilter == -1 then
		for i = 0, getProperty('unspawnNotes.length')-1 do
			setPropertyFromGroup('unspawnNotes', i, prop, value); 
		end
		for i = 0, getProperty('notes.length')-1 do
			setPropertyFromGroup('notes', i, prop, value); 
		end
	else
			for i = 0, getProperty('unspawnNotes.length')-1 do
				setPropertyFromGroup('unspawnNotes', i, prop, value); 
			end
			for i = 0, getProperty('notes.length')-1 do
				setPropertyFromGroup('notes', i, prop, value); 
			end
	end
end