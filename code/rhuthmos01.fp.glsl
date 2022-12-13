#version 330 core

#define PI 3.1415926536
#define TWOPI 6.2831853072

in jit_PerVertex {
	vec2 texdim0;
	vec2 texcoord0;
	vec2 texdim1;
	vec2 texcoord1;
} jit_in;


layout (location = 0) out vec4 outColor;


struct Surface {
  	float sd;
 	vec3 col;
};

uniform sampler2DRect tex0;
uniform sampler2DRect tex1;
uniform float time;
uniform float circlescale;


vec2 opRep( vec2 p, vec2 spacing ) {
	return mod(p,spacing) - 0.5*spacing;
}

float sdCircle( in vec2 p, in ivec2 f ) 
{	
	float r = texelFetch(tex1,f).r*circlescale;
    return length(p)-r;
}




void main(void) {
	vec2 snorm = (-jit_in.texdim0.xy + 2.0 * jit_in.texcoord0) / jit_in.texdim0.y;
	snorm *= vec2(1., -1.);
	vec2 cell = abs(jit_in.texcoord1 - vec2(0,0 ));
	

	vec2 pp = snorm;

	//Surface d = Surface(sdCircle(opRep(pp, vec2(.1,.1)), ivec2(cell)), vec3(.1,.1,1.));
	Surface d = Surface(sdCircle(opRep(pp, vec2(.2,.2)), ivec2(cell)), vec3(.1,.1,1.));

	//vec3 col2 = turbo_map(d.sd);
	vec3 col2 = (d.sd>0.0) ? vec3(0,0,0) : d.col;
	//outColor = vec4(.2,.5,.8,1.);

	outColor = vec4(col2,1.);
}




// 36 x 20