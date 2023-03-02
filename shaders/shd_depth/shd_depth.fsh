varying float v_DistanceToCamera;

void main() {
    gl_FragColor = vec4(v_DistanceToCamera, 0, 0, 1);
}