attribute vec3 in_Position;                  // (x,y,z)
//attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~
//
// Simple passthrough fragment shader
//
/*
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
}
*/

//if you want to mess with hikagi's shader delete everything above this 
//point and uncomment the below code
//I will upload the rest of hikagi's stuff in #cowfrog-downloads.

// Shader
varying vec2 v_vTexcoord;
uniform float index;
uniform sampler2D palTexture;

void main(){
    vec4 col = texture2D(gm_BaseTexture, v_vTexcoord);
    col.rgb = texture2D(palTexture, vec2(col.x, index)).rgb; //col.x + 1.0 / 16.0
    col.rgb *= col.a;
    
    gl_FragColor = col;
}


