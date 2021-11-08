varying float v_DistanceToCamera;

void main() {
    vec3 depthColor = vec3(v_DistanceToCamera / 1000.0);
    gl_FragColor = vec4(depthColor, 1);
}