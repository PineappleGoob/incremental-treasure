uni_resolution = shader_get_uniform(crt, "u_resolution");

uni_aberration = shader_get_uniform(crt, "u_aberration");

uni_time = shader_get_uniform(crt, "u_time");
uni_vignette = shader_get_uniform(crt,"u_vignette_strength");

application_surface_draw_enable(false);

// 2. Define your base 4:3 resolution (change to your actual game size)
base_w = 640;
base_h = 480;

// 3. Set the GUI to match your base design size so the UI scales identically to the game
display_set_gui_size(base_w, base_h);
