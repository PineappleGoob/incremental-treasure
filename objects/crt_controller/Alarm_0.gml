// 1. Get the actual monitor dimensions dynamically
var _display_w = display_get_width();
var _display_h = display_get_height();

// 2. Calculate the maximum 4:3 area that can fit on this screen
var _target_aspect = 4 / 3;
var _scale_w = _display_w;
var _scale_h = _display_w / _target_aspect;

if (_scale_h > _display_h) {
    _scale_h = _display_h;
    _scale_w = _display_h * _target_aspect;
}

// 3. Find the exact center coordinates of the monitor
var _center_x = (_display_w - _scale_w) / 2;
var _center_y = (_display_h - _scale_h) / 2;

// 4. Force texture smoothing off for crisp pixels (or true for smooth scaling)
gpu_set_blendenable(false); 

// 5. Manually draw the whole game perfectly centered and stretched to fit
if (surface_exists(application_surface)) {
    draw_surface_ext(application_surface, _center_x, _center_y, _scale_w / base_w, _scale_h / base_h, 0, c_white, 1);
}

gpu_set_blendenable(true);