shader_type spatial;
render_mode unshaded, particle_trails;

uniform float intensity = 1.0;

void fragment() {
	float ease = (1.0 - UV.y);
	ALBEDO = COLOR.rgb * intensity * ease * COLOR.a;
	ALPHA = clamp(step(0.1, sin(UV.x * PI) * UV.y) * ease, 0.0, 1.0) * COLOR.a;
}