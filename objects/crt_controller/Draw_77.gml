// 1. Get the actual player window size
var _win_w = window_get_width();
var _win_h = window_get_height();

// 2. Calculate the target 4:3 dimensions based on window height
var _target_h = _win_h;
var _target_w = (_target_h / 3) * 4; 

// If the calculated width is too wide for the screen, scale down based on width instead
if (_target_w > _win_w) {
    _target_w = _win_w;
    _target_h = (_target_w / 4) * 3;
}

// 3. Center the 4:3 box inside the window frame
var _target_x = (_win_w - _target_w) / 2;
var _target_y = (_win_h - _target_h) / 2;

// 4. Set up your shader as usual
shader_set(crt);

var _surf_w = surface_get_width(application_surface);
var _surf_h = surface_get_height(application_surface);
shader_set_uniform_f(uni_resolution, _surf_w, _surf_h);

var _aberration_strength = 0.008;
shader_set_uniform_f(uni_aberration, _aberration_strength);

shader_set_uniform_f(uni_time, current_time / 1000.0);

shader_set_uniform_f(uni_vignette, 0.22);

// 5. FIX: Draw the surface precisely within the centered 4:3 box boundaries
draw_surface_stretched(application_surface, _target_x, _target_y, _target_w, _target_h);

shader_reset();
