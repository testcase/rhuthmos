#version 330 core

in jit_PerVertex {
	vec2 texdim0;
	vec2 texcoord0;
	vec2 texdim1;
	vec2 texcoord1;
} jit_in;


layout (location = 0) out vec4 outColor;


struct Surface {
  	float sd;
 	vec4 color;
};

uniform sampler2DRect tex0;
uniform sampler2DRect tex1;
uniform float time;
uniform float circlescale;
uniform float blur;

vec2 opRep( vec2 p, vec2 spacing ) {
	return mod(p,spacing) - 0.5*spacing;
}

Surface sdCircle( vec2 p,  float radius, vec2 f ) 
{	
	float r = texture(tex1,f).r;
    return Surface(length(p)-radius, vec4(vec3(r), 1.);
}




void main(void) {
	vec2 snorm = (-jit_in.texdim0.xy + 2.0 * jit_in.texcoord0) / jit_in.texdim0.y;
	snorm *= vec2(1, -1.);
	vec2 tnorm = jit_in.texdim1.xy / jit_in.texcoord1;
	
	Surface c = sdCircle(opRep(snorm,vec2(.098, .1), circlescale, tnorm));
	
	c.sd = 1 - clamp(c.sd*blur, 0., 1.);
	
	vec4 color = vec4(0,0,1,1)*c.sd;
	

	outColor = color;
}




// 36 x 20