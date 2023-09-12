#pragma header
vec2 uv = openfl_TextureCoordv.xy;
vec2 fragCoord = openfl_TextureCoordv*openfl_TextureSize;
vec2 iResolution = openfl_TextureSize;
uniform float iTime;
#define iChannel0 bitmap
#define texture flixel_texture2D
#define fragColor gl_FragColor
#define mainImage main

vec3 MakeMeYellow(vec4 color, float criteria)
{
    float bright = 0.5 * (color.r + color.g);
	if(bright > criteria)
    {
		return vec3(
		1,
		0,
		0.20);
	}
	else
	{
		return vec3(0.0,0.0,0.0);
	}
    
}

void mainImage()
{
	vec4 texColor = texture(iChannel0, uv);
	texColor.rgb = MakeMeYellow(texColor,0.05);
	fragColor = texColor;
}