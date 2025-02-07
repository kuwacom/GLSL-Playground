#extension GL_OES_standard_derivatives : enable

precision highp float;

uniform float time;
uniform vec2 mouse;
uniform vec2 resolution;

void main( void ) {

    vec2 position = ( gl_FragCoord.xy / resolution.xy ) + mouse / 4.0;

    vec2 uv = gl_FragCoord.xy / resolution;
    vec2 aspectRatio = vec2(resolution.x / resolution.y, 1.0);

    gl_FragColor = vec4(vec3(mouse - uv, sin(time)), 1.0);
}