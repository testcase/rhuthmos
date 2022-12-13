// __ Smoothing functions _____________________________________

// Smooth Min
// http://www.iquilezles.org/www/articles/smin/smin.htm

// Min Polynomial
// ========================================
float sMinP( float a, float b, float k ) {
	float h = clamp( 0.5+0.5*(b-a)/k, 0.0, 1.0 );
	return mix( b, a, h ) - k*h*(1.0-h);
}

// Min Exponential
// ========================================
float sMinE( float a, float b, float k) {
	float res = exp( -k*a ) + exp( -k*b );
	return -log( res )/k;
}

// Min Power
// ========================================
float sMin( float a, float b, float k ) {
	a = pow( a, k );
	b = pow( b, k );
	return pow( (a*b) / (a+b), 1.0/k );
}

mat2 Rot2(float a ) {
        float c = cos( a );
        float s = sin( a );
        return mat2( c, -s, s, c );
    }


// Advanced
// ========================================
float opBlend( float a, float b, float k ) {
	return sMin( a, b, k );
}

// a angle
// ========================================
float displacement( vec3 p, float a ) {
	return sin(a*p.x)*sin(a*p.y)*sin(a*p.z); // NOTE: Replace with your own!
}

// ========================================
float opDisplace( vec3 p, float d1, float d2 ) {
	return d1 + d2;
}

// Op Union Translated
// ========================================
vec4 opUt( vec4 a, vec4 b, float fts ){
	vec4 vScaled = vec4(b.x * (fts * 2.0 - 1.0), b.yzw);
	return mix(a, vScaled, step(vScaled.x, a.x) * step(0.0, fts));
}



// __ Domain Operations _______________________________________

// NOTE: iq originally inlined the primitive inside the Domain operations. :-(
// This implied that you would have needed to provide 
// a primitive with one of the sd*() functions above
// since we can't have a generic pointer to a function!
// However we have moved them back out to the caller
// for clarity and flexibility without general loss of precision.

// Basic

// Op Repetition
// ========================================
vec3 opRep( vec3 p, vec3 spacing ) {
	return mod(p,spacing) - 0.5*spacing;
}

// Deformations

// Op Twist X
// ========================================
vec3 opTwistX( vec3 p, float angle ) {
	mat2 m = Rot2( angle * p.x );
	return   vec3( m*p.yz, p.x );
}

// Op Twist Y
// ========================================
vec3 opTwistY( vec3 p, float angle ) {
#if 0 // original
	float c = cos( angle * p.y );
	float s = sin( angle * p.y );
	mat2  m = mat2( c, -s, s, c );
	vec3  q = vec3( m*p.xz, p.y );
	// return primitive(q); // BUG in iq's docs, should be: return q
	return q;
#else // cleaned up
	mat2 m = Rot2( angle * p.y );
	return   vec3( m*p.xz, p.y );
#endif
}

// Op Twist Z
// ========================================
vec3 opTwistZ( vec3 p, float angle ) {
	mat2 m = Rot2( angle * p.z );
	return   vec3( m*p.xy, p.z );
}

// iq's bend X
// ========================================
vec3 opCheapBend( vec3 p, float angle ) {
#if 0 // original // broken :-(
	float c = cos( angle * p.y );
	float s = sin( angle * p.y );
	mat2  m = mat2( c, -s, s, c );
	vec3  q = vec3( m*p.xy, p.z ); // BUG in iq's docs, should be: p.yx
#else
	mat2  m = Rot2( angle * p.y );
	vec3  q = vec3( m*p.yx, p.z );
#endif
	return q;
}

// Op Cheap Bend X
// ========================================
vec3 opBendX( vec3 p, float angle ) {
	mat2 m = Rot2( angle * p.y );
	return   vec3( m*p.yx, p.z );
}

// Op Cheap Bend Y
// ========================================
vec3 opBendY( vec3 p, float angle ) {
	mat2 m = Rot2( angle * p.z );
	return   vec3( m*p.zy, p.x );
}

// Op Cheap Bend Z
// ========================================
vec3 opBendZ( vec3 p, float angle ) {
	mat2 m = Rot2( angle * p.x );
	return   vec3( m*p.xz, p.y );
}

// d = distance to move
// ========================================
vec3 opTrans( vec3 p, vec3 d ) {
	return p - d;
}

//Note: m must already be inverted!
//TODO: invert(m) transpose(m)
//Op Rotation / Translation
//========================================
//vec3 opTx( vec3 p, mat4 m ) {   // BUG in iq's docs, should be q
//	return (transposeM4(m)*vec4(p,1.0)).xyz;
//}


