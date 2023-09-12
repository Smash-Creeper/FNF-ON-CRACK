circoffx = 0
circoffy = 150

daddy = 0
dadud = false

instacam = false

disscale = 2
textooffset = 0

function onCreate()
	-- background shit
	makeLuaSprite('FaeloTribute', 'stages/discord/FFDFaeloTribute', 420, 100);
	setScrollFactor('FaeloTribute', 0, 0);
	scaleObject('FaeloTribute', 1/1030 * 500, 1/1030 * 500);
	addLuaSprite('FaeloTribute', true);
	setObjectCamera('FaeloTribute', 'camHUD')
	setProperty('FaeloTribute.alpha', 0)
	makeLuaSprite('texto', 'stages/discord/FFDText', 0, -200);
	setScrollFactor('texto', 1, 3);
	scaleObject('texto', disscale, disscale);
	addLuaSprite('texto', false);
	makeLuaSprite('channels', 'stages/discord/FFDChannels', 0, -2246);
	setScrollFactor('channels', 1, -1);
	scaleObject('channels', disscale, disscale);
	addLuaSprite('channels', false);
	makeLuaSprite('discordhub', 'stages/discord/FFDHud', 0, 0);
	setScrollFactor('discordhub', 1, 1);
	scaleObject('discordhub', disscale, disscale);
	addLuaSprite('discordhub', false);
	makeLuaSprite('discordpeople', 'stages/discord/FFDPeople', 0, 0);
	setScrollFactor('discordpeople', 1, 1);
	scaleObject('discordpeople', disscale, disscale);
	addLuaSprite('discordpeople', false);
end

function onCreatePost()
	setScrollFactor('gf', 1, 3);
end

function onUpdate(elapsed)
	songPos = getSongPosition()
end