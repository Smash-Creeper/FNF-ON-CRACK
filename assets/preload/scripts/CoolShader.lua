
local shaderName = "null"
function onCreate()

	if curStage == 'road' then
	shaderName = "Gaussian Blur Simple and Fast"
	end

	if not (shaderName == "null") then
		shaderCoordFix() -- initialize a fix for textureCoord when resizing game window

		makeLuaSprite(shaderName)
		makeGraphic("shaderImage", screenWidth, screenHeight)

	   setSpriteShader("shaderImage", shaderName)


		runHaxeCode([[
			var shaderName = "]] .. shaderName .. [[";
			
			game.initLuaShader(shaderName);
			
			var shader0 = game.createRuntimeShader(shaderName);
			game.camGame.setFilters([new ShaderFilter(shader0)]);
			game.getLuaObject(shaderName).shader = shader0; // setting it into temporary sprite so luas can set its shader uniforms/properties
			game.camGame.setFilters([new ShaderFilter(game.getLuaObject(shaderName).shader)]);
			return;
		]])
	end
end

function onUpdate(elapsed)
	if not (shaderName == "null") then
		setShaderFloat(shaderName, "iTime", os.clock())
	end
 end

function shaderCoordFix()
	if not (shaderName == "null") then
		runHaxeCode([[
			resetCamCache = function(?spr) {
				if (spr == null || spr.filters == null) return;
				spr.__cacheBitmap = null;
				spr.__cacheBitmapData = null;
			}
			
			fixShaderCoordFix = function(?_) {
				resetCamCache(game.camGame.flashSprite);
				resetCamCache(game.camHUD.flashSprite);
				resetCamCache(game.camOther.flashSprite);
			}
		
			FlxG.signals.gameResized.add(fixShaderCoordFix);
			fixShaderCoordFix();
			return;
		]])
		
		local temp = onDestroy
		function onDestroy()
			runHaxeCode([[
				FlxG.signals.gameResized.remove(fixShaderCoordFix);
				return;
			]])
			if (temp) then temp() end
		end
	end
end