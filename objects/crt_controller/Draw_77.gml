shader_set(crt);

var _w = surface_get_width(application_surface);
var _h = surface_get_height(application_surface);
shader_set_uniform_f(uni_resolution, _w, _h);

var _aberration_strength = 0.008;
shader_set_uniform_f(uni_aberration, _aberration_strength);


shader_set_uniform_f(uni_time, current_time / 1000.0);

shader_set_uniform_f(uni_vignette, 0.22);

draw_surface(application_surface,0,0);


shader_reset();