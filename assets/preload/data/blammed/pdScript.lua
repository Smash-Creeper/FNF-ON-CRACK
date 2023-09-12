local theChoice = "gb"
function onCreate()
    makeLuaSprite("Gaussian Blur Simple and Fast")
    makeGraphic("shaderImage", screenWidth, screenHeight)
    setSpriteShader("shaderImage", "Gaussian Blur Simple and Fast")
--    setShaderFloat("Gaussian Blur Simple and Fast", "Directions", 16.0)
--    setShaderFloat("Gaussian Blur Simple and Fast", "Quality", 0.0)
--    setShaderFloat("Gaussian Blur Simple and Fast", "Size", 0.0)
    runHaxeCode([[
        choice = new Character(game.dadGroup.x + 0 , game.dadGroup.y + 0, ']]..theChoice..[[');
		choice.scrollFactor.set(game.dadGroup.scrollFactor.x, game.dadGroup.scrollFactor.y);
		game.addBehindDad(choice);


        var arr:Array<String> = PlayState.instance.runtimeShaders.get("Gaussian Blur Simple and Fast");
        choice.shader = new FlxRuntimeShader(arr[0], arr[1]);
        choice.scale.x += 0.15;
        choice.scale.y += 0.15;
        choice.alpha -= 0.4;

        game.boyfriend.y += 130;
        

    ]])
end

function onCreatePost()
    runHaxeCode([[
        game.camFollowPos.y += 430;
    ]])
end
function onUpdatePost()
    
    runHaxeCode([[
        if(!choice.stunned && game.dad.animation.curAnim.name != 'idle'){
            choice.playAnim(game.dad.animation.curAnim.name, false);
        }
        choice.color = game.dad.color
    ]])
end

function onBeatHit()
    if curBeat % 2 == 0 then
        runHaxeCode([[
//        if(!choice.stunned){
            choice.dance();
//        }
        ]])
    end
end