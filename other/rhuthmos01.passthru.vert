#version 330 core

in vec3 position;
in vec2 texcoord;

out jit_PerVertex {
	vec2 texdim0;
	vec2 texcoord0;
	vec2 texdim1;
	vec2 texcoord1;
} jit_out;

uniform mat4 modelViewProjectionMatrix;
uniform mat4 textureMatrix0;
uniform mat4 textureMatrix1;

void main(void) {
	gl_Position = modelViewProjectionMatrix*vec4(position, 1.);
	jit_out.texcoord0 = vec2(textureMatrix0 * vec4(texcoord, 0., 1.));
	jit_out.texdim0 = vec2(abs(textureMatrix0[0][0]), abs(textureMatrix0[1][1]));
	jit_out.texcoord1 = vec2(textureMatrix1 * vec4(texcoord, 0., 1.));
	jit_out.texdim1 = vec2(abs(textureMatrix1[0][0]), abs(textureMatrix1[1][1]));
}