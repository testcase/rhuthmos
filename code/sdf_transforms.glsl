//sdf_Transforms These are taken from a combination of MichaelPohoreski's RayMarching how to here: https://www.shadertoy.com/view/XllGW4, and Inigo Quilez's https://www.iquilezles.org/www/articles/distfunctions/distfunctions.htm.



vec4 opElongate( in vec3 p, in vec3 h )
{
    //return vec4( p-clamp(p,-h,h), 0.0 ); // faster, but produces zero in the interior elongated box
    
    vec3 q = abs(p)-h;
    return vec4( max(q,0.0), min(max(q.x,max(q.y,q.z)),0.0) );
}

mat2 Rotate(float a) {
    float s = sin(a);
    float c = cos(a);
    return mat2(c,-s,s,c);
}

mat3 rot3Dmat(vec3 angles ) {
    vec3 c = cos(angles);
    vec3 s = sin(angles);
    mat3 rotX = mat3(1.0, 0.0, 0.0, 0.0, c.x, s.x, 0.0, -s.x, c.x);
    mat3 rotY = mat3(c.y, 0.0, -s.y, 0.0, 1.0, 0.0, s.y, 0.0, c.y);
    mat3 rotZ = mat3(c.z, s.z, 0.0, -s.z, c.z, 0.0, 0.0, 0.0, 1.0);
    return rotX * rotY * rotZ;
}

float onion( in float d, in float h )
{
    return abs(d)-h;
}

// Return 4x4 rotation X matrix
// angle in radians
// ========================================
mat4 Rot4X(float a ) {
	float c = cos( a );
	float s = sin( a );
	return mat4( 1, 0, 0, 0,
				 0, c,-s, 0,
				 0, s, c, 0,
				 0, 0, 0, 1 );
}

// Return 4x4 rotation Y matrix
// angle in radians
// ========================================
mat4 Rot4Y(float a ) {
	float c = cos( a );
	float s = sin( a );
	return mat4( c, 0, s, 0,
				 0, 1, 0, 0,
				-s, 0, c, 0,
				 0, 0, 0, 1 );
}

// Return 4x4 rotation Z matrix
// angle in radians
// ========================================
mat4 Rot4Z(float a ) {
	float c = cos( a );
	float s = sin( a );
	return mat4(
		c,-s, 0, 0,
		s, c, 0, 0,
		0, 0, 1, 0,
		0, 0, 0, 1
	 );
}

// Translate is simply: p - d
// opTx will do transpose(m)
// p' = m*p
//    = [m0 m1 m2 m3 ][ p.x ]
//      [m4 m5 m6 m7 ][ p.y ]
//      [m8 m9 mA mB ][ p.z ]
//      [mC mD mE mF ][ 1.0 ]
// ========================================
mat4 Loc4( vec3 p ) {
	p *= -1.;
	return mat4(
		1,  0,  0,  p.x,
		0,  1,  0,  p.y,
		0,  0,  1,  p.z,
		0,  0,  0,  1
	);
}
mat4 transposeM4(in mat4 m ) {
	vec4 r0 = m[0];
	vec4 r1 = m[1];
	vec4 r2 = m[2];
	vec4 r3 = m[3];

	mat4 t = mat4(
		 vec4( r0.x, r1.x, r2.x, r3.x ),
		 vec4( r0.y, r1.y, r2.y, r3.y ),
		 vec4( r0.z, r1.z, r2.z, r3.z ),
		 vec4( r0.w, r1.w, r2.w, r3.w )
	);
	return t;
}

// Op Rotation / Translation
// ========================================
vec3 opTx( vec3 p, mat4 m ) {   
	return (transposeM4(m)*vec4(p,1.0)).xyz;
}