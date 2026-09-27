//
// Simple passthrough vertex shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec2 u_resolution;
uniform float u_aberration;
uniform float u_time;
uniform float u_vignette_strength;


vec2 curve(vec2 uv) {
	
	uv = (uv - 0.5) * 2.0; 
	uv.x *= 1.0 + pow((abs(uv.y) / 5.0), 2.0);
	uv.y *= 1.0 + pow((abs(uv.x) / 4.0), 2.0);
	uv = (uv / 2.0) + 0.5;
	return uv;
}

void main() {
	vec2 uv = curve(v_vTexcoord);
	
	if (uv.x < 0.0 || uv.x > 1.0 || uv.y <0.0 || uv.y > 1.0) {
		gl_FragColor = vec4(0.0,0.0,0.0,1.0);
		return;
	}
	
	
	vec2 dist_from_center = uv - 0.5;
	
	vec2 uv_red = uv - dist_from_center * u_aberration;
	vec2 uv_green = uv;
	vec2 uv_blue = uv + dist_from_center * u_aberration;
	
	float r = texture2D(gm_BaseTexture, uv_red).r;
	float g = texture2D(gm_BaseTexture, uv_green).g;
	float b = texture2D(gm_BaseTexture, uv_blue).b;
	float a = texture2D(gm_BaseTexture, uv_green).a;
	
	
	vec4 base_color = v_vColour * vec4(r,g,b,a);
	
	float scanline = sin((uv.y * u_resolution.y *1.5) + (u_time * 5.0)) * 0.12;
	
	float flicker = sin(u_time * 120.0) * 0.015;
	
	base_color.rgb -= (scanline + flicker);
	
	float vignette = uv.x * uv.y * (1.0 - uv.x) * (1.0 - uv.y);
	
	vignette = clamp(pow(16.0 * vignette, u_vignette_strength), 0.0, 1.0);
	
	
	base_color.rgb *= vignette;
	
	gl_FragColor = base_color;
}