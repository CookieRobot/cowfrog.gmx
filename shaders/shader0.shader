// Shader
varying vec2 v_vTexcord;
uniform float index;
uniform sampler2D palTexture;

void main(){
	vec4 col = texture2D(gm_BaseTexture, v_vTexcoord);
	col.rgb = texture2D(palTexture, vec2(col.x, index)).rgb;
	col.rgb *= col.a;

	gl_FragColor = col;
}
//######################_==_YOYO_SHADER_MARKER_==_######################@~
//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
}

