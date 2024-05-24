//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float u_znear;
uniform float u_zfar;

float LinearizeDepth(float depth, float znear, float zfar) {
    depth = depth * 2.0 - 1.0;
    return (2.0 * znear) / (zfar + znear - depth * (zfar - znear));
}

void main()
{
    float depth_value = texture2D(gm_BaseTexture, v_vTexcoord).r;
    
    depth_value = LinearizeDepth(depth_value, u_znear, u_zfar);
    
    // world space distance from the camera
    //depth_value = depth_value * (u_zfar - u_znear) + u_znear;
    
    gl_FragColor = vec4(depth_value, depth_value, depth_value, 1.0);
}
