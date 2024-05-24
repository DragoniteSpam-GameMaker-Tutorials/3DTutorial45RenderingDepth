//draw_surface(application_surface, 0, 0);

var depth_buffer = surface_get_texture_depth(application_surface);

shader_set(shd_draw_depth);
shader_set_uniform_f(shader_get_uniform(shd_draw_depth, "u_znear"), znear);
shader_set_uniform_f(shader_get_uniform(shd_draw_depth, "u_zfar"), zfar);

draw_primitive_begin_texture(pr_trianglefan, depth_buffer);

draw_vertex_texture(0, 0, 0, 0);
draw_vertex_texture(room_width, 0, 1, 0);
draw_vertex_texture(room_width, room_height, 1, 1);
draw_vertex_texture(0, room_height, 0, 1);


draw_primitive_end();

shader_reset();