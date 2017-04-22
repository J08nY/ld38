GDPC                                                                                    res://godot.cfb Pd     W      �]�T�pSc���P�   res://world.tscnp`     �      ņ;HRi�+�-����xz   res://tree_pine.tscn�_     �       �����9���|mAb�^   res://tree_oak.tscn 0_     �       (_j]�������ZE#'   res://scripts/world.gd  pZ     �      ��ɑ�q콊�e�,+   res://scripts/incubator.gd  0V     7      wR��N��@G��d);�`   res://scripts/house.gd   V     '       ���*��G\c����   res://scripts/cube.gd   �S     \      ~�q�-]����T>(�$   res://scripts/combinator.gd �N           ���n���KZ����   res://scripts/camera.gd `K           A�)2Ι�M�|S-�=ۄ   res://scripts/base.gd   �F     �      �Q���,un��-Af    res://mesh/tree_pine.dae.import ��     �z      ����;6RgT{�B���@   res://.import/tree_pine.dae-b596c934b4409683df714ba1497896dd.scn�     �!      
;�*NQ�	&�    res://mesh/tree_ball.dae.import `/     �z      �b	g>�C�	Lu�u�@   res://.import/tree_ball.dae-9a379d792ca573f0939cba446a692182.scn@            Dw7e]�x؉��˂Z    res://mesh/incubator.dae.import ��     �z      �7��Τ2��.\@   res://.import/incubator.dae-2e04073c4fc20dcee8f5f14ec9979ed0.scnP      9�      ��7�u�B���   res://mesh/house.dae.import ��     �z      ��%qb~�̥z���l<   res://.import/house.dae-7267165f26e008207906714369cc0135.scn {     �
      H�]�b���l)��Ӑ�   res://mesh/cube.dae.import  P      �z      �6��7��1e��`��z<   res://.import/cube.dae-8dcb9af004f5b3c1e6a0f8dcbd4194bf.scn ��      l      ��S4k��r��    res://mesh/combinator.dae.import0w      �z      �K'�kNԉf��&�t��D   res://.import/combinator.dae-c2e42d69a734eec01b3e4caac3929cd7.scn   @R      �$      Z=/+9�/jJ5��m��o   res://incubator.tscn>      %      �$3��̭|����
   res://icon.png.import   �<      g      ���hi�u�)6���<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stexp1      .      ��g��#H����{   res://house.tscnp0      �       Z���>6i��h�C�U��   res://cube.tscn �*      �      �r�Q�^@���C�W�   res://combinator_panel.tscn (      �      B�{�Rĉ�9������   res://combinator.tscn   @      �      	ǟ�l��Qxi��   res://base.tscn �      �      ��v�ƹ^N¥���F    [gd_scene load_steps=6 format=2]

[ext_resource path="res://scripts/base.gd" type="Script" id=1]
[ext_resource path="res://scripts/camera.gd" type="Script" id=2]
[ext_resource path="res://world.tscn" type="PackedScene" id=3]
[ext_resource path="res://incubator.tscn" type="PackedScene" id=4]
[ext_resource path="res://combinator.tscn" type="PackedScene" id=5]

[node name="Game" type="Spatial"]

script = ExtResource( 1 )

[node name="Camera" type="InterpolatedCamera" parent="."]

transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -0.0103998, -4.76837e-07, 0.0374603 )
projection = 0
fov = 60.0
near = 0.1
far = 100.0
keep_aspect = 1
current = true
cull_mask = 1048575
environment = null
h_offset = 0.0
v_offset = 0.0
target = NodePath("")
speed = 1.0
enabled = true
script = ExtResource( 2 )

[node name="OmniLight" type="OmniLight" parent="Camera"]

transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 2.11108 )
layers = 1
light_color = Color( 1, 1, 1, 1 )
light_energy = 1.0
light_negative = false
light_specular = 0.5
light_cull_mask = -1
shadow_enabled = false
shadow_color = Color( 0, 0, 0, 1 )
shadow_bias = 0.1
shadow_contact = 0.0
shadow_max_distance = 0.0
editor_only = false
omni_range = 19.0
omni_attenuation = 1.0
omni_shadow_mode = 0
omni_shadow_detail = 1

[node name="World" parent="." instance=ExtResource( 3 )]

transform = Transform( 0.05, 0, 0, 0, 0.05, 0, 0, 0, 0.05, 0, 0, -3.35552 )

[node name="World2" parent="." instance=ExtResource( 3 )]

transform = Transform( 0.05, 0, 0, 0, 0.05, 0, 0, 0, 0.05, -2.29277, 0, -3.35552 )

[node name="Incubator" parent="." instance=ExtResource( 4 )]

transform = Transform( -4.37114e-08, 0, -1, 0, 1, 0, 1, 0, -4.37114e-08, 0, 0, -5 )

[node name="Combinator" parent="." instance=ExtResource( 5 )]

transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -5, 0, 0 )

[node name="overview" type="Camera" parent="."]

transform = Transform( 1, 0, 0, 0, 0.771128, 0.63668, 0, -0.63668, 0.771128, 0, 4.08988, 3.34826 )
projection = 0
fov = 60.0
near = 0.1
far = 100.0
keep_aspect = 1
current = false
cull_mask = 1048575
environment = null
h_offset = 0.0
v_offset = 0.0

[node name="center" type="Position3D" parent="."]


              [gd_scene load_steps=8 format=2]

[ext_resource path="res://mesh/combinator.dae" type="PackedScene" id=1]
[ext_resource path="res://scripts/combinator.gd" type="Script" id=2]
[ext_resource path="res://combinator_panel.tscn" type="PackedScene" id=3]

[sub_resource type="ConvexPolygonShape" id=4]

points = PoolVector3Array( 1, -1, -0.999512, 1, -1, 1, -1, -1, 0.999512, -0.999512, -1, -1, 1, 1, -0.999512, -0.999512, 1, -1, -1, 1, 0.999512, 0.999512, 1, 1, 1, -1, -0.999512, 1, 1, -0.999512, 0.999512, 1, 1, 1, -1, 1, 1, -1, 1, 0.999512, 1, 1, -1, 1, 0.999512, -1, -1, 0.999512, -1, -1, 0.999512, -1, 1, 0.999512, -0.999512, 1, -1, -0.999512, -1, -1, 1, 1, -0.999512, 1, -1, -0.999512, -0.999512, -1, -1, -0.999512, 1, -1 )

[sub_resource type="ConvexPolygonShape" id=5]

points = PoolVector3Array( -1, -1, 1.46973, -1, 1, 1.46973, -1, 1, -1, -1, -1, -1, -1, -1, -1, -1, 1, -1, 1, 1, -1, 1, -1, -1, 1, -1, -1, 1, 1, -1, 1, 1, 1.46973, 1, -1, 1.46973, 1, -1, 1.46973, 1, 1, 1.46973, -1, 1, 1.46973, -1, -1, 1.46973, -1, -1, -1, 1, -1, -1, 1, -1, 1.46973, -1, -1, 1.46973, 1, 1, -1, -1, 1, -1, -1, 1, 1.46973, 1, 1, 1.46973 )

[sub_resource type="BoxShape" id=3]

extents = Vector3( 1, 1, 1 )

[sub_resource type="SpatialMaterial" id=2]

flags_transparent = false
flags_unshaded = true
flags_on_top = false
flags_use_point_size = false
flags_fixed_size = false
vertex_color_use_as_albedo = false
vertex_color_is_srgb = false
params_diffuse_mode = 0
params_blend_mode = 0
params_cull_mode = 0
params_depth_draw_mode = 0
params_line_width = 1.0
params_point_size = 1.0
params_billboard_mode = 0
albedo_color = Color( 0.7, 0.7, 0.7, 1 )
specular_mode = 0
specular_color = Color( 0.1, 0.1, 0.1, 1 )
specular_metalness = 0.1
specular_roughness = 0.0
emission_enabled = false
normal_enabled = false
rim_enabled = false
clearcoat_enabled = false
anisotropy_enabled = false
ao_enabled = false
height_enabled = false
subsurf_scatter_enabled = false
refraction_enabled = false
detail_enabled = false
uv1_scale = Vector2( 1, 1 )
uv1_offset = Vector2( 0, 0 )
uv2_scale = Vector2( 1, 1 )
uv2_offset = Vector2( 0, 0 )

[node name="Combinator" instance=ExtResource( 1 )]

script = ExtResource( 2 )

[node name="StaticBody" type="StaticBody" parent="Cube"]

input_ray_pickable = true
input_capture_on_drag = false
shape_count = 1
shapes/0/shape = SubResource( 4 )
shapes/0/transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0 )
shapes/0/trigger = true
collision_layer = 1
collision_mask = 1
friction = 1.0
bounce = 0.0
constant_linear_velocity = Vector3( 0, 0, 0 )
constant_angular_velocity = Vector3( 0, 0, 0 )

[node name="CollisionShape" type="CollisionShape" parent="Cube/StaticBody"]

shape = SubResource( 4 )
trigger = true
_update_shape_index = 0

[node name="StaticBody" type="StaticBody" parent="Cube.1"]

input_ray_pickable = true
input_capture_on_drag = false
shape_count = 1
shapes/0/shape = SubResource( 5 )
shapes/0/transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0 )
shapes/0/trigger = true
collision_layer = 1
collision_mask = 1
friction = 1.0
bounce = 0.0
constant_linear_velocity = Vector3( 0, 0, 0 )
constant_angular_velocity = Vector3( 0, 0, 0 )

[node name="CollisionShape" type="CollisionShape" parent="Cube.1/StaticBody"]

transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0 )
shape = SubResource( 5 )
trigger = true
_update_shape_index = 0

[node name="Viewport" type="Viewport" parent="."]

size = Vector2( 400, 400 )
own_world = true
world = null
transparent_bg = false
msaa = 0
hdr = false
disable_3d = false
render_target_v_flip = true
render_target_clear_on_new_frame = true
render_target_update_mode = 3
audio_listener_enable_2d = false
audio_listener_enable_3d = false
physics_object_picking = false
gui_disable_input = false
shadow_atlas_size = 0
shadow_atlas_quad_0 = 2
shadow_atlas_quad_1 = 2
shadow_atlas_quad_2 = 3
shadow_atlas_quad_3 = 4

[node name="CombinatorPanel" parent="Viewport" instance=ExtResource( 3 )]

[node name="Area" type="Area" parent="."]

transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0.434383, 0.698751 )
input_ray_pickable = true
input_capture_on_drag = false
shape_count = 1
shapes/0/shape = SubResource( 3 )
shapes/0/transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0 )
shapes/0/trigger = true
space_override = 0
gravity_point = false
gravity_distance_scale = 0.0
gravity_vec = Vector3( 0, -1, 0 )
gravity = 9.8
linear_damp = 0.1
angular_damp = 1.0
priority = 0.0
monitoring = true
monitorable = true
collision_layers = 1
collision_mask = 1

[node name="Quad" type="Quad" parent="Area"]

transform = Transform( -1, 0, -8.74228e-08, 0, 1, 0, 8.74228e-08, 0, -1, 0, 0.955984, 0 )
layers = 1
material_override = SubResource( 2 )
cast_shadow = 1
extra_cull_margin = 0.0
visible_in_all_rooms = false
use_in_baked_light = false
lod_min_distance = 0.0
lod_min_hysteresis = 0.0
lod_max_distance = 0.0
lod_max_hysteresis = 0.0
axis = 1
size = Vector2( 2, 2 )
offset = Vector2( 0, 0 )
centered = true

[node name="CollisionShape" type="CollisionShape" parent="Area"]

shape = SubResource( 3 )
trigger = true
_update_shape_index = 0

[node name="spawn" type="Position3D" parent="."]

transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -0.809103, 1.6303, -1.32872 )

[node name="point" type="Camera" parent="."]

transform = Transform( -3.09086e-08, -0.707107, 0.707107, -1.28028e-08, 0.707107, 0.707107, -1, 1.28028e-08, -3.09086e-08, 2.2, 3, 0 )
projection = 0
fov = 60.0
near = 0.1
far = 100.0
keep_aspect = 1
current = false
cull_mask = 1048575
environment = null
h_offset = 0.0
v_offset = 0.0

[connection signal="input_event" from="Cube/StaticBody" to="." method="_on_body_input_event"]

[connection signal="input_event" from="Cube.1/StaticBody" to="." method="_on_panel_input_event"]

[connection signal="input_event" from="Area" to="." method="_on_Area_input_event"]


  [gd_scene format=2]

[node name="CombinatorPanel" type="Panel"]

margin_right = 400.0
margin_bottom = 400.0
rect_clip_content = false
mouse_filter = 0

[node name="Label" type="Label" parent="."]

margin_left = 30.0
margin_top = 40.0
margin_right = 70.0
margin_bottom = 54.0
rect_clip_content = false
mouse_filter = 2
size_flags_vertical = 0
text = "Test?"
percent_visible = 1.0
lines_skipped = 0
max_lines_visible = -1

[node name="Button" type="Button" parent="."]

margin_left = 120.0
margin_top = 50.0
margin_right = 262.0
margin_bottom = 150.0
rect_clip_content = false
mouse_filter = 0
toggle_mode = false
enabled_focus_mode = 2
shortcut = null
group = null
flat = false


         [gd_scene load_steps=4 format=2]

[ext_resource path="res://mesh/cube.dae" type="PackedScene" id=1]
[ext_resource path="res://scripts/cube.gd" type="Script" id=2]

[sub_resource type="ConvexPolygonShape" id=1]

points = PoolVector3Array( 1, -1, -0.999512, 1, -1, 1, -1, -1, 0.999512, -0.999512, -1, -1, 1, 1, -0.999512, -0.999512, 1, -1, -1, 1, 0.999512, 0.999512, 1, 1, 1, -1, -0.999512, 1, 1, -0.999512, 0.999512, 1, 1, 1, -1, 1, 1, -1, 1, 0.999512, 1, 1, -1, 1, 0.999512, -1, -1, 0.999512, -1, -1, 0.999512, -1, 1, 0.999512, -0.999512, 1, -1, -0.999512, -1, -1, 1, 1, -0.999512, 1, -1, -0.999512, -0.999512, -1, -1, -0.999512, 1, -1 )

[node name="Scene Root" instance=ExtResource( 1 )]

script = ExtResource( 2 )

[node name="Cube" parent="."]

use_in_baked_light = false
material/0 = null

[node name="StaticBody" type="StaticBody" parent="Cube"]

input_ray_pickable = true
input_capture_on_drag = false
shape_count = 1
shapes/0/shape = SubResource( 1 )
shapes/0/transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0 )
shapes/0/trigger = true
collision_layer = 1
collision_mask = 1
friction = 1.0
bounce = 0.0
constant_linear_velocity = Vector3( 0, 0, 0 )
constant_angular_velocity = Vector3( 0, 0, 0 )

[node name="CollisionShape" type="CollisionShape" parent="Cube/StaticBody"]

shape = SubResource( 1 )
trigger = true
_update_shape_index = 0

[connection signal="input_event" from="Cube/StaticBody" to="." method="_input_event"]


             [gd_scene load_steps=3 format=2]

[ext_resource path="res://mesh/house.dae" type="PackedScene" id=1]
[ext_resource path="res://scripts/house.gd" type="Script" id=2]

[node name="Scene Root" instance=ExtResource( 1 )]

script = ExtResource( 2 )


          GDST@   @             PNG �PNG

   IHDR   @   @   �iq�  
�IDATx��[kP�W���~�y B1	Zq�S��t��ZY;�vf�v���s����:�lw�u�0u�l�ά:�~pm?��@鶝BG"Z�Q�1�@"	y?`�b!��H��ߧ������s�=��s�9���s�;�,�^���PJe$�,շD�D"��$)2y!�|���Y���5����|NyG�Pz������r�?�E ��G82��g��y�L\yB"�s{]�@0P\.��` ��0O,�죐)���U�.. ���/z�УΕ+ ������)�@��s��y��X
f0� �y���B Q���n<Y�Γ˨*� Tj!R��ˇ�wa�2�������T���.�ð��[�����<s�U�k�	 Ԋ�I��[�Q*���]*�(�ғ��..��[F:�[��m����s���
��.�t�i�8\C�s�;�\������7��H2�����J���}&-�'~�� c)� �ڄ������`��ᐩ����-�j_�䮴��F�9��t�	([8]�Yܽ%C�7�,A��Q�nLY_ٰ�X�  �6�TV�F5��i=��p�_^(�RYI��� �-�:�-H$RYIA(=�x$(࢝V �2jVD��O��l!��Q���l^�o3��\!�%��eT��_Gնga�6@�3�̓����m�q^@�9|lhhF8��{�.!o���Gݯ^NiШ��h|�M�E2�R�(��9l���z�B�'��:���=����`
����3"KK ���wB�z \i����M��'��R �w�����w*��V*��y�-Mд����+6��b�o���:_M�$��7�b����<�2�������`��1�}�a�����ُ������˨п��c�y �n��q4��D�P�k[TT���a��Q+��pPy�Pݴ�� X��L�����6.��Pc_�{`��?Ɵ�k��ew��C���d�)l����Oӥ��3�DJ�R(��N��b�61��� �a�k�b�|WN�E\&�Ub����q��ļx[U�̇�f#�/~�TNɗ�Wv6$t��w�zo��C>	�Mr���9��ނ_��]��ƚв�woO*g�ʰ�yk+q��¡=Mh�R�T.�2qp�v��������I �*qB�V+�? hnnF[[��<���}��Z�H�;��?r�<$	��ڠ���n��/o�r��&��c��3>>���^� p��O8y�$:;;�V�в�&�z����l�����A-C�Z ����1�]Į�'�t����V>| к����`[�fݗ���b x<��������ѰINHG�I�^�%�5o���������j�`��p��)�t�&��t����~I�^*�, �H�|�F���C�ADX�z���j9 @wwwJ�zzz�Ϲ�Dy]�Z����Zan�g�siۉ�I��f�o���0��X#S!g�M͡��	 ��с��Z	�{��7������\�H�ø��E�'��b$�WH����Dm�3}��kҀ3}C�����Ç���;��b୷�D{{;zoal*��f��/�@�R���3��^�:;;�b�  ���J�vǚ�A_0�c�}�C{�P%档����`�XP�T ���[9�ɩ065�������8��X�V�T�x�}�����-9�^�%85�đ��u[-Z��@������	?ܘ�8�Ss΄�شJ�mF�q�]+t:	���b�m�y�_��[a ��k�������&9��<x�a��0����?�$����k�b��ϙ`�mY��	��
u#�y��;�߼4T&��2��A?�ݘ2|��P �2j܃D�җ5�+���8 ��0�#��
��p]���$Dq=,pۦA���l<�X��������HY��N�@T�S@���HY�ٱ�Iuc_��=�(�h<K(K$�D�/H�N�p����ئ���C��e��G�M�V�� D#9���@�"�1��̎]���;	}���J�P�_��a�w'>@��B���hf���p��7Y����ʻ��Qٰ#��R�h�i;p;@e� Ѥ��rZ�*%Z}VS�v?�2�X
�M'�we���`��?C�Ѐ'W`1�e��N��3z�&/�eQ�
7.���l�R(*��
ucJ�%L��U��Y���flhh�ݡ~XG�0^]0fxl3�h��h�I���~�D���ɝI�D,f��&��i1b�RX")(TzAv�m�� ����B� �j�y(1�%A K� L���陽�?��R���T@���iN�ñ8V���]�ئ�b������z��.�זo�H$R�.`��#�ʺ5��� g�و��6�b��q,�4#��PQ��&�H��V;���$��bR�S� �6�!�K� ���;����!�B�����փ�u�������&X�8|�D"��gСGL&/�a��G�K"�H�\��>�N�e����y�X�cV̌0�����/(d�]R���ߑH�=�F*ԍ�~rWV���̈��}	���@"�Γ�I���k ��S�	�7ܶiXG��r�!�%N,iJٲBeݺk��l�}bv�HN��������Q�<�DR��2�*�q�y	%չ?$���8C� œ��0.n'��\�8|�s��>=g~X�;��Bx�X�y`U����*���r��zl�y>�%d�̜���ٿ��K�˾���L��K��?�zXtT<$    IEND�B`�  [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"

[params]

compress/mode=0
compress/lossy_quality=0.7
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=true
stream=false
size_limit=0
detect_3d=true
         [gd_scene load_steps=6 format=2]

[ext_resource path="res://mesh/incubator.dae" type="PackedScene" id=1]
[ext_resource path="res://scripts/incubator.gd" type="Script" id=2]

[sub_resource type="ConvexPolygonShape" id=4]

points = PoolVector3Array( 1, -1, 1, -0.999512, -1, -1, 1, -1, -0.999512, -0.999512, 1, -1, 0.999512, 1, 1, 1, 1, -0.999512, 1, 1, -0.999512, 1, -1, 1, 1, -1, -0.999512, 0.999512, 1, 1, -1, -1, 0.999512, 1, -1, 1, -1, -1, 0.999512, -0.999512, 1, -1, -0.999512, -1, -1, 1, -1, -0.999512, -0.999512, 1, -1, 1, 1, -0.999512, -1, -1, 0.999512, -1, 1, 0.999512, 0.999512, 1, 1, -1, 1, 0.999512, -1, 1, 0.999512, -0.999512, -1, -1 )

[sub_resource type="ConvexPolygonShape" id=2]

points = PoolVector3Array( -1, 1, 2.81836, -1, -1, -1, -1, -1, 2.81836, -1, 1, -1, 1, -1, -1, -1, -1, -1, 1, 1, -1, 1, -1, 2.81836, 1, -1, -1, 1, 1, 2.81836, -1, -1, 2.81836, 1, -1, 2.81836, 1, -1, -1, -1, -1, 2.81836, -1, -1, -1, -1, 1, -1, 1, 1, 2.81836, 1, 1, -1, -1, 1, -1, 1, 1, -1, 1, 1, 2.81836, -1, 1, 2.81836, 1, -1, 2.81836, -1, 1, 2.81836 )

[sub_resource type="SpatialMaterial" id=3]

flags_transparent = true
flags_unshaded = false
flags_on_top = false
flags_use_point_size = false
flags_fixed_size = false
vertex_color_use_as_albedo = false
vertex_color_is_srgb = false
params_diffuse_mode = 0
params_blend_mode = 1
params_cull_mode = 0
params_depth_draw_mode = 0
params_line_width = 1.0
params_point_size = 1.0
params_billboard_mode = 0
albedo_color = Color( 0.491638, 0.509477, 0.699219, 0.294706 )
specular_mode = 1
specular_color = Color( 0.491638, 0.509477, 0.699219, 1 )
specular_metalness = 0.1
specular_roughness = 0.0
emission_enabled = false
normal_enabled = false
rim_enabled = false
clearcoat_enabled = false
anisotropy_enabled = false
ao_enabled = false
height_enabled = false
subsurf_scatter_enabled = false
refraction_enabled = false
detail_enabled = false
uv1_scale = Vector2( 1, 1 )
uv1_offset = Vector2( 0, 0 )
uv2_scale = Vector2( 1, 1 )
uv2_offset = Vector2( 0, 0 )

[node name="Incubator" instance=ExtResource( 1 )]

script = ExtResource( 2 )

[node name="Cube" parent="."]

editor/display_folded = true

[node name="StaticBody" type="StaticBody" parent="Cube"]

input_ray_pickable = true
input_capture_on_drag = false
shape_count = 1
shapes/0/shape = SubResource( 4 )
shapes/0/transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0 )
shapes/0/trigger = true
collision_layer = 1
collision_mask = 1
friction = 1.0
bounce = 0.0
constant_linear_velocity = Vector3( 0, 0, 0 )
constant_angular_velocity = Vector3( 0, 0, 0 )

[node name="CollisionShape" type="CollisionShape" parent="Cube/StaticBody"]

shape = SubResource( 4 )
trigger = true
_update_shape_index = 0

[node name="Cube.1" parent="."]

editor/display_folded = true

[node name="StaticBody" type="StaticBody" parent="Cube.1"]

input_ray_pickable = true
input_capture_on_drag = false
shape_count = 1
shapes/0/shape = SubResource( 2 )
shapes/0/transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0 )
shapes/0/trigger = true
collision_layer = 1
collision_mask = 1
friction = 1.0
bounce = 0.0
constant_linear_velocity = Vector3( 0, 0, 0 )
constant_angular_velocity = Vector3( 0, 0, 0 )

[node name="CollisionShape" type="CollisionShape" parent="Cube.1/StaticBody"]

shape = SubResource( 2 )
trigger = true
_update_shape_index = 0

[node name="cover" parent="."]

material_override = SubResource( 3 )
material/0 = null

[node name="spawns" type="Spatial" parent="."]

editor/display_folded = true
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0.1, 0 )

[node name="0-1" type="Position3D" parent="spawns"]

transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0.0511715, 1.64196, 1.41775 )

[node name="1-1" type="Position3D" parent="spawns"]

transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0.0511715, 1.64196, 0.631948 )

[node name="2-1" type="Position3D" parent="spawns"]

transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0.0511715, 1.64196, -0.150503 )

[node name="3-1" type="Position3D" parent="spawns"]

transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0.0511715, 1.64196, -0.97198 )

[node name="0-0" type="Position3D" parent="spawns"]

transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -0.732647, 1.64196, 1.41775 )

[node name="1-0" type="Position3D" parent="spawns"]

transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -0.732647, 1.64196, 0.631948 )

[node name="2-0" type="Position3D" parent="spawns"]

transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -0.732647, 1.64196, -0.150503 )

[node name="3-0" type="Position3D" parent="spawns"]

transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -0.732647, 1.64196, -0.97198 )

[node name="point" type="Camera" parent="."]

transform = Transform( -3.09086e-08, -0.707107, 0.707107, -1.28028e-08, 0.707107, 0.707107, -1, 1.28028e-08, -3.09086e-08, 2.2, 3, 0 )
projection = 0
fov = 60.0
near = 0.1
far = 100.0
keep_aspect = 1
current = false
cull_mask = 1048575
environment = null
h_offset = 0.0
v_offset = 0.0

[connection signal="input_event" from="Cube/StaticBody" to="." method="_on_body_input_event"]

[connection signal="input_event" from="Cube.1/StaticBody" to="." method="_on_panel_input_event"]


           RSRC                     PackedScene                                                                 +      ..        resource_local_to_scene    resource_name    surfaces/0    custom_aabb/custom_aabb    script    flags_transparent    flags_unshaded    flags_on_top    flags_use_point_size    flags_fixed_size    vertex_color_use_as_albedo    vertex_color_is_srgb    params_diffuse_mode    params_blend_mode    params_cull_mode    params_depth_draw_mode    params_line_width    params_point_size    params_billboard_mode    albedo_color    albedo_texture    specular_mode    specular_color    specular_metalness    specular_roughness    specular_texture    emission_enabled    normal_enabled    rim_enabled    clearcoat_enabled    anisotropy_enabled    ao_enabled    height_enabled    subsurf_scatter_enabled    refraction_enabled    detail_enabled 
   uv1_scale    uv1_offset 
   uv2_scale    uv2_offset 	   _bundled        
   local://1 L      
   local://2 B      
   local://3 W	      
   local://4 +      
   local://5 {      
   local://6 �         Mesh          	   Cube.001       
         array_data        < ��� < �   < � < < �   � ��; < �  �� � � < �   < <�� <   �� < � <    � <�; <   �; < < <    < ��� <    < <�� <   �; < < <    < � < <    < � < <   �; < < <    � <�; <    � ��; <    � ��; <�    � <�; <�   �� < � <�   �� � � <�    < <�� <  �  < ��� <  � �� � � <  � �� < � <  �       vertex_count (                array_index_data    H                  
 	   
                         index_count (   $          
   primitive (                format (              aabb     ��  �� ��  @   @  @      skeleton_aabb              blend_shape_data              name       Material.001                                  SpatialMaterial $            Material.001                     	          
                                           (              (              (              (                   �?        �?   (                 333?333?333?  �?             (                 ���=���=���=  �?         ?      �
?                                                             !          "          #          $          %          &   
     �?  �?'   
           (   
     �?  �?)   
              Mesh          	   Cube.000       	         array_data        � ��= <�    � <�= <�    � < � <�    � � � <�    � � � <  �  � < � <  �  < < � <  �  < � � <  �  < � � <    < < � <    < <�= <    < ��= <    < ��= <    < <�= <    � <�= <    � ��= <    � � � < �   < � � < �   < ��= < �   � ��= < �   < < � <    � < � <    � <�= <    < <�= <         vertex_count (                array_index_data    H                  
 	   
                         index_count (   $          
   primitive (                format (              aabb      ��  ��  ��   @   @q@      skeleton_aabb              blend_shape_data                                         Mesh             Cube       	         array_data    @  t�q7�: <   t�q7� <   t�D8� <   t�D8�: <   t�q7� <   #;q7� <   #;D8� <   t�D8� <   #;q7� <�   #;q7�: <�   #;D8�: <�   #;D8� <�   #;q7�: <  � t�q7�: <  � t�D8�: <  � #;D8�: <  � t�q7� <   t�q7�: <   #;q7�: <   #;q7� <   	��� < <�   	�D8 < <�   	�D8�� <�   	����� <�   	����� <  � 	�D8�� <  �  <D8�� <  �  <���� <  �  <���� <    <D8�� <    <D8 < <    <�� < <    <�� < <    <D8 < <   	�D8 < <   	��� < <   	����� < �   <���� < �   <�� < < �  	��� < < �   <D8�� <   #;D8� <   #;D8�: <   t�D8�: <   	�D8 < <    <D8 < <   t�D8� <   	�D8�� <         vertex_count (   0             array_index_data    �                  
 	   
                                 " !   # " $ & % $ ' & ( * ) ( + * ( , + ( - , , . + , ) . , ( ) , / (       index_count (   T          
   primitive (                format (              aabb    �(����о�=��J� @�p?Ξ@      skeleton_aabb              blend_shape_data                                         Mesh             Cylinder.001       	         array_data     	     � � < �    < � < � >2 <ػ < � >2 �ػ < � >2 �ػ <$ � >2 <ػ <$ � 6 <d� <$ � 6 �d� <$ � 6 �d� <; � 6 <d� <; � q8 <�� <; � q8 ��� <; � q8 ��� <P � q8 <�� <P � �9 <�� <P � �9 ��� <P � �9 ��� <b � �9 <�� <b � �: <q� <b � �: �q� <b � �: �q� <p � �: <q� <p � d; <� <p � d; �� <p � d; �� <y � d; <� <y � �; <>� <y � �; �>� <y � �; �>� <~ � �; <>� <~ �  < <   <~ �  < �   <~ �  < �   <~   < <   <~  �; <>2 <~  �; �>2 <~  �; �>2 <y $ �; <>2 <y $ d; <6 <y $ d; �6 <y $ d; �6 <p ; d; <6 <p ; �: <q8 <p ; �: �q8 <p ; �: �q8 <b P �: <q8 <b P �9 <�9 <b P �9 ��9 <b P �9 ��9 <P b �9 <�9 <P b q8 <�: <P b q8 ��: <P b q8 ��: <; p q8 <�: <; p 6 <d; <; p 6 �d; <; p 6 �d; <$ y 6 <d; <$ y >2 <�; <$ y >2 ��; <$ y >2 ��; < ~ >2 <�; < ~    < < < ~    � < < ~    � < <� ~    < < <� ~ >� <�; <� ~ >� ��; <� ~ >� ��; <� y >� <�; <� y � <d; <� y � �d; <� y � �d; <� p � <d; <� p q� <�: <� p q� ��: <� p q� ��: <� b q� <�: <� b �� <�9 <� b �� ��9 <� b �� ��9 <� P �� <�9 <� P �� <q8 <� P �� �q8 <� P �� �q8 <� ; �� <q8 <� ; d� <6 <� ; d� �6 <� ; d� �6 <� $ d� <6 <� $ ػ <>2 <� $ ػ �>2 <� $ ػ �>2 <�  ػ <>2 <�   � <   <�   � �   <�   � �   <� �  � <   <� � ػ <>� <� � ػ �>� <� � ػ �>� <� � ػ <>� <� � d� <� <� � d� �� <� � d� �� <� � d� <� <� � �� <q� <� � �� �q� <� � �� �q� <� � �� <q� <� � �� <�� <� � �� ��� <� � �� ��� <� � �� <�� <� � q� <�� <� � q� ��� <� � q� ��� <� � q� <�� <� � � <d� <� � � �d� <� � >2 <ػ <      < � <   >� <ػ <   � <d� <   q� <�� <   �� <�� <   �� <q� <   d� <� <   ػ <>� <    � <   <   ػ <>2 <   d� <6 <   �� <q8 <   �� <�9 <   q� <�: <   � <d; <   >� <�; <      < < <   >2 <�; <   6 <d; <   q8 <�: <   �9 <�9 <   �: <q8 <   d; <6 <   �; <>2 <    < <   <   �; <>� <   d; <� <   �: <q� <   �9 <�� <   q8 <�� <   6 <d� <   � �d� <� � � <d� <� � >� <ػ <� � >� �ػ <� � >� �ػ <� � >� <ػ <� �    < � <� �    � � <� �    � � < �  >2 �ػ < �  6 �d� < �  q8 ��� < �  �9 ��� < �  �: �q� < �  d; �� < �  �; �>� < �   < �   < �  �; �>2 < �  d; �6 < �  �: �q8 < �  �9 ��9 < �  q8 ��: < �  6 �d; < �  >2 ��; < �     � < < �  >� ��; < �  � �d; < �  q� ��: < �  �� ��9 < �  �� �q8 < �  d� �6 < �  ػ �>2 < �   � �   < �  ػ �>� < �  d� �� < �  �� �q� < �  �� ��� < �  q� ��� < �  � �d� < �  >� �ػ < �        vertex_count (   �             array_index_data    �                 
 	   
                                 " !   # " $ & % $ ' & ( * ) ( + * , . - , / . 0 2 1 0 3 2 4 6 5 4 7 6 8 : 9 8 ; : < > = < ? > @ B A @ C B D F E D G F H J I H K J L N M L O N P R Q P S R T V U T W V X Z Y X [ Z \ ^ ] \ _ ^ ` b a ` c b d f e d g f h j i h k j l n m l o n p r q p s r t v u t w v x z y x { z x | { x } | x ~ } x  ~ x �  x � � x � � x � � x � � x � � x � � x � � x � � x � � x � � x � � x � � x � � x � � x � � x � � x � � x � � x � � x � � x � � x � � x � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �       index_count (   t         
   primitive (                format (              aabb      ��  ��  ��   @   @   @      skeleton_aabb              blend_shape_data                                         PackedScene    *      	         names "         Scene Root    Spatial    Cube 
   transform    layers    material_override    cast_shadow    extra_cull_margin    visible_in_all_rooms    use_in_baked_light    lod_min_distance    lod_min_hysteresis    lod_max_distance    lod_max_hysteresis    mesh 	   skeleton    material/0    MeshInstance    Cube.1    Cube.2    Cylinder.1    AnimationPlayer    playback_process_mode    playback_default_blend_time 
   root_node    playback/active    playback/speed    blend_times 	   autoplay    	   variants          33�?            ��?               @    ��?    (                                                                       ��L>            ��L>               ?0�?�o�? 	��              �?              �?              �?HM�>ȌQ? 6W?            ���>            ���=            ���> (O����?���              �?                    node_count (                nodes     �   ��������       ����                      ����                                        	      
                                                            ����      	                                 	      
                           
                                 ����                                       	      
                                                            ����                                       	      
                                                            ����                                                       conn_count (                 conns               node_paths              editable_instances              version (          RSRC         [remap]

importer="scene"
type="PackedScene"
path="res://.import/combinator.dae-c2e42d69a734eec01b3e4caac3929cd7.scn"

[params]

nodes/root_type="Spatial"
nodes/root_name="Scene Root"
nodes/custom_script=""
materials/location=0
materials/storage=0
geometry/compress=true
geometry/ensure_tangents=true
geometry/storage=0
animation/import=true
animation/fps=15
animation/filter_script=""
animation/optimizer/enabled=true
animation/optimizer/max_linear_error=0.05
animation/optimizer/max_angular_error=0.01
animation/optimizer/max_angle=22
animation/optimizer/remove_unused_tracks=true
animation/clips/amount=0
animation/clip_1/name=""
animation/clip_1/start_frame=0
animation/clip_1/end_frame=0
animation/clip_1/loops=false
animation/clip_2/name=""
animation/clip_2/start_frame=0
animation/clip_2/end_frame=0
animation/clip_2/loops=false
animation/clip_3/name=""
animation/clip_3/start_frame=0
animation/clip_3/end_frame=0
animation/clip_3/loops=false
animation/clip_4/name=""
animation/clip_4/start_frame=0
animation/clip_4/end_frame=0
animation/clip_4/loops=false
animation/clip_5/name=""
animation/clip_5/start_frame=0
animation/clip_5/end_frame=0
animation/clip_5/loops=false
animation/clip_6/name=""
animation/clip_6/start_frame=0
animation/clip_6/end_frame=0
animation/clip_6/loops=false
animation/clip_7/name=""
animation/clip_7/start_frame=0
animation/clip_7/end_frame=0
animation/clip_7/loops=false
animation/clip_8/name=""
animation/clip_8/start_frame=0
animation/clip_8/end_frame=0
animation/clip_8/loops=false
animation/clip_9/name=""
animation/clip_9/start_frame=0
animation/clip_9/end_frame=0
animation/clip_9/loops=false
animation/clip_10/name=""
animation/clip_10/start_frame=0
animation/clip_10/end_frame=0
animation/clip_10/loops=false
animation/clip_11/name=""
animation/clip_11/start_frame=0
animation/clip_11/end_frame=0
animation/clip_11/loops=false
animation/clip_12/name=""
animation/clip_12/start_frame=0
animation/clip_12/end_frame=0
animation/clip_12/loops=false
animation/clip_13/name=""
animation/clip_13/start_frame=0
animation/clip_13/end_frame=0
animation/clip_13/loops=false
animation/clip_14/name=""
animation/clip_14/start_frame=0
animation/clip_14/end_frame=0
animation/clip_14/loops=false
animation/clip_15/name=""
animation/clip_15/start_frame=0
animation/clip_15/end_frame=0
animation/clip_15/loops=false
animation/clip_16/name=""
animation/clip_16/start_frame=0
animation/clip_16/end_frame=0
animation/clip_16/loops=false
animation/clip_17/name=""
animation/clip_17/start_frame=0
animation/clip_17/end_frame=0
animation/clip_17/loops=false
animation/clip_18/name=""
animation/clip_18/start_frame=0
animation/clip_18/end_frame=0
animation/clip_18/loops=false
animation/clip_19/name=""
animation/clip_19/start_frame=0
animation/clip_19/end_frame=0
animation/clip_19/loops=false
animation/clip_20/name=""
animation/clip_20/start_frame=0
animation/clip_20/end_frame=0
animation/clip_20/loops=false
animation/clip_21/name=""
animation/clip_21/start_frame=0
animation/clip_21/end_frame=0
animation/clip_21/loops=false
animation/clip_22/name=""
animation/clip_22/start_frame=0
animation/clip_22/end_frame=0
animation/clip_22/loops=false
animation/clip_23/name=""
animation/clip_23/start_frame=0
animation/clip_23/end_frame=0
animation/clip_23/loops=false
animation/clip_24/name=""
animation/clip_24/start_frame=0
animation/clip_24/end_frame=0
animation/clip_24/loops=false
animation/clip_25/name=""
animation/clip_25/start_frame=0
animation/clip_25/end_frame=0
animation/clip_25/loops=false
animation/clip_26/name=""
animation/clip_26/start_frame=0
animation/clip_26/end_frame=0
animation/clip_26/loops=false
animation/clip_27/name=""
animation/clip_27/start_frame=0
animation/clip_27/end_frame=0
animation/clip_27/loops=false
animation/clip_28/name=""
animation/clip_28/start_frame=0
animation/clip_28/end_frame=0
animation/clip_28/loops=false
animation/clip_29/name=""
animation/clip_29/start_frame=0
animation/clip_29/end_frame=0
animation/clip_29/loops=false
animation/clip_30/name=""
animation/clip_30/start_frame=0
animation/clip_30/end_frame=0
animation/clip_30/loops=false
animation/clip_31/name=""
animation/clip_31/start_frame=0
animation/clip_31/end_frame=0
animation/clip_31/loops=false
animation/clip_32/name=""
animation/clip_32/start_frame=0
animation/clip_32/end_frame=0
animation/clip_32/loops=false
animation/clip_33/name=""
animation/clip_33/start_frame=0
animation/clip_33/end_frame=0
animation/clip_33/loops=false
animation/clip_34/name=""
animation/clip_34/start_frame=0
animation/clip_34/end_frame=0
animation/clip_34/loops=false
animation/clip_35/name=""
animation/clip_35/start_frame=0
animation/clip_35/end_frame=0
animation/clip_35/loops=false
animation/clip_36/name=""
animation/clip_36/start_frame=0
animation/clip_36/end_frame=0
animation/clip_36/loops=false
animation/clip_37/name=""
animation/clip_37/start_frame=0
animation/clip_37/end_frame=0
animation/clip_37/loops=false
animation/clip_38/name=""
animation/clip_38/start_frame=0
animation/clip_38/end_frame=0
animation/clip_38/loops=false
animation/clip_39/name=""
animation/clip_39/start_frame=0
animation/clip_39/end_frame=0
animation/clip_39/loops=false
animation/clip_40/name=""
animation/clip_40/start_frame=0
animation/clip_40/end_frame=0
animation/clip_40/loops=false
animation/clip_41/name=""
animation/clip_41/start_frame=0
animation/clip_41/end_frame=0
animation/clip_41/loops=false
animation/clip_42/name=""
animation/clip_42/start_frame=0
animation/clip_42/end_frame=0
animation/clip_42/loops=false
animation/clip_43/name=""
animation/clip_43/start_frame=0
animation/clip_43/end_frame=0
animation/clip_43/loops=false
animation/clip_44/name=""
animation/clip_44/start_frame=0
animation/clip_44/end_frame=0
animation/clip_44/loops=false
animation/clip_45/name=""
animation/clip_45/start_frame=0
animation/clip_45/end_frame=0
animation/clip_45/loops=false
animation/clip_46/name=""
animation/clip_46/start_frame=0
animation/clip_46/end_frame=0
animation/clip_46/loops=false
animation/clip_47/name=""
animation/clip_47/start_frame=0
animation/clip_47/end_frame=0
animation/clip_47/loops=false
animation/clip_48/name=""
animation/clip_48/start_frame=0
animation/clip_48/end_frame=0
animation/clip_48/loops=false
animation/clip_49/name=""
animation/clip_49/start_frame=0
animation/clip_49/end_frame=0
animation/clip_49/loops=false
animation/clip_50/name=""
animation/clip_50/start_frame=0
animation/clip_50/end_frame=0
animation/clip_50/loops=false
animation/clip_51/name=""
animation/clip_51/start_frame=0
animation/clip_51/end_frame=0
animation/clip_51/loops=false
animation/clip_52/name=""
animation/clip_52/start_frame=0
animation/clip_52/end_frame=0
animation/clip_52/loops=false
animation/clip_53/name=""
animation/clip_53/start_frame=0
animation/clip_53/end_frame=0
animation/clip_53/loops=false
animation/clip_54/name=""
animation/clip_54/start_frame=0
animation/clip_54/end_frame=0
animation/clip_54/loops=false
animation/clip_55/name=""
animation/clip_55/start_frame=0
animation/clip_55/end_frame=0
animation/clip_55/loops=false
animation/clip_56/name=""
animation/clip_56/start_frame=0
animation/clip_56/end_frame=0
animation/clip_56/loops=false
animation/clip_57/name=""
animation/clip_57/start_frame=0
animation/clip_57/end_frame=0
animation/clip_57/loops=false
animation/clip_58/name=""
animation/clip_58/start_frame=0
animation/clip_58/end_frame=0
animation/clip_58/loops=false
animation/clip_59/name=""
animation/clip_59/start_frame=0
animation/clip_59/end_frame=0
animation/clip_59/loops=false
animation/clip_60/name=""
animation/clip_60/start_frame=0
animation/clip_60/end_frame=0
animation/clip_60/loops=false
animation/clip_61/name=""
animation/clip_61/start_frame=0
animation/clip_61/end_frame=0
animation/clip_61/loops=false
animation/clip_62/name=""
animation/clip_62/start_frame=0
animation/clip_62/end_frame=0
animation/clip_62/loops=false
animation/clip_63/name=""
animation/clip_63/start_frame=0
animation/clip_63/end_frame=0
animation/clip_63/loops=false
animation/clip_64/name=""
animation/clip_64/start_frame=0
animation/clip_64/end_frame=0
animation/clip_64/loops=false
animation/clip_65/name=""
animation/clip_65/start_frame=0
animation/clip_65/end_frame=0
animation/clip_65/loops=false
animation/clip_66/name=""
animation/clip_66/start_frame=0
animation/clip_66/end_frame=0
animation/clip_66/loops=false
animation/clip_67/name=""
animation/clip_67/start_frame=0
animation/clip_67/end_frame=0
animation/clip_67/loops=false
animation/clip_68/name=""
animation/clip_68/start_frame=0
animation/clip_68/end_frame=0
animation/clip_68/loops=false
animation/clip_69/name=""
animation/clip_69/start_frame=0
animation/clip_69/end_frame=0
animation/clip_69/loops=false
animation/clip_70/name=""
animation/clip_70/start_frame=0
animation/clip_70/end_frame=0
animation/clip_70/loops=false
animation/clip_71/name=""
animation/clip_71/start_frame=0
animation/clip_71/end_frame=0
animation/clip_71/loops=false
animation/clip_72/name=""
animation/clip_72/start_frame=0
animation/clip_72/end_frame=0
animation/clip_72/loops=false
animation/clip_73/name=""
animation/clip_73/start_frame=0
animation/clip_73/end_frame=0
animation/clip_73/loops=false
animation/clip_74/name=""
animation/clip_74/start_frame=0
animation/clip_74/end_frame=0
animation/clip_74/loops=false
animation/clip_75/name=""
animation/clip_75/start_frame=0
animation/clip_75/end_frame=0
animation/clip_75/loops=false
animation/clip_76/name=""
animation/clip_76/start_frame=0
animation/clip_76/end_frame=0
animation/clip_76/loops=false
animation/clip_77/name=""
animation/clip_77/start_frame=0
animation/clip_77/end_frame=0
animation/clip_77/loops=false
animation/clip_78/name=""
animation/clip_78/start_frame=0
animation/clip_78/end_frame=0
animation/clip_78/loops=false
animation/clip_79/name=""
animation/clip_79/start_frame=0
animation/clip_79/end_frame=0
animation/clip_79/loops=false
animation/clip_80/name=""
animation/clip_80/start_frame=0
animation/clip_80/end_frame=0
animation/clip_80/loops=false
animation/clip_81/name=""
animation/clip_81/start_frame=0
animation/clip_81/end_frame=0
animation/clip_81/loops=false
animation/clip_82/name=""
animation/clip_82/start_frame=0
animation/clip_82/end_frame=0
animation/clip_82/loops=false
animation/clip_83/name=""
animation/clip_83/start_frame=0
animation/clip_83/end_frame=0
animation/clip_83/loops=false
animation/clip_84/name=""
animation/clip_84/start_frame=0
animation/clip_84/end_frame=0
animation/clip_84/loops=false
animation/clip_85/name=""
animation/clip_85/start_frame=0
animation/clip_85/end_frame=0
animation/clip_85/loops=false
animation/clip_86/name=""
animation/clip_86/start_frame=0
animation/clip_86/end_frame=0
animation/clip_86/loops=false
animation/clip_87/name=""
animation/clip_87/start_frame=0
animation/clip_87/end_frame=0
animation/clip_87/loops=false
animation/clip_88/name=""
animation/clip_88/start_frame=0
animation/clip_88/end_frame=0
animation/clip_88/loops=false
animation/clip_89/name=""
animation/clip_89/start_frame=0
animation/clip_89/end_frame=0
animation/clip_89/loops=false
animation/clip_90/name=""
animation/clip_90/start_frame=0
animation/clip_90/end_frame=0
animation/clip_90/loops=false
animation/clip_91/name=""
animation/clip_91/start_frame=0
animation/clip_91/end_frame=0
animation/clip_91/loops=false
animation/clip_92/name=""
animation/clip_92/start_frame=0
animation/clip_92/end_frame=0
animation/clip_92/loops=false
animation/clip_93/name=""
animation/clip_93/start_frame=0
animation/clip_93/end_frame=0
animation/clip_93/loops=false
animation/clip_94/name=""
animation/clip_94/start_frame=0
animation/clip_94/end_frame=0
animation/clip_94/loops=false
animation/clip_95/name=""
animation/clip_95/start_frame=0
animation/clip_95/end_frame=0
animation/clip_95/loops=false
animation/clip_96/name=""
animation/clip_96/start_frame=0
animation/clip_96/end_frame=0
animation/clip_96/loops=false
animation/clip_97/name=""
animation/clip_97/start_frame=0
animation/clip_97/end_frame=0
animation/clip_97/loops=false
animation/clip_98/name=""
animation/clip_98/start_frame=0
animation/clip_98/end_frame=0
animation/clip_98/loops=false
animation/clip_99/name=""
animation/clip_99/start_frame=0
animation/clip_99/end_frame=0
animation/clip_99/loops=false
animation/clip_100/name=""
animation/clip_100/start_frame=0
animation/clip_100/end_frame=0
animation/clip_100/loops=false
animation/clip_101/name=""
animation/clip_101/start_frame=0
animation/clip_101/end_frame=0
animation/clip_101/loops=false
animation/clip_102/name=""
animation/clip_102/start_frame=0
animation/clip_102/end_frame=0
animation/clip_102/loops=false
animation/clip_103/name=""
animation/clip_103/start_frame=0
animation/clip_103/end_frame=0
animation/clip_103/loops=false
animation/clip_104/name=""
animation/clip_104/start_frame=0
animation/clip_104/end_frame=0
animation/clip_104/loops=false
animation/clip_105/name=""
animation/clip_105/start_frame=0
animation/clip_105/end_frame=0
animation/clip_105/loops=false
animation/clip_106/name=""
animation/clip_106/start_frame=0
animation/clip_106/end_frame=0
animation/clip_106/loops=false
animation/clip_107/name=""
animation/clip_107/start_frame=0
animation/clip_107/end_frame=0
animation/clip_107/loops=false
animation/clip_108/name=""
animation/clip_108/start_frame=0
animation/clip_108/end_frame=0
animation/clip_108/loops=false
animation/clip_109/name=""
animation/clip_109/start_frame=0
animation/clip_109/end_frame=0
animation/clip_109/loops=false
animation/clip_110/name=""
animation/clip_110/start_frame=0
animation/clip_110/end_frame=0
animation/clip_110/loops=false
animation/clip_111/name=""
animation/clip_111/start_frame=0
animation/clip_111/end_frame=0
animation/clip_111/loops=false
animation/clip_112/name=""
animation/clip_112/start_frame=0
animation/clip_112/end_frame=0
animation/clip_112/loops=false
animation/clip_113/name=""
animation/clip_113/start_frame=0
animation/clip_113/end_frame=0
animation/clip_113/loops=false
animation/clip_114/name=""
animation/clip_114/start_frame=0
animation/clip_114/end_frame=0
animation/clip_114/loops=false
animation/clip_115/name=""
animation/clip_115/start_frame=0
animation/clip_115/end_frame=0
animation/clip_115/loops=false
animation/clip_116/name=""
animation/clip_116/start_frame=0
animation/clip_116/end_frame=0
animation/clip_116/loops=false
animation/clip_117/name=""
animation/clip_117/start_frame=0
animation/clip_117/end_frame=0
animation/clip_117/loops=false
animation/clip_118/name=""
animation/clip_118/start_frame=0
animation/clip_118/end_frame=0
animation/clip_118/loops=false
animation/clip_119/name=""
animation/clip_119/start_frame=0
animation/clip_119/end_frame=0
animation/clip_119/loops=false
animation/clip_120/name=""
animation/clip_120/start_frame=0
animation/clip_120/end_frame=0
animation/clip_120/loops=false
animation/clip_121/name=""
animation/clip_121/start_frame=0
animation/clip_121/end_frame=0
animation/clip_121/loops=false
animation/clip_122/name=""
animation/clip_122/start_frame=0
animation/clip_122/end_frame=0
animation/clip_122/loops=false
animation/clip_123/name=""
animation/clip_123/start_frame=0
animation/clip_123/end_frame=0
animation/clip_123/loops=false
animation/clip_124/name=""
animation/clip_124/start_frame=0
animation/clip_124/end_frame=0
animation/clip_124/loops=false
animation/clip_125/name=""
animation/clip_125/start_frame=0
animation/clip_125/end_frame=0
animation/clip_125/loops=false
animation/clip_126/name=""
animation/clip_126/start_frame=0
animation/clip_126/end_frame=0
animation/clip_126/loops=false
animation/clip_127/name=""
animation/clip_127/start_frame=0
animation/clip_127/end_frame=0
animation/clip_127/loops=false
animation/clip_128/name=""
animation/clip_128/start_frame=0
animation/clip_128/end_frame=0
animation/clip_128/loops=false
animation/clip_129/name=""
animation/clip_129/start_frame=0
animation/clip_129/end_frame=0
animation/clip_129/loops=false
animation/clip_130/name=""
animation/clip_130/start_frame=0
animation/clip_130/end_frame=0
animation/clip_130/loops=false
animation/clip_131/name=""
animation/clip_131/start_frame=0
animation/clip_131/end_frame=0
animation/clip_131/loops=false
animation/clip_132/name=""
animation/clip_132/start_frame=0
animation/clip_132/end_frame=0
animation/clip_132/loops=false
animation/clip_133/name=""
animation/clip_133/start_frame=0
animation/clip_133/end_frame=0
animation/clip_133/loops=false
animation/clip_134/name=""
animation/clip_134/start_frame=0
animation/clip_134/end_frame=0
animation/clip_134/loops=false
animation/clip_135/name=""
animation/clip_135/start_frame=0
animation/clip_135/end_frame=0
animation/clip_135/loops=false
animation/clip_136/name=""
animation/clip_136/start_frame=0
animation/clip_136/end_frame=0
animation/clip_136/loops=false
animation/clip_137/name=""
animation/clip_137/start_frame=0
animation/clip_137/end_frame=0
animation/clip_137/loops=false
animation/clip_138/name=""
animation/clip_138/start_frame=0
animation/clip_138/end_frame=0
animation/clip_138/loops=false
animation/clip_139/name=""
animation/clip_139/start_frame=0
animation/clip_139/end_frame=0
animation/clip_139/loops=false
animation/clip_140/name=""
animation/clip_140/start_frame=0
animation/clip_140/end_frame=0
animation/clip_140/loops=false
animation/clip_141/name=""
animation/clip_141/start_frame=0
animation/clip_141/end_frame=0
animation/clip_141/loops=false
animation/clip_142/name=""
animation/clip_142/start_frame=0
animation/clip_142/end_frame=0
animation/clip_142/loops=false
animation/clip_143/name=""
animation/clip_143/start_frame=0
animation/clip_143/end_frame=0
animation/clip_143/loops=false
animation/clip_144/name=""
animation/clip_144/start_frame=0
animation/clip_144/end_frame=0
animation/clip_144/loops=false
animation/clip_145/name=""
animation/clip_145/start_frame=0
animation/clip_145/end_frame=0
animation/clip_145/loops=false
animation/clip_146/name=""
animation/clip_146/start_frame=0
animation/clip_146/end_frame=0
animation/clip_146/loops=false
animation/clip_147/name=""
animation/clip_147/start_frame=0
animation/clip_147/end_frame=0
animation/clip_147/loops=false
animation/clip_148/name=""
animation/clip_148/start_frame=0
animation/clip_148/end_frame=0
animation/clip_148/loops=false
animation/clip_149/name=""
animation/clip_149/start_frame=0
animation/clip_149/end_frame=0
animation/clip_149/loops=false
animation/clip_150/name=""
animation/clip_150/start_frame=0
animation/clip_150/end_frame=0
animation/clip_150/loops=false
animation/clip_151/name=""
animation/clip_151/start_frame=0
animation/clip_151/end_frame=0
animation/clip_151/loops=false
animation/clip_152/name=""
animation/clip_152/start_frame=0
animation/clip_152/end_frame=0
animation/clip_152/loops=false
animation/clip_153/name=""
animation/clip_153/start_frame=0
animation/clip_153/end_frame=0
animation/clip_153/loops=false
animation/clip_154/name=""
animation/clip_154/start_frame=0
animation/clip_154/end_frame=0
animation/clip_154/loops=false
animation/clip_155/name=""
animation/clip_155/start_frame=0
animation/clip_155/end_frame=0
animation/clip_155/loops=false
animation/clip_156/name=""
animation/clip_156/start_frame=0
animation/clip_156/end_frame=0
animation/clip_156/loops=false
animation/clip_157/name=""
animation/clip_157/start_frame=0
animation/clip_157/end_frame=0
animation/clip_157/loops=false
animation/clip_158/name=""
animation/clip_158/start_frame=0
animation/clip_158/end_frame=0
animation/clip_158/loops=false
animation/clip_159/name=""
animation/clip_159/start_frame=0
animation/clip_159/end_frame=0
animation/clip_159/loops=false
animation/clip_160/name=""
animation/clip_160/start_frame=0
animation/clip_160/end_frame=0
animation/clip_160/loops=false
animation/clip_161/name=""
animation/clip_161/start_frame=0
animation/clip_161/end_frame=0
animation/clip_161/loops=false
animation/clip_162/name=""
animation/clip_162/start_frame=0
animation/clip_162/end_frame=0
animation/clip_162/loops=false
animation/clip_163/name=""
animation/clip_163/start_frame=0
animation/clip_163/end_frame=0
animation/clip_163/loops=false
animation/clip_164/name=""
animation/clip_164/start_frame=0
animation/clip_164/end_frame=0
animation/clip_164/loops=false
animation/clip_165/name=""
animation/clip_165/start_frame=0
animation/clip_165/end_frame=0
animation/clip_165/loops=false
animation/clip_166/name=""
animation/clip_166/start_frame=0
animation/clip_166/end_frame=0
animation/clip_166/loops=false
animation/clip_167/name=""
animation/clip_167/start_frame=0
animation/clip_167/end_frame=0
animation/clip_167/loops=false
animation/clip_168/name=""
animation/clip_168/start_frame=0
animation/clip_168/end_frame=0
animation/clip_168/loops=false
animation/clip_169/name=""
animation/clip_169/start_frame=0
animation/clip_169/end_frame=0
animation/clip_169/loops=false
animation/clip_170/name=""
animation/clip_170/start_frame=0
animation/clip_170/end_frame=0
animation/clip_170/loops=false
animation/clip_171/name=""
animation/clip_171/start_frame=0
animation/clip_171/end_frame=0
animation/clip_171/loops=false
animation/clip_172/name=""
animation/clip_172/start_frame=0
animation/clip_172/end_frame=0
animation/clip_172/loops=false
animation/clip_173/name=""
animation/clip_173/start_frame=0
animation/clip_173/end_frame=0
animation/clip_173/loops=false
animation/clip_174/name=""
animation/clip_174/start_frame=0
animation/clip_174/end_frame=0
animation/clip_174/loops=false
animation/clip_175/name=""
animation/clip_175/start_frame=0
animation/clip_175/end_frame=0
animation/clip_175/loops=false
animation/clip_176/name=""
animation/clip_176/start_frame=0
animation/clip_176/end_frame=0
animation/clip_176/loops=false
animation/clip_177/name=""
animation/clip_177/start_frame=0
animation/clip_177/end_frame=0
animation/clip_177/loops=false
animation/clip_178/name=""
animation/clip_178/start_frame=0
animation/clip_178/end_frame=0
animation/clip_178/loops=false
animation/clip_179/name=""
animation/clip_179/start_frame=0
animation/clip_179/end_frame=0
animation/clip_179/loops=false
animation/clip_180/name=""
animation/clip_180/start_frame=0
animation/clip_180/end_frame=0
animation/clip_180/loops=false
animation/clip_181/name=""
animation/clip_181/start_frame=0
animation/clip_181/end_frame=0
animation/clip_181/loops=false
animation/clip_182/name=""
animation/clip_182/start_frame=0
animation/clip_182/end_frame=0
animation/clip_182/loops=false
animation/clip_183/name=""
animation/clip_183/start_frame=0
animation/clip_183/end_frame=0
animation/clip_183/loops=false
animation/clip_184/name=""
animation/clip_184/start_frame=0
animation/clip_184/end_frame=0
animation/clip_184/loops=false
animation/clip_185/name=""
animation/clip_185/start_frame=0
animation/clip_185/end_frame=0
animation/clip_185/loops=false
animation/clip_186/name=""
animation/clip_186/start_frame=0
animation/clip_186/end_frame=0
animation/clip_186/loops=false
animation/clip_187/name=""
animation/clip_187/start_frame=0
animation/clip_187/end_frame=0
animation/clip_187/loops=false
animation/clip_188/name=""
animation/clip_188/start_frame=0
animation/clip_188/end_frame=0
animation/clip_188/loops=false
animation/clip_189/name=""
animation/clip_189/start_frame=0
animation/clip_189/end_frame=0
animation/clip_189/loops=false
animation/clip_190/name=""
animation/clip_190/start_frame=0
animation/clip_190/end_frame=0
animation/clip_190/loops=false
animation/clip_191/name=""
animation/clip_191/start_frame=0
animation/clip_191/end_frame=0
animation/clip_191/loops=false
animation/clip_192/name=""
animation/clip_192/start_frame=0
animation/clip_192/end_frame=0
animation/clip_192/loops=false
animation/clip_193/name=""
animation/clip_193/start_frame=0
animation/clip_193/end_frame=0
animation/clip_193/loops=false
animation/clip_194/name=""
animation/clip_194/start_frame=0
animation/clip_194/end_frame=0
animation/clip_194/loops=false
animation/clip_195/name=""
animation/clip_195/start_frame=0
animation/clip_195/end_frame=0
animation/clip_195/loops=false
animation/clip_196/name=""
animation/clip_196/start_frame=0
animation/clip_196/end_frame=0
animation/clip_196/loops=false
animation/clip_197/name=""
animation/clip_197/start_frame=0
animation/clip_197/end_frame=0
animation/clip_197/loops=false
animation/clip_198/name=""
animation/clip_198/start_frame=0
animation/clip_198/end_frame=0
animation/clip_198/loops=false
animation/clip_199/name=""
animation/clip_199/start_frame=0
animation/clip_199/end_frame=0
animation/clip_199/loops=false
animation/clip_200/name=""
animation/clip_200/start_frame=0
animation/clip_200/end_frame=0
animation/clip_200/loops=false
animation/clip_201/name=""
animation/clip_201/start_frame=0
animation/clip_201/end_frame=0
animation/clip_201/loops=false
animation/clip_202/name=""
animation/clip_202/start_frame=0
animation/clip_202/end_frame=0
animation/clip_202/loops=false
animation/clip_203/name=""
animation/clip_203/start_frame=0
animation/clip_203/end_frame=0
animation/clip_203/loops=false
animation/clip_204/name=""
animation/clip_204/start_frame=0
animation/clip_204/end_frame=0
animation/clip_204/loops=false
animation/clip_205/name=""
animation/clip_205/start_frame=0
animation/clip_205/end_frame=0
animation/clip_205/loops=false
animation/clip_206/name=""
animation/clip_206/start_frame=0
animation/clip_206/end_frame=0
animation/clip_206/loops=false
animation/clip_207/name=""
animation/clip_207/start_frame=0
animation/clip_207/end_frame=0
animation/clip_207/loops=false
animation/clip_208/name=""
animation/clip_208/start_frame=0
animation/clip_208/end_frame=0
animation/clip_208/loops=false
animation/clip_209/name=""
animation/clip_209/start_frame=0
animation/clip_209/end_frame=0
animation/clip_209/loops=false
animation/clip_210/name=""
animation/clip_210/start_frame=0
animation/clip_210/end_frame=0
animation/clip_210/loops=false
animation/clip_211/name=""
animation/clip_211/start_frame=0
animation/clip_211/end_frame=0
animation/clip_211/loops=false
animation/clip_212/name=""
animation/clip_212/start_frame=0
animation/clip_212/end_frame=0
animation/clip_212/loops=false
animation/clip_213/name=""
animation/clip_213/start_frame=0
animation/clip_213/end_frame=0
animation/clip_213/loops=false
animation/clip_214/name=""
animation/clip_214/start_frame=0
animation/clip_214/end_frame=0
animation/clip_214/loops=false
animation/clip_215/name=""
animation/clip_215/start_frame=0
animation/clip_215/end_frame=0
animation/clip_215/loops=false
animation/clip_216/name=""
animation/clip_216/start_frame=0
animation/clip_216/end_frame=0
animation/clip_216/loops=false
animation/clip_217/name=""
animation/clip_217/start_frame=0
animation/clip_217/end_frame=0
animation/clip_217/loops=false
animation/clip_218/name=""
animation/clip_218/start_frame=0
animation/clip_218/end_frame=0
animation/clip_218/loops=false
animation/clip_219/name=""
animation/clip_219/start_frame=0
animation/clip_219/end_frame=0
animation/clip_219/loops=false
animation/clip_220/name=""
animation/clip_220/start_frame=0
animation/clip_220/end_frame=0
animation/clip_220/loops=false
animation/clip_221/name=""
animation/clip_221/start_frame=0
animation/clip_221/end_frame=0
animation/clip_221/loops=false
animation/clip_222/name=""
animation/clip_222/start_frame=0
animation/clip_222/end_frame=0
animation/clip_222/loops=false
animation/clip_223/name=""
animation/clip_223/start_frame=0
animation/clip_223/end_frame=0
animation/clip_223/loops=false
animation/clip_224/name=""
animation/clip_224/start_frame=0
animation/clip_224/end_frame=0
animation/clip_224/loops=false
animation/clip_225/name=""
animation/clip_225/start_frame=0
animation/clip_225/end_frame=0
animation/clip_225/loops=false
animation/clip_226/name=""
animation/clip_226/start_frame=0
animation/clip_226/end_frame=0
animation/clip_226/loops=false
animation/clip_227/name=""
animation/clip_227/start_frame=0
animation/clip_227/end_frame=0
animation/clip_227/loops=false
animation/clip_228/name=""
animation/clip_228/start_frame=0
animation/clip_228/end_frame=0
animation/clip_228/loops=false
animation/clip_229/name=""
animation/clip_229/start_frame=0
animation/clip_229/end_frame=0
animation/clip_229/loops=false
animation/clip_230/name=""
animation/clip_230/start_frame=0
animation/clip_230/end_frame=0
animation/clip_230/loops=false
animation/clip_231/name=""
animation/clip_231/start_frame=0
animation/clip_231/end_frame=0
animation/clip_231/loops=false
animation/clip_232/name=""
animation/clip_232/start_frame=0
animation/clip_232/end_frame=0
animation/clip_232/loops=false
animation/clip_233/name=""
animation/clip_233/start_frame=0
animation/clip_233/end_frame=0
animation/clip_233/loops=false
animation/clip_234/name=""
animation/clip_234/start_frame=0
animation/clip_234/end_frame=0
animation/clip_234/loops=false
animation/clip_235/name=""
animation/clip_235/start_frame=0
animation/clip_235/end_frame=0
animation/clip_235/loops=false
animation/clip_236/name=""
animation/clip_236/start_frame=0
animation/clip_236/end_frame=0
animation/clip_236/loops=false
animation/clip_237/name=""
animation/clip_237/start_frame=0
animation/clip_237/end_frame=0
animation/clip_237/loops=false
animation/clip_238/name=""
animation/clip_238/start_frame=0
animation/clip_238/end_frame=0
animation/clip_238/loops=false
animation/clip_239/name=""
animation/clip_239/start_frame=0
animation/clip_239/end_frame=0
animation/clip_239/loops=false
animation/clip_240/name=""
animation/clip_240/start_frame=0
animation/clip_240/end_frame=0
animation/clip_240/loops=false
animation/clip_241/name=""
animation/clip_241/start_frame=0
animation/clip_241/end_frame=0
animation/clip_241/loops=false
animation/clip_242/name=""
animation/clip_242/start_frame=0
animation/clip_242/end_frame=0
animation/clip_242/loops=false
animation/clip_243/name=""
animation/clip_243/start_frame=0
animation/clip_243/end_frame=0
animation/clip_243/loops=false
animation/clip_244/name=""
animation/clip_244/start_frame=0
animation/clip_244/end_frame=0
animation/clip_244/loops=false
animation/clip_245/name=""
animation/clip_245/start_frame=0
animation/clip_245/end_frame=0
animation/clip_245/loops=false
animation/clip_246/name=""
animation/clip_246/start_frame=0
animation/clip_246/end_frame=0
animation/clip_246/loops=false
animation/clip_247/name=""
animation/clip_247/start_frame=0
animation/clip_247/end_frame=0
animation/clip_247/loops=false
animation/clip_248/name=""
animation/clip_248/start_frame=0
animation/clip_248/end_frame=0
animation/clip_248/loops=false
animation/clip_249/name=""
animation/clip_249/start_frame=0
animation/clip_249/end_frame=0
animation/clip_249/loops=false
animation/clip_250/name=""
animation/clip_250/start_frame=0
animation/clip_250/end_frame=0
animation/clip_250/loops=false
animation/clip_251/name=""
animation/clip_251/start_frame=0
animation/clip_251/end_frame=0
animation/clip_251/loops=false
animation/clip_252/name=""
animation/clip_252/start_frame=0
animation/clip_252/end_frame=0
animation/clip_252/loops=false
animation/clip_253/name=""
animation/clip_253/start_frame=0
animation/clip_253/end_frame=0
animation/clip_253/loops=false
animation/clip_254/name=""
animation/clip_254/start_frame=0
animation/clip_254/end_frame=0
animation/clip_254/loops=false
animation/clip_255/name=""
animation/clip_255/start_frame=0
animation/clip_255/end_frame=0
animation/clip_255/loops=false
animation/clip_256/name=""
animation/clip_256/start_frame=0
animation/clip_256/end_frame=0
animation/clip_256/loops=false
RSRC                     PackedScene                                                                 +      ..        resource_local_to_scene    resource_name    surfaces/0    custom_aabb/custom_aabb    script    flags_transparent    flags_unshaded    flags_on_top    flags_use_point_size    flags_fixed_size    vertex_color_use_as_albedo    vertex_color_is_srgb    params_diffuse_mode    params_blend_mode    params_cull_mode    params_depth_draw_mode    params_line_width    params_point_size    params_billboard_mode    albedo_color    albedo_texture    specular_mode    specular_color    specular_metalness    specular_roughness    specular_texture    emission_enabled    normal_enabled    rim_enabled    clearcoat_enabled    anisotropy_enabled    ao_enabled    height_enabled    subsurf_scatter_enabled    refraction_enabled    detail_enabled 
   uv1_scale    uv1_offset 
   uv2_scale    uv2_offset 	   _bundled        
   local://1 
      
   local://2 �      
   local://3 		         Mesh             Cube       
         array_data        < ��� < �   < � < < �   � ��; < �  �� � � < �   < <�� <   �� < � <    � <�; <   �; < < <    < ��� <    < <�� <   �; < < <    < � < <    < � < <   �; < < <    � <�; <    � ��; <    � ��; <�    � <�; <�   �� < � <�   �� � � <�    < <�� <  �  < ��� <  � �� � � <  � �� < � <  �       vertex_count (                array_index_data    H                  
 	   
                         index_count (   $          
   primitive (                format (              aabb     ��  �� ��  @   @  @      skeleton_aabb              blend_shape_data              name    	   Material                                  SpatialMaterial $         	   Material                     	          
                                           (              (              (              (                   �?        �?   (                 333?333?333?  �?             (                 ���=���=���=  �?         ?      �
?                                                             !          "          #          $          %          &   
     �?  �?'   
           (   
     �?  �?)   
              PackedScene    *      	         names "   "      Scene Root    input_ray_pickable    input_capture_on_drag    shape_count    collision_layer    collision_mask 	   friction    bounce    constant_linear_velocity    constant_angular_velocity    StaticBody    Cube    layers    material_override    cast_shadow    extra_cull_margin    visible_in_all_rooms    use_in_baked_light    lod_min_distance    lod_min_hysteresis    lod_max_distance    lod_max_hysteresis    mesh 	   skeleton    material/0    MeshInstance    AnimationPlayer    playback_process_mode    playback_default_blend_time 
   root_node    playback/active    playback/speed    blend_times 	   autoplay    	   variants                    (           (               �?                                                                                node_count (                nodes     O   ��������
       ����	                                                    	                        ����                                                                         	      
                     ����                  	                       !                conn_count (                 conns               node_paths              editable_instances              version (          RSRC    [remap]

importer="scene"
type="PackedScene"
path="res://.import/cube.dae-8dcb9af004f5b3c1e6a0f8dcbd4194bf.scn"

[params]

nodes/root_type="StaticBody"
nodes/root_name="Scene Root"
nodes/custom_script=""
materials/location=0
materials/storage=0
geometry/compress=true
geometry/ensure_tangents=true
geometry/storage=0
animation/import=true
animation/fps=15
animation/filter_script=""
animation/optimizer/enabled=true
animation/optimizer/max_linear_error=0.05
animation/optimizer/max_angular_error=0.01
animation/optimizer/max_angle=22
animation/optimizer/remove_unused_tracks=true
animation/clips/amount=0
animation/clip_1/name=""
animation/clip_1/start_frame=0
animation/clip_1/end_frame=0
animation/clip_1/loops=false
animation/clip_2/name=""
animation/clip_2/start_frame=0
animation/clip_2/end_frame=0
animation/clip_2/loops=false
animation/clip_3/name=""
animation/clip_3/start_frame=0
animation/clip_3/end_frame=0
animation/clip_3/loops=false
animation/clip_4/name=""
animation/clip_4/start_frame=0
animation/clip_4/end_frame=0
animation/clip_4/loops=false
animation/clip_5/name=""
animation/clip_5/start_frame=0
animation/clip_5/end_frame=0
animation/clip_5/loops=false
animation/clip_6/name=""
animation/clip_6/start_frame=0
animation/clip_6/end_frame=0
animation/clip_6/loops=false
animation/clip_7/name=""
animation/clip_7/start_frame=0
animation/clip_7/end_frame=0
animation/clip_7/loops=false
animation/clip_8/name=""
animation/clip_8/start_frame=0
animation/clip_8/end_frame=0
animation/clip_8/loops=false
animation/clip_9/name=""
animation/clip_9/start_frame=0
animation/clip_9/end_frame=0
animation/clip_9/loops=false
animation/clip_10/name=""
animation/clip_10/start_frame=0
animation/clip_10/end_frame=0
animation/clip_10/loops=false
animation/clip_11/name=""
animation/clip_11/start_frame=0
animation/clip_11/end_frame=0
animation/clip_11/loops=false
animation/clip_12/name=""
animation/clip_12/start_frame=0
animation/clip_12/end_frame=0
animation/clip_12/loops=false
animation/clip_13/name=""
animation/clip_13/start_frame=0
animation/clip_13/end_frame=0
animation/clip_13/loops=false
animation/clip_14/name=""
animation/clip_14/start_frame=0
animation/clip_14/end_frame=0
animation/clip_14/loops=false
animation/clip_15/name=""
animation/clip_15/start_frame=0
animation/clip_15/end_frame=0
animation/clip_15/loops=false
animation/clip_16/name=""
animation/clip_16/start_frame=0
animation/clip_16/end_frame=0
animation/clip_16/loops=false
animation/clip_17/name=""
animation/clip_17/start_frame=0
animation/clip_17/end_frame=0
animation/clip_17/loops=false
animation/clip_18/name=""
animation/clip_18/start_frame=0
animation/clip_18/end_frame=0
animation/clip_18/loops=false
animation/clip_19/name=""
animation/clip_19/start_frame=0
animation/clip_19/end_frame=0
animation/clip_19/loops=false
animation/clip_20/name=""
animation/clip_20/start_frame=0
animation/clip_20/end_frame=0
animation/clip_20/loops=false
animation/clip_21/name=""
animation/clip_21/start_frame=0
animation/clip_21/end_frame=0
animation/clip_21/loops=false
animation/clip_22/name=""
animation/clip_22/start_frame=0
animation/clip_22/end_frame=0
animation/clip_22/loops=false
animation/clip_23/name=""
animation/clip_23/start_frame=0
animation/clip_23/end_frame=0
animation/clip_23/loops=false
animation/clip_24/name=""
animation/clip_24/start_frame=0
animation/clip_24/end_frame=0
animation/clip_24/loops=false
animation/clip_25/name=""
animation/clip_25/start_frame=0
animation/clip_25/end_frame=0
animation/clip_25/loops=false
animation/clip_26/name=""
animation/clip_26/start_frame=0
animation/clip_26/end_frame=0
animation/clip_26/loops=false
animation/clip_27/name=""
animation/clip_27/start_frame=0
animation/clip_27/end_frame=0
animation/clip_27/loops=false
animation/clip_28/name=""
animation/clip_28/start_frame=0
animation/clip_28/end_frame=0
animation/clip_28/loops=false
animation/clip_29/name=""
animation/clip_29/start_frame=0
animation/clip_29/end_frame=0
animation/clip_29/loops=false
animation/clip_30/name=""
animation/clip_30/start_frame=0
animation/clip_30/end_frame=0
animation/clip_30/loops=false
animation/clip_31/name=""
animation/clip_31/start_frame=0
animation/clip_31/end_frame=0
animation/clip_31/loops=false
animation/clip_32/name=""
animation/clip_32/start_frame=0
animation/clip_32/end_frame=0
animation/clip_32/loops=false
animation/clip_33/name=""
animation/clip_33/start_frame=0
animation/clip_33/end_frame=0
animation/clip_33/loops=false
animation/clip_34/name=""
animation/clip_34/start_frame=0
animation/clip_34/end_frame=0
animation/clip_34/loops=false
animation/clip_35/name=""
animation/clip_35/start_frame=0
animation/clip_35/end_frame=0
animation/clip_35/loops=false
animation/clip_36/name=""
animation/clip_36/start_frame=0
animation/clip_36/end_frame=0
animation/clip_36/loops=false
animation/clip_37/name=""
animation/clip_37/start_frame=0
animation/clip_37/end_frame=0
animation/clip_37/loops=false
animation/clip_38/name=""
animation/clip_38/start_frame=0
animation/clip_38/end_frame=0
animation/clip_38/loops=false
animation/clip_39/name=""
animation/clip_39/start_frame=0
animation/clip_39/end_frame=0
animation/clip_39/loops=false
animation/clip_40/name=""
animation/clip_40/start_frame=0
animation/clip_40/end_frame=0
animation/clip_40/loops=false
animation/clip_41/name=""
animation/clip_41/start_frame=0
animation/clip_41/end_frame=0
animation/clip_41/loops=false
animation/clip_42/name=""
animation/clip_42/start_frame=0
animation/clip_42/end_frame=0
animation/clip_42/loops=false
animation/clip_43/name=""
animation/clip_43/start_frame=0
animation/clip_43/end_frame=0
animation/clip_43/loops=false
animation/clip_44/name=""
animation/clip_44/start_frame=0
animation/clip_44/end_frame=0
animation/clip_44/loops=false
animation/clip_45/name=""
animation/clip_45/start_frame=0
animation/clip_45/end_frame=0
animation/clip_45/loops=false
animation/clip_46/name=""
animation/clip_46/start_frame=0
animation/clip_46/end_frame=0
animation/clip_46/loops=false
animation/clip_47/name=""
animation/clip_47/start_frame=0
animation/clip_47/end_frame=0
animation/clip_47/loops=false
animation/clip_48/name=""
animation/clip_48/start_frame=0
animation/clip_48/end_frame=0
animation/clip_48/loops=false
animation/clip_49/name=""
animation/clip_49/start_frame=0
animation/clip_49/end_frame=0
animation/clip_49/loops=false
animation/clip_50/name=""
animation/clip_50/start_frame=0
animation/clip_50/end_frame=0
animation/clip_50/loops=false
animation/clip_51/name=""
animation/clip_51/start_frame=0
animation/clip_51/end_frame=0
animation/clip_51/loops=false
animation/clip_52/name=""
animation/clip_52/start_frame=0
animation/clip_52/end_frame=0
animation/clip_52/loops=false
animation/clip_53/name=""
animation/clip_53/start_frame=0
animation/clip_53/end_frame=0
animation/clip_53/loops=false
animation/clip_54/name=""
animation/clip_54/start_frame=0
animation/clip_54/end_frame=0
animation/clip_54/loops=false
animation/clip_55/name=""
animation/clip_55/start_frame=0
animation/clip_55/end_frame=0
animation/clip_55/loops=false
animation/clip_56/name=""
animation/clip_56/start_frame=0
animation/clip_56/end_frame=0
animation/clip_56/loops=false
animation/clip_57/name=""
animation/clip_57/start_frame=0
animation/clip_57/end_frame=0
animation/clip_57/loops=false
animation/clip_58/name=""
animation/clip_58/start_frame=0
animation/clip_58/end_frame=0
animation/clip_58/loops=false
animation/clip_59/name=""
animation/clip_59/start_frame=0
animation/clip_59/end_frame=0
animation/clip_59/loops=false
animation/clip_60/name=""
animation/clip_60/start_frame=0
animation/clip_60/end_frame=0
animation/clip_60/loops=false
animation/clip_61/name=""
animation/clip_61/start_frame=0
animation/clip_61/end_frame=0
animation/clip_61/loops=false
animation/clip_62/name=""
animation/clip_62/start_frame=0
animation/clip_62/end_frame=0
animation/clip_62/loops=false
animation/clip_63/name=""
animation/clip_63/start_frame=0
animation/clip_63/end_frame=0
animation/clip_63/loops=false
animation/clip_64/name=""
animation/clip_64/start_frame=0
animation/clip_64/end_frame=0
animation/clip_64/loops=false
animation/clip_65/name=""
animation/clip_65/start_frame=0
animation/clip_65/end_frame=0
animation/clip_65/loops=false
animation/clip_66/name=""
animation/clip_66/start_frame=0
animation/clip_66/end_frame=0
animation/clip_66/loops=false
animation/clip_67/name=""
animation/clip_67/start_frame=0
animation/clip_67/end_frame=0
animation/clip_67/loops=false
animation/clip_68/name=""
animation/clip_68/start_frame=0
animation/clip_68/end_frame=0
animation/clip_68/loops=false
animation/clip_69/name=""
animation/clip_69/start_frame=0
animation/clip_69/end_frame=0
animation/clip_69/loops=false
animation/clip_70/name=""
animation/clip_70/start_frame=0
animation/clip_70/end_frame=0
animation/clip_70/loops=false
animation/clip_71/name=""
animation/clip_71/start_frame=0
animation/clip_71/end_frame=0
animation/clip_71/loops=false
animation/clip_72/name=""
animation/clip_72/start_frame=0
animation/clip_72/end_frame=0
animation/clip_72/loops=false
animation/clip_73/name=""
animation/clip_73/start_frame=0
animation/clip_73/end_frame=0
animation/clip_73/loops=false
animation/clip_74/name=""
animation/clip_74/start_frame=0
animation/clip_74/end_frame=0
animation/clip_74/loops=false
animation/clip_75/name=""
animation/clip_75/start_frame=0
animation/clip_75/end_frame=0
animation/clip_75/loops=false
animation/clip_76/name=""
animation/clip_76/start_frame=0
animation/clip_76/end_frame=0
animation/clip_76/loops=false
animation/clip_77/name=""
animation/clip_77/start_frame=0
animation/clip_77/end_frame=0
animation/clip_77/loops=false
animation/clip_78/name=""
animation/clip_78/start_frame=0
animation/clip_78/end_frame=0
animation/clip_78/loops=false
animation/clip_79/name=""
animation/clip_79/start_frame=0
animation/clip_79/end_frame=0
animation/clip_79/loops=false
animation/clip_80/name=""
animation/clip_80/start_frame=0
animation/clip_80/end_frame=0
animation/clip_80/loops=false
animation/clip_81/name=""
animation/clip_81/start_frame=0
animation/clip_81/end_frame=0
animation/clip_81/loops=false
animation/clip_82/name=""
animation/clip_82/start_frame=0
animation/clip_82/end_frame=0
animation/clip_82/loops=false
animation/clip_83/name=""
animation/clip_83/start_frame=0
animation/clip_83/end_frame=0
animation/clip_83/loops=false
animation/clip_84/name=""
animation/clip_84/start_frame=0
animation/clip_84/end_frame=0
animation/clip_84/loops=false
animation/clip_85/name=""
animation/clip_85/start_frame=0
animation/clip_85/end_frame=0
animation/clip_85/loops=false
animation/clip_86/name=""
animation/clip_86/start_frame=0
animation/clip_86/end_frame=0
animation/clip_86/loops=false
animation/clip_87/name=""
animation/clip_87/start_frame=0
animation/clip_87/end_frame=0
animation/clip_87/loops=false
animation/clip_88/name=""
animation/clip_88/start_frame=0
animation/clip_88/end_frame=0
animation/clip_88/loops=false
animation/clip_89/name=""
animation/clip_89/start_frame=0
animation/clip_89/end_frame=0
animation/clip_89/loops=false
animation/clip_90/name=""
animation/clip_90/start_frame=0
animation/clip_90/end_frame=0
animation/clip_90/loops=false
animation/clip_91/name=""
animation/clip_91/start_frame=0
animation/clip_91/end_frame=0
animation/clip_91/loops=false
animation/clip_92/name=""
animation/clip_92/start_frame=0
animation/clip_92/end_frame=0
animation/clip_92/loops=false
animation/clip_93/name=""
animation/clip_93/start_frame=0
animation/clip_93/end_frame=0
animation/clip_93/loops=false
animation/clip_94/name=""
animation/clip_94/start_frame=0
animation/clip_94/end_frame=0
animation/clip_94/loops=false
animation/clip_95/name=""
animation/clip_95/start_frame=0
animation/clip_95/end_frame=0
animation/clip_95/loops=false
animation/clip_96/name=""
animation/clip_96/start_frame=0
animation/clip_96/end_frame=0
animation/clip_96/loops=false
animation/clip_97/name=""
animation/clip_97/start_frame=0
animation/clip_97/end_frame=0
animation/clip_97/loops=false
animation/clip_98/name=""
animation/clip_98/start_frame=0
animation/clip_98/end_frame=0
animation/clip_98/loops=false
animation/clip_99/name=""
animation/clip_99/start_frame=0
animation/clip_99/end_frame=0
animation/clip_99/loops=false
animation/clip_100/name=""
animation/clip_100/start_frame=0
animation/clip_100/end_frame=0
animation/clip_100/loops=false
animation/clip_101/name=""
animation/clip_101/start_frame=0
animation/clip_101/end_frame=0
animation/clip_101/loops=false
animation/clip_102/name=""
animation/clip_102/start_frame=0
animation/clip_102/end_frame=0
animation/clip_102/loops=false
animation/clip_103/name=""
animation/clip_103/start_frame=0
animation/clip_103/end_frame=0
animation/clip_103/loops=false
animation/clip_104/name=""
animation/clip_104/start_frame=0
animation/clip_104/end_frame=0
animation/clip_104/loops=false
animation/clip_105/name=""
animation/clip_105/start_frame=0
animation/clip_105/end_frame=0
animation/clip_105/loops=false
animation/clip_106/name=""
animation/clip_106/start_frame=0
animation/clip_106/end_frame=0
animation/clip_106/loops=false
animation/clip_107/name=""
animation/clip_107/start_frame=0
animation/clip_107/end_frame=0
animation/clip_107/loops=false
animation/clip_108/name=""
animation/clip_108/start_frame=0
animation/clip_108/end_frame=0
animation/clip_108/loops=false
animation/clip_109/name=""
animation/clip_109/start_frame=0
animation/clip_109/end_frame=0
animation/clip_109/loops=false
animation/clip_110/name=""
animation/clip_110/start_frame=0
animation/clip_110/end_frame=0
animation/clip_110/loops=false
animation/clip_111/name=""
animation/clip_111/start_frame=0
animation/clip_111/end_frame=0
animation/clip_111/loops=false
animation/clip_112/name=""
animation/clip_112/start_frame=0
animation/clip_112/end_frame=0
animation/clip_112/loops=false
animation/clip_113/name=""
animation/clip_113/start_frame=0
animation/clip_113/end_frame=0
animation/clip_113/loops=false
animation/clip_114/name=""
animation/clip_114/start_frame=0
animation/clip_114/end_frame=0
animation/clip_114/loops=false
animation/clip_115/name=""
animation/clip_115/start_frame=0
animation/clip_115/end_frame=0
animation/clip_115/loops=false
animation/clip_116/name=""
animation/clip_116/start_frame=0
animation/clip_116/end_frame=0
animation/clip_116/loops=false
animation/clip_117/name=""
animation/clip_117/start_frame=0
animation/clip_117/end_frame=0
animation/clip_117/loops=false
animation/clip_118/name=""
animation/clip_118/start_frame=0
animation/clip_118/end_frame=0
animation/clip_118/loops=false
animation/clip_119/name=""
animation/clip_119/start_frame=0
animation/clip_119/end_frame=0
animation/clip_119/loops=false
animation/clip_120/name=""
animation/clip_120/start_frame=0
animation/clip_120/end_frame=0
animation/clip_120/loops=false
animation/clip_121/name=""
animation/clip_121/start_frame=0
animation/clip_121/end_frame=0
animation/clip_121/loops=false
animation/clip_122/name=""
animation/clip_122/start_frame=0
animation/clip_122/end_frame=0
animation/clip_122/loops=false
animation/clip_123/name=""
animation/clip_123/start_frame=0
animation/clip_123/end_frame=0
animation/clip_123/loops=false
animation/clip_124/name=""
animation/clip_124/start_frame=0
animation/clip_124/end_frame=0
animation/clip_124/loops=false
animation/clip_125/name=""
animation/clip_125/start_frame=0
animation/clip_125/end_frame=0
animation/clip_125/loops=false
animation/clip_126/name=""
animation/clip_126/start_frame=0
animation/clip_126/end_frame=0
animation/clip_126/loops=false
animation/clip_127/name=""
animation/clip_127/start_frame=0
animation/clip_127/end_frame=0
animation/clip_127/loops=false
animation/clip_128/name=""
animation/clip_128/start_frame=0
animation/clip_128/end_frame=0
animation/clip_128/loops=false
animation/clip_129/name=""
animation/clip_129/start_frame=0
animation/clip_129/end_frame=0
animation/clip_129/loops=false
animation/clip_130/name=""
animation/clip_130/start_frame=0
animation/clip_130/end_frame=0
animation/clip_130/loops=false
animation/clip_131/name=""
animation/clip_131/start_frame=0
animation/clip_131/end_frame=0
animation/clip_131/loops=false
animation/clip_132/name=""
animation/clip_132/start_frame=0
animation/clip_132/end_frame=0
animation/clip_132/loops=false
animation/clip_133/name=""
animation/clip_133/start_frame=0
animation/clip_133/end_frame=0
animation/clip_133/loops=false
animation/clip_134/name=""
animation/clip_134/start_frame=0
animation/clip_134/end_frame=0
animation/clip_134/loops=false
animation/clip_135/name=""
animation/clip_135/start_frame=0
animation/clip_135/end_frame=0
animation/clip_135/loops=false
animation/clip_136/name=""
animation/clip_136/start_frame=0
animation/clip_136/end_frame=0
animation/clip_136/loops=false
animation/clip_137/name=""
animation/clip_137/start_frame=0
animation/clip_137/end_frame=0
animation/clip_137/loops=false
animation/clip_138/name=""
animation/clip_138/start_frame=0
animation/clip_138/end_frame=0
animation/clip_138/loops=false
animation/clip_139/name=""
animation/clip_139/start_frame=0
animation/clip_139/end_frame=0
animation/clip_139/loops=false
animation/clip_140/name=""
animation/clip_140/start_frame=0
animation/clip_140/end_frame=0
animation/clip_140/loops=false
animation/clip_141/name=""
animation/clip_141/start_frame=0
animation/clip_141/end_frame=0
animation/clip_141/loops=false
animation/clip_142/name=""
animation/clip_142/start_frame=0
animation/clip_142/end_frame=0
animation/clip_142/loops=false
animation/clip_143/name=""
animation/clip_143/start_frame=0
animation/clip_143/end_frame=0
animation/clip_143/loops=false
animation/clip_144/name=""
animation/clip_144/start_frame=0
animation/clip_144/end_frame=0
animation/clip_144/loops=false
animation/clip_145/name=""
animation/clip_145/start_frame=0
animation/clip_145/end_frame=0
animation/clip_145/loops=false
animation/clip_146/name=""
animation/clip_146/start_frame=0
animation/clip_146/end_frame=0
animation/clip_146/loops=false
animation/clip_147/name=""
animation/clip_147/start_frame=0
animation/clip_147/end_frame=0
animation/clip_147/loops=false
animation/clip_148/name=""
animation/clip_148/start_frame=0
animation/clip_148/end_frame=0
animation/clip_148/loops=false
animation/clip_149/name=""
animation/clip_149/start_frame=0
animation/clip_149/end_frame=0
animation/clip_149/loops=false
animation/clip_150/name=""
animation/clip_150/start_frame=0
animation/clip_150/end_frame=0
animation/clip_150/loops=false
animation/clip_151/name=""
animation/clip_151/start_frame=0
animation/clip_151/end_frame=0
animation/clip_151/loops=false
animation/clip_152/name=""
animation/clip_152/start_frame=0
animation/clip_152/end_frame=0
animation/clip_152/loops=false
animation/clip_153/name=""
animation/clip_153/start_frame=0
animation/clip_153/end_frame=0
animation/clip_153/loops=false
animation/clip_154/name=""
animation/clip_154/start_frame=0
animation/clip_154/end_frame=0
animation/clip_154/loops=false
animation/clip_155/name=""
animation/clip_155/start_frame=0
animation/clip_155/end_frame=0
animation/clip_155/loops=false
animation/clip_156/name=""
animation/clip_156/start_frame=0
animation/clip_156/end_frame=0
animation/clip_156/loops=false
animation/clip_157/name=""
animation/clip_157/start_frame=0
animation/clip_157/end_frame=0
animation/clip_157/loops=false
animation/clip_158/name=""
animation/clip_158/start_frame=0
animation/clip_158/end_frame=0
animation/clip_158/loops=false
animation/clip_159/name=""
animation/clip_159/start_frame=0
animation/clip_159/end_frame=0
animation/clip_159/loops=false
animation/clip_160/name=""
animation/clip_160/start_frame=0
animation/clip_160/end_frame=0
animation/clip_160/loops=false
animation/clip_161/name=""
animation/clip_161/start_frame=0
animation/clip_161/end_frame=0
animation/clip_161/loops=false
animation/clip_162/name=""
animation/clip_162/start_frame=0
animation/clip_162/end_frame=0
animation/clip_162/loops=false
animation/clip_163/name=""
animation/clip_163/start_frame=0
animation/clip_163/end_frame=0
animation/clip_163/loops=false
animation/clip_164/name=""
animation/clip_164/start_frame=0
animation/clip_164/end_frame=0
animation/clip_164/loops=false
animation/clip_165/name=""
animation/clip_165/start_frame=0
animation/clip_165/end_frame=0
animation/clip_165/loops=false
animation/clip_166/name=""
animation/clip_166/start_frame=0
animation/clip_166/end_frame=0
animation/clip_166/loops=false
animation/clip_167/name=""
animation/clip_167/start_frame=0
animation/clip_167/end_frame=0
animation/clip_167/loops=false
animation/clip_168/name=""
animation/clip_168/start_frame=0
animation/clip_168/end_frame=0
animation/clip_168/loops=false
animation/clip_169/name=""
animation/clip_169/start_frame=0
animation/clip_169/end_frame=0
animation/clip_169/loops=false
animation/clip_170/name=""
animation/clip_170/start_frame=0
animation/clip_170/end_frame=0
animation/clip_170/loops=false
animation/clip_171/name=""
animation/clip_171/start_frame=0
animation/clip_171/end_frame=0
animation/clip_171/loops=false
animation/clip_172/name=""
animation/clip_172/start_frame=0
animation/clip_172/end_frame=0
animation/clip_172/loops=false
animation/clip_173/name=""
animation/clip_173/start_frame=0
animation/clip_173/end_frame=0
animation/clip_173/loops=false
animation/clip_174/name=""
animation/clip_174/start_frame=0
animation/clip_174/end_frame=0
animation/clip_174/loops=false
animation/clip_175/name=""
animation/clip_175/start_frame=0
animation/clip_175/end_frame=0
animation/clip_175/loops=false
animation/clip_176/name=""
animation/clip_176/start_frame=0
animation/clip_176/end_frame=0
animation/clip_176/loops=false
animation/clip_177/name=""
animation/clip_177/start_frame=0
animation/clip_177/end_frame=0
animation/clip_177/loops=false
animation/clip_178/name=""
animation/clip_178/start_frame=0
animation/clip_178/end_frame=0
animation/clip_178/loops=false
animation/clip_179/name=""
animation/clip_179/start_frame=0
animation/clip_179/end_frame=0
animation/clip_179/loops=false
animation/clip_180/name=""
animation/clip_180/start_frame=0
animation/clip_180/end_frame=0
animation/clip_180/loops=false
animation/clip_181/name=""
animation/clip_181/start_frame=0
animation/clip_181/end_frame=0
animation/clip_181/loops=false
animation/clip_182/name=""
animation/clip_182/start_frame=0
animation/clip_182/end_frame=0
animation/clip_182/loops=false
animation/clip_183/name=""
animation/clip_183/start_frame=0
animation/clip_183/end_frame=0
animation/clip_183/loops=false
animation/clip_184/name=""
animation/clip_184/start_frame=0
animation/clip_184/end_frame=0
animation/clip_184/loops=false
animation/clip_185/name=""
animation/clip_185/start_frame=0
animation/clip_185/end_frame=0
animation/clip_185/loops=false
animation/clip_186/name=""
animation/clip_186/start_frame=0
animation/clip_186/end_frame=0
animation/clip_186/loops=false
animation/clip_187/name=""
animation/clip_187/start_frame=0
animation/clip_187/end_frame=0
animation/clip_187/loops=false
animation/clip_188/name=""
animation/clip_188/start_frame=0
animation/clip_188/end_frame=0
animation/clip_188/loops=false
animation/clip_189/name=""
animation/clip_189/start_frame=0
animation/clip_189/end_frame=0
animation/clip_189/loops=false
animation/clip_190/name=""
animation/clip_190/start_frame=0
animation/clip_190/end_frame=0
animation/clip_190/loops=false
animation/clip_191/name=""
animation/clip_191/start_frame=0
animation/clip_191/end_frame=0
animation/clip_191/loops=false
animation/clip_192/name=""
animation/clip_192/start_frame=0
animation/clip_192/end_frame=0
animation/clip_192/loops=false
animation/clip_193/name=""
animation/clip_193/start_frame=0
animation/clip_193/end_frame=0
animation/clip_193/loops=false
animation/clip_194/name=""
animation/clip_194/start_frame=0
animation/clip_194/end_frame=0
animation/clip_194/loops=false
animation/clip_195/name=""
animation/clip_195/start_frame=0
animation/clip_195/end_frame=0
animation/clip_195/loops=false
animation/clip_196/name=""
animation/clip_196/start_frame=0
animation/clip_196/end_frame=0
animation/clip_196/loops=false
animation/clip_197/name=""
animation/clip_197/start_frame=0
animation/clip_197/end_frame=0
animation/clip_197/loops=false
animation/clip_198/name=""
animation/clip_198/start_frame=0
animation/clip_198/end_frame=0
animation/clip_198/loops=false
animation/clip_199/name=""
animation/clip_199/start_frame=0
animation/clip_199/end_frame=0
animation/clip_199/loops=false
animation/clip_200/name=""
animation/clip_200/start_frame=0
animation/clip_200/end_frame=0
animation/clip_200/loops=false
animation/clip_201/name=""
animation/clip_201/start_frame=0
animation/clip_201/end_frame=0
animation/clip_201/loops=false
animation/clip_202/name=""
animation/clip_202/start_frame=0
animation/clip_202/end_frame=0
animation/clip_202/loops=false
animation/clip_203/name=""
animation/clip_203/start_frame=0
animation/clip_203/end_frame=0
animation/clip_203/loops=false
animation/clip_204/name=""
animation/clip_204/start_frame=0
animation/clip_204/end_frame=0
animation/clip_204/loops=false
animation/clip_205/name=""
animation/clip_205/start_frame=0
animation/clip_205/end_frame=0
animation/clip_205/loops=false
animation/clip_206/name=""
animation/clip_206/start_frame=0
animation/clip_206/end_frame=0
animation/clip_206/loops=false
animation/clip_207/name=""
animation/clip_207/start_frame=0
animation/clip_207/end_frame=0
animation/clip_207/loops=false
animation/clip_208/name=""
animation/clip_208/start_frame=0
animation/clip_208/end_frame=0
animation/clip_208/loops=false
animation/clip_209/name=""
animation/clip_209/start_frame=0
animation/clip_209/end_frame=0
animation/clip_209/loops=false
animation/clip_210/name=""
animation/clip_210/start_frame=0
animation/clip_210/end_frame=0
animation/clip_210/loops=false
animation/clip_211/name=""
animation/clip_211/start_frame=0
animation/clip_211/end_frame=0
animation/clip_211/loops=false
animation/clip_212/name=""
animation/clip_212/start_frame=0
animation/clip_212/end_frame=0
animation/clip_212/loops=false
animation/clip_213/name=""
animation/clip_213/start_frame=0
animation/clip_213/end_frame=0
animation/clip_213/loops=false
animation/clip_214/name=""
animation/clip_214/start_frame=0
animation/clip_214/end_frame=0
animation/clip_214/loops=false
animation/clip_215/name=""
animation/clip_215/start_frame=0
animation/clip_215/end_frame=0
animation/clip_215/loops=false
animation/clip_216/name=""
animation/clip_216/start_frame=0
animation/clip_216/end_frame=0
animation/clip_216/loops=false
animation/clip_217/name=""
animation/clip_217/start_frame=0
animation/clip_217/end_frame=0
animation/clip_217/loops=false
animation/clip_218/name=""
animation/clip_218/start_frame=0
animation/clip_218/end_frame=0
animation/clip_218/loops=false
animation/clip_219/name=""
animation/clip_219/start_frame=0
animation/clip_219/end_frame=0
animation/clip_219/loops=false
animation/clip_220/name=""
animation/clip_220/start_frame=0
animation/clip_220/end_frame=0
animation/clip_220/loops=false
animation/clip_221/name=""
animation/clip_221/start_frame=0
animation/clip_221/end_frame=0
animation/clip_221/loops=false
animation/clip_222/name=""
animation/clip_222/start_frame=0
animation/clip_222/end_frame=0
animation/clip_222/loops=false
animation/clip_223/name=""
animation/clip_223/start_frame=0
animation/clip_223/end_frame=0
animation/clip_223/loops=false
animation/clip_224/name=""
animation/clip_224/start_frame=0
animation/clip_224/end_frame=0
animation/clip_224/loops=false
animation/clip_225/name=""
animation/clip_225/start_frame=0
animation/clip_225/end_frame=0
animation/clip_225/loops=false
animation/clip_226/name=""
animation/clip_226/start_frame=0
animation/clip_226/end_frame=0
animation/clip_226/loops=false
animation/clip_227/name=""
animation/clip_227/start_frame=0
animation/clip_227/end_frame=0
animation/clip_227/loops=false
animation/clip_228/name=""
animation/clip_228/start_frame=0
animation/clip_228/end_frame=0
animation/clip_228/loops=false
animation/clip_229/name=""
animation/clip_229/start_frame=0
animation/clip_229/end_frame=0
animation/clip_229/loops=false
animation/clip_230/name=""
animation/clip_230/start_frame=0
animation/clip_230/end_frame=0
animation/clip_230/loops=false
animation/clip_231/name=""
animation/clip_231/start_frame=0
animation/clip_231/end_frame=0
animation/clip_231/loops=false
animation/clip_232/name=""
animation/clip_232/start_frame=0
animation/clip_232/end_frame=0
animation/clip_232/loops=false
animation/clip_233/name=""
animation/clip_233/start_frame=0
animation/clip_233/end_frame=0
animation/clip_233/loops=false
animation/clip_234/name=""
animation/clip_234/start_frame=0
animation/clip_234/end_frame=0
animation/clip_234/loops=false
animation/clip_235/name=""
animation/clip_235/start_frame=0
animation/clip_235/end_frame=0
animation/clip_235/loops=false
animation/clip_236/name=""
animation/clip_236/start_frame=0
animation/clip_236/end_frame=0
animation/clip_236/loops=false
animation/clip_237/name=""
animation/clip_237/start_frame=0
animation/clip_237/end_frame=0
animation/clip_237/loops=false
animation/clip_238/name=""
animation/clip_238/start_frame=0
animation/clip_238/end_frame=0
animation/clip_238/loops=false
animation/clip_239/name=""
animation/clip_239/start_frame=0
animation/clip_239/end_frame=0
animation/clip_239/loops=false
animation/clip_240/name=""
animation/clip_240/start_frame=0
animation/clip_240/end_frame=0
animation/clip_240/loops=false
animation/clip_241/name=""
animation/clip_241/start_frame=0
animation/clip_241/end_frame=0
animation/clip_241/loops=false
animation/clip_242/name=""
animation/clip_242/start_frame=0
animation/clip_242/end_frame=0
animation/clip_242/loops=false
animation/clip_243/name=""
animation/clip_243/start_frame=0
animation/clip_243/end_frame=0
animation/clip_243/loops=false
animation/clip_244/name=""
animation/clip_244/start_frame=0
animation/clip_244/end_frame=0
animation/clip_244/loops=false
animation/clip_245/name=""
animation/clip_245/start_frame=0
animation/clip_245/end_frame=0
animation/clip_245/loops=false
animation/clip_246/name=""
animation/clip_246/start_frame=0
animation/clip_246/end_frame=0
animation/clip_246/loops=false
animation/clip_247/name=""
animation/clip_247/start_frame=0
animation/clip_247/end_frame=0
animation/clip_247/loops=false
animation/clip_248/name=""
animation/clip_248/start_frame=0
animation/clip_248/end_frame=0
animation/clip_248/loops=false
animation/clip_249/name=""
animation/clip_249/start_frame=0
animation/clip_249/end_frame=0
animation/clip_249/loops=false
animation/clip_250/name=""
animation/clip_250/start_frame=0
animation/clip_250/end_frame=0
animation/clip_250/loops=false
animation/clip_251/name=""
animation/clip_251/start_frame=0
animation/clip_251/end_frame=0
animation/clip_251/loops=false
animation/clip_252/name=""
animation/clip_252/start_frame=0
animation/clip_252/end_frame=0
animation/clip_252/loops=false
animation/clip_253/name=""
animation/clip_253/start_frame=0
animation/clip_253/end_frame=0
animation/clip_253/loops=false
animation/clip_254/name=""
animation/clip_254/start_frame=0
animation/clip_254/end_frame=0
animation/clip_254/loops=false
animation/clip_255/name=""
animation/clip_255/start_frame=0
animation/clip_255/end_frame=0
animation/clip_255/loops=false
animation/clip_256/name=""
animation/clip_256/start_frame=0
animation/clip_256/end_frame=0
animation/clip_256/loops=false
   RSRC                     PackedScene                                                                       ..        resource_local_to_scene    resource_name    surfaces/0    custom_aabb/custom_aabb    script 	   _bundled        
   local://1       
   local://2          Mesh          	   Cube.001       	         array_data       ���>�< <�   �������B   <�   �������B   <�   �������>�� <�   �������>�� < F� �������B   < F� �����<�B/  < F� �����<�>�� < F� �����<�>�� <   �����<�B/  <   �����<�B   <   �����<�>�< <   �����<�>�< < Ej �����<�B   < Ej �������B   < Ej �������>�< < Ej �������>�� < �  �����<�>�� < �  �����<�>�< < �  �������>�< < �  �����<�B/  < �� �������B   < �� �������B   < �� �����<�B   < �� ����E�  D; <��  ���� � ? < <��  ���� � ? � <��  ����&�  � <��  ����&�  � < �� ���� � ? � < �� ���� < ? � < �� ����(:  E� < �� ����(:  E� <~�� ���� < ? � <~�� ���� < ? < <~�� �����:   ; <~�� �����:   ; < �~ ���� < ? < < �~ ���� � ? < < �~ ����E�  D; < �~ ����&�  � < �  ����(:  E� < �  �����:   ; < �  ����E�  D; < �  ���� < ? � <   ���� � ? � <   ���� � ? < <   ���� < ? < <   ����      vertex_count (   0             array_index_data    �                  
 	   
                                 " !   # " $ & % $ ' & ( * ) ( + * , . - , / .       index_count (   H          
   primitive (                format (              aabb    UU��    UU��UU@��Z@UU@      skeleton_aabb              blend_shape_data                                         PackedScene          	         names "         Scene Root    Spatial    Cube.1 
   transform    layers    material_override    cast_shadow    extra_cull_margin    visible_in_all_rooms    use_in_baked_light    lod_min_distance    lod_min_hysteresis    lod_max_distance    lod_max_hysteresis    mesh 	   skeleton    material/0    MeshInstance    AnimationPlayer    playback_process_mode    playback_default_blend_time 
   root_node    playback/active    playback/speed    blend_times 	   autoplay    	   variants          ��?            ���>            ��?            (                                                                �?                    node_count (                nodes     ?   ��������       ����                      ����                                        	      
                                                            ����                                    	      
             conn_count (                 conns               node_paths              editable_instances              version (          RSRC      [remap]

importer="scene"
type="PackedScene"
path="res://.import/house.dae-7267165f26e008207906714369cc0135.scn"

[params]

nodes/root_type="Spatial"
nodes/root_name="Scene Root"
nodes/custom_script=""
materials/location=0
materials/storage=0
geometry/compress=true
geometry/ensure_tangents=true
geometry/storage=0
animation/import=true
animation/fps=15
animation/filter_script=""
animation/optimizer/enabled=true
animation/optimizer/max_linear_error=0.05
animation/optimizer/max_angular_error=0.01
animation/optimizer/max_angle=22
animation/optimizer/remove_unused_tracks=true
animation/clips/amount=0
animation/clip_1/name=""
animation/clip_1/start_frame=0
animation/clip_1/end_frame=0
animation/clip_1/loops=false
animation/clip_2/name=""
animation/clip_2/start_frame=0
animation/clip_2/end_frame=0
animation/clip_2/loops=false
animation/clip_3/name=""
animation/clip_3/start_frame=0
animation/clip_3/end_frame=0
animation/clip_3/loops=false
animation/clip_4/name=""
animation/clip_4/start_frame=0
animation/clip_4/end_frame=0
animation/clip_4/loops=false
animation/clip_5/name=""
animation/clip_5/start_frame=0
animation/clip_5/end_frame=0
animation/clip_5/loops=false
animation/clip_6/name=""
animation/clip_6/start_frame=0
animation/clip_6/end_frame=0
animation/clip_6/loops=false
animation/clip_7/name=""
animation/clip_7/start_frame=0
animation/clip_7/end_frame=0
animation/clip_7/loops=false
animation/clip_8/name=""
animation/clip_8/start_frame=0
animation/clip_8/end_frame=0
animation/clip_8/loops=false
animation/clip_9/name=""
animation/clip_9/start_frame=0
animation/clip_9/end_frame=0
animation/clip_9/loops=false
animation/clip_10/name=""
animation/clip_10/start_frame=0
animation/clip_10/end_frame=0
animation/clip_10/loops=false
animation/clip_11/name=""
animation/clip_11/start_frame=0
animation/clip_11/end_frame=0
animation/clip_11/loops=false
animation/clip_12/name=""
animation/clip_12/start_frame=0
animation/clip_12/end_frame=0
animation/clip_12/loops=false
animation/clip_13/name=""
animation/clip_13/start_frame=0
animation/clip_13/end_frame=0
animation/clip_13/loops=false
animation/clip_14/name=""
animation/clip_14/start_frame=0
animation/clip_14/end_frame=0
animation/clip_14/loops=false
animation/clip_15/name=""
animation/clip_15/start_frame=0
animation/clip_15/end_frame=0
animation/clip_15/loops=false
animation/clip_16/name=""
animation/clip_16/start_frame=0
animation/clip_16/end_frame=0
animation/clip_16/loops=false
animation/clip_17/name=""
animation/clip_17/start_frame=0
animation/clip_17/end_frame=0
animation/clip_17/loops=false
animation/clip_18/name=""
animation/clip_18/start_frame=0
animation/clip_18/end_frame=0
animation/clip_18/loops=false
animation/clip_19/name=""
animation/clip_19/start_frame=0
animation/clip_19/end_frame=0
animation/clip_19/loops=false
animation/clip_20/name=""
animation/clip_20/start_frame=0
animation/clip_20/end_frame=0
animation/clip_20/loops=false
animation/clip_21/name=""
animation/clip_21/start_frame=0
animation/clip_21/end_frame=0
animation/clip_21/loops=false
animation/clip_22/name=""
animation/clip_22/start_frame=0
animation/clip_22/end_frame=0
animation/clip_22/loops=false
animation/clip_23/name=""
animation/clip_23/start_frame=0
animation/clip_23/end_frame=0
animation/clip_23/loops=false
animation/clip_24/name=""
animation/clip_24/start_frame=0
animation/clip_24/end_frame=0
animation/clip_24/loops=false
animation/clip_25/name=""
animation/clip_25/start_frame=0
animation/clip_25/end_frame=0
animation/clip_25/loops=false
animation/clip_26/name=""
animation/clip_26/start_frame=0
animation/clip_26/end_frame=0
animation/clip_26/loops=false
animation/clip_27/name=""
animation/clip_27/start_frame=0
animation/clip_27/end_frame=0
animation/clip_27/loops=false
animation/clip_28/name=""
animation/clip_28/start_frame=0
animation/clip_28/end_frame=0
animation/clip_28/loops=false
animation/clip_29/name=""
animation/clip_29/start_frame=0
animation/clip_29/end_frame=0
animation/clip_29/loops=false
animation/clip_30/name=""
animation/clip_30/start_frame=0
animation/clip_30/end_frame=0
animation/clip_30/loops=false
animation/clip_31/name=""
animation/clip_31/start_frame=0
animation/clip_31/end_frame=0
animation/clip_31/loops=false
animation/clip_32/name=""
animation/clip_32/start_frame=0
animation/clip_32/end_frame=0
animation/clip_32/loops=false
animation/clip_33/name=""
animation/clip_33/start_frame=0
animation/clip_33/end_frame=0
animation/clip_33/loops=false
animation/clip_34/name=""
animation/clip_34/start_frame=0
animation/clip_34/end_frame=0
animation/clip_34/loops=false
animation/clip_35/name=""
animation/clip_35/start_frame=0
animation/clip_35/end_frame=0
animation/clip_35/loops=false
animation/clip_36/name=""
animation/clip_36/start_frame=0
animation/clip_36/end_frame=0
animation/clip_36/loops=false
animation/clip_37/name=""
animation/clip_37/start_frame=0
animation/clip_37/end_frame=0
animation/clip_37/loops=false
animation/clip_38/name=""
animation/clip_38/start_frame=0
animation/clip_38/end_frame=0
animation/clip_38/loops=false
animation/clip_39/name=""
animation/clip_39/start_frame=0
animation/clip_39/end_frame=0
animation/clip_39/loops=false
animation/clip_40/name=""
animation/clip_40/start_frame=0
animation/clip_40/end_frame=0
animation/clip_40/loops=false
animation/clip_41/name=""
animation/clip_41/start_frame=0
animation/clip_41/end_frame=0
animation/clip_41/loops=false
animation/clip_42/name=""
animation/clip_42/start_frame=0
animation/clip_42/end_frame=0
animation/clip_42/loops=false
animation/clip_43/name=""
animation/clip_43/start_frame=0
animation/clip_43/end_frame=0
animation/clip_43/loops=false
animation/clip_44/name=""
animation/clip_44/start_frame=0
animation/clip_44/end_frame=0
animation/clip_44/loops=false
animation/clip_45/name=""
animation/clip_45/start_frame=0
animation/clip_45/end_frame=0
animation/clip_45/loops=false
animation/clip_46/name=""
animation/clip_46/start_frame=0
animation/clip_46/end_frame=0
animation/clip_46/loops=false
animation/clip_47/name=""
animation/clip_47/start_frame=0
animation/clip_47/end_frame=0
animation/clip_47/loops=false
animation/clip_48/name=""
animation/clip_48/start_frame=0
animation/clip_48/end_frame=0
animation/clip_48/loops=false
animation/clip_49/name=""
animation/clip_49/start_frame=0
animation/clip_49/end_frame=0
animation/clip_49/loops=false
animation/clip_50/name=""
animation/clip_50/start_frame=0
animation/clip_50/end_frame=0
animation/clip_50/loops=false
animation/clip_51/name=""
animation/clip_51/start_frame=0
animation/clip_51/end_frame=0
animation/clip_51/loops=false
animation/clip_52/name=""
animation/clip_52/start_frame=0
animation/clip_52/end_frame=0
animation/clip_52/loops=false
animation/clip_53/name=""
animation/clip_53/start_frame=0
animation/clip_53/end_frame=0
animation/clip_53/loops=false
animation/clip_54/name=""
animation/clip_54/start_frame=0
animation/clip_54/end_frame=0
animation/clip_54/loops=false
animation/clip_55/name=""
animation/clip_55/start_frame=0
animation/clip_55/end_frame=0
animation/clip_55/loops=false
animation/clip_56/name=""
animation/clip_56/start_frame=0
animation/clip_56/end_frame=0
animation/clip_56/loops=false
animation/clip_57/name=""
animation/clip_57/start_frame=0
animation/clip_57/end_frame=0
animation/clip_57/loops=false
animation/clip_58/name=""
animation/clip_58/start_frame=0
animation/clip_58/end_frame=0
animation/clip_58/loops=false
animation/clip_59/name=""
animation/clip_59/start_frame=0
animation/clip_59/end_frame=0
animation/clip_59/loops=false
animation/clip_60/name=""
animation/clip_60/start_frame=0
animation/clip_60/end_frame=0
animation/clip_60/loops=false
animation/clip_61/name=""
animation/clip_61/start_frame=0
animation/clip_61/end_frame=0
animation/clip_61/loops=false
animation/clip_62/name=""
animation/clip_62/start_frame=0
animation/clip_62/end_frame=0
animation/clip_62/loops=false
animation/clip_63/name=""
animation/clip_63/start_frame=0
animation/clip_63/end_frame=0
animation/clip_63/loops=false
animation/clip_64/name=""
animation/clip_64/start_frame=0
animation/clip_64/end_frame=0
animation/clip_64/loops=false
animation/clip_65/name=""
animation/clip_65/start_frame=0
animation/clip_65/end_frame=0
animation/clip_65/loops=false
animation/clip_66/name=""
animation/clip_66/start_frame=0
animation/clip_66/end_frame=0
animation/clip_66/loops=false
animation/clip_67/name=""
animation/clip_67/start_frame=0
animation/clip_67/end_frame=0
animation/clip_67/loops=false
animation/clip_68/name=""
animation/clip_68/start_frame=0
animation/clip_68/end_frame=0
animation/clip_68/loops=false
animation/clip_69/name=""
animation/clip_69/start_frame=0
animation/clip_69/end_frame=0
animation/clip_69/loops=false
animation/clip_70/name=""
animation/clip_70/start_frame=0
animation/clip_70/end_frame=0
animation/clip_70/loops=false
animation/clip_71/name=""
animation/clip_71/start_frame=0
animation/clip_71/end_frame=0
animation/clip_71/loops=false
animation/clip_72/name=""
animation/clip_72/start_frame=0
animation/clip_72/end_frame=0
animation/clip_72/loops=false
animation/clip_73/name=""
animation/clip_73/start_frame=0
animation/clip_73/end_frame=0
animation/clip_73/loops=false
animation/clip_74/name=""
animation/clip_74/start_frame=0
animation/clip_74/end_frame=0
animation/clip_74/loops=false
animation/clip_75/name=""
animation/clip_75/start_frame=0
animation/clip_75/end_frame=0
animation/clip_75/loops=false
animation/clip_76/name=""
animation/clip_76/start_frame=0
animation/clip_76/end_frame=0
animation/clip_76/loops=false
animation/clip_77/name=""
animation/clip_77/start_frame=0
animation/clip_77/end_frame=0
animation/clip_77/loops=false
animation/clip_78/name=""
animation/clip_78/start_frame=0
animation/clip_78/end_frame=0
animation/clip_78/loops=false
animation/clip_79/name=""
animation/clip_79/start_frame=0
animation/clip_79/end_frame=0
animation/clip_79/loops=false
animation/clip_80/name=""
animation/clip_80/start_frame=0
animation/clip_80/end_frame=0
animation/clip_80/loops=false
animation/clip_81/name=""
animation/clip_81/start_frame=0
animation/clip_81/end_frame=0
animation/clip_81/loops=false
animation/clip_82/name=""
animation/clip_82/start_frame=0
animation/clip_82/end_frame=0
animation/clip_82/loops=false
animation/clip_83/name=""
animation/clip_83/start_frame=0
animation/clip_83/end_frame=0
animation/clip_83/loops=false
animation/clip_84/name=""
animation/clip_84/start_frame=0
animation/clip_84/end_frame=0
animation/clip_84/loops=false
animation/clip_85/name=""
animation/clip_85/start_frame=0
animation/clip_85/end_frame=0
animation/clip_85/loops=false
animation/clip_86/name=""
animation/clip_86/start_frame=0
animation/clip_86/end_frame=0
animation/clip_86/loops=false
animation/clip_87/name=""
animation/clip_87/start_frame=0
animation/clip_87/end_frame=0
animation/clip_87/loops=false
animation/clip_88/name=""
animation/clip_88/start_frame=0
animation/clip_88/end_frame=0
animation/clip_88/loops=false
animation/clip_89/name=""
animation/clip_89/start_frame=0
animation/clip_89/end_frame=0
animation/clip_89/loops=false
animation/clip_90/name=""
animation/clip_90/start_frame=0
animation/clip_90/end_frame=0
animation/clip_90/loops=false
animation/clip_91/name=""
animation/clip_91/start_frame=0
animation/clip_91/end_frame=0
animation/clip_91/loops=false
animation/clip_92/name=""
animation/clip_92/start_frame=0
animation/clip_92/end_frame=0
animation/clip_92/loops=false
animation/clip_93/name=""
animation/clip_93/start_frame=0
animation/clip_93/end_frame=0
animation/clip_93/loops=false
animation/clip_94/name=""
animation/clip_94/start_frame=0
animation/clip_94/end_frame=0
animation/clip_94/loops=false
animation/clip_95/name=""
animation/clip_95/start_frame=0
animation/clip_95/end_frame=0
animation/clip_95/loops=false
animation/clip_96/name=""
animation/clip_96/start_frame=0
animation/clip_96/end_frame=0
animation/clip_96/loops=false
animation/clip_97/name=""
animation/clip_97/start_frame=0
animation/clip_97/end_frame=0
animation/clip_97/loops=false
animation/clip_98/name=""
animation/clip_98/start_frame=0
animation/clip_98/end_frame=0
animation/clip_98/loops=false
animation/clip_99/name=""
animation/clip_99/start_frame=0
animation/clip_99/end_frame=0
animation/clip_99/loops=false
animation/clip_100/name=""
animation/clip_100/start_frame=0
animation/clip_100/end_frame=0
animation/clip_100/loops=false
animation/clip_101/name=""
animation/clip_101/start_frame=0
animation/clip_101/end_frame=0
animation/clip_101/loops=false
animation/clip_102/name=""
animation/clip_102/start_frame=0
animation/clip_102/end_frame=0
animation/clip_102/loops=false
animation/clip_103/name=""
animation/clip_103/start_frame=0
animation/clip_103/end_frame=0
animation/clip_103/loops=false
animation/clip_104/name=""
animation/clip_104/start_frame=0
animation/clip_104/end_frame=0
animation/clip_104/loops=false
animation/clip_105/name=""
animation/clip_105/start_frame=0
animation/clip_105/end_frame=0
animation/clip_105/loops=false
animation/clip_106/name=""
animation/clip_106/start_frame=0
animation/clip_106/end_frame=0
animation/clip_106/loops=false
animation/clip_107/name=""
animation/clip_107/start_frame=0
animation/clip_107/end_frame=0
animation/clip_107/loops=false
animation/clip_108/name=""
animation/clip_108/start_frame=0
animation/clip_108/end_frame=0
animation/clip_108/loops=false
animation/clip_109/name=""
animation/clip_109/start_frame=0
animation/clip_109/end_frame=0
animation/clip_109/loops=false
animation/clip_110/name=""
animation/clip_110/start_frame=0
animation/clip_110/end_frame=0
animation/clip_110/loops=false
animation/clip_111/name=""
animation/clip_111/start_frame=0
animation/clip_111/end_frame=0
animation/clip_111/loops=false
animation/clip_112/name=""
animation/clip_112/start_frame=0
animation/clip_112/end_frame=0
animation/clip_112/loops=false
animation/clip_113/name=""
animation/clip_113/start_frame=0
animation/clip_113/end_frame=0
animation/clip_113/loops=false
animation/clip_114/name=""
animation/clip_114/start_frame=0
animation/clip_114/end_frame=0
animation/clip_114/loops=false
animation/clip_115/name=""
animation/clip_115/start_frame=0
animation/clip_115/end_frame=0
animation/clip_115/loops=false
animation/clip_116/name=""
animation/clip_116/start_frame=0
animation/clip_116/end_frame=0
animation/clip_116/loops=false
animation/clip_117/name=""
animation/clip_117/start_frame=0
animation/clip_117/end_frame=0
animation/clip_117/loops=false
animation/clip_118/name=""
animation/clip_118/start_frame=0
animation/clip_118/end_frame=0
animation/clip_118/loops=false
animation/clip_119/name=""
animation/clip_119/start_frame=0
animation/clip_119/end_frame=0
animation/clip_119/loops=false
animation/clip_120/name=""
animation/clip_120/start_frame=0
animation/clip_120/end_frame=0
animation/clip_120/loops=false
animation/clip_121/name=""
animation/clip_121/start_frame=0
animation/clip_121/end_frame=0
animation/clip_121/loops=false
animation/clip_122/name=""
animation/clip_122/start_frame=0
animation/clip_122/end_frame=0
animation/clip_122/loops=false
animation/clip_123/name=""
animation/clip_123/start_frame=0
animation/clip_123/end_frame=0
animation/clip_123/loops=false
animation/clip_124/name=""
animation/clip_124/start_frame=0
animation/clip_124/end_frame=0
animation/clip_124/loops=false
animation/clip_125/name=""
animation/clip_125/start_frame=0
animation/clip_125/end_frame=0
animation/clip_125/loops=false
animation/clip_126/name=""
animation/clip_126/start_frame=0
animation/clip_126/end_frame=0
animation/clip_126/loops=false
animation/clip_127/name=""
animation/clip_127/start_frame=0
animation/clip_127/end_frame=0
animation/clip_127/loops=false
animation/clip_128/name=""
animation/clip_128/start_frame=0
animation/clip_128/end_frame=0
animation/clip_128/loops=false
animation/clip_129/name=""
animation/clip_129/start_frame=0
animation/clip_129/end_frame=0
animation/clip_129/loops=false
animation/clip_130/name=""
animation/clip_130/start_frame=0
animation/clip_130/end_frame=0
animation/clip_130/loops=false
animation/clip_131/name=""
animation/clip_131/start_frame=0
animation/clip_131/end_frame=0
animation/clip_131/loops=false
animation/clip_132/name=""
animation/clip_132/start_frame=0
animation/clip_132/end_frame=0
animation/clip_132/loops=false
animation/clip_133/name=""
animation/clip_133/start_frame=0
animation/clip_133/end_frame=0
animation/clip_133/loops=false
animation/clip_134/name=""
animation/clip_134/start_frame=0
animation/clip_134/end_frame=0
animation/clip_134/loops=false
animation/clip_135/name=""
animation/clip_135/start_frame=0
animation/clip_135/end_frame=0
animation/clip_135/loops=false
animation/clip_136/name=""
animation/clip_136/start_frame=0
animation/clip_136/end_frame=0
animation/clip_136/loops=false
animation/clip_137/name=""
animation/clip_137/start_frame=0
animation/clip_137/end_frame=0
animation/clip_137/loops=false
animation/clip_138/name=""
animation/clip_138/start_frame=0
animation/clip_138/end_frame=0
animation/clip_138/loops=false
animation/clip_139/name=""
animation/clip_139/start_frame=0
animation/clip_139/end_frame=0
animation/clip_139/loops=false
animation/clip_140/name=""
animation/clip_140/start_frame=0
animation/clip_140/end_frame=0
animation/clip_140/loops=false
animation/clip_141/name=""
animation/clip_141/start_frame=0
animation/clip_141/end_frame=0
animation/clip_141/loops=false
animation/clip_142/name=""
animation/clip_142/start_frame=0
animation/clip_142/end_frame=0
animation/clip_142/loops=false
animation/clip_143/name=""
animation/clip_143/start_frame=0
animation/clip_143/end_frame=0
animation/clip_143/loops=false
animation/clip_144/name=""
animation/clip_144/start_frame=0
animation/clip_144/end_frame=0
animation/clip_144/loops=false
animation/clip_145/name=""
animation/clip_145/start_frame=0
animation/clip_145/end_frame=0
animation/clip_145/loops=false
animation/clip_146/name=""
animation/clip_146/start_frame=0
animation/clip_146/end_frame=0
animation/clip_146/loops=false
animation/clip_147/name=""
animation/clip_147/start_frame=0
animation/clip_147/end_frame=0
animation/clip_147/loops=false
animation/clip_148/name=""
animation/clip_148/start_frame=0
animation/clip_148/end_frame=0
animation/clip_148/loops=false
animation/clip_149/name=""
animation/clip_149/start_frame=0
animation/clip_149/end_frame=0
animation/clip_149/loops=false
animation/clip_150/name=""
animation/clip_150/start_frame=0
animation/clip_150/end_frame=0
animation/clip_150/loops=false
animation/clip_151/name=""
animation/clip_151/start_frame=0
animation/clip_151/end_frame=0
animation/clip_151/loops=false
animation/clip_152/name=""
animation/clip_152/start_frame=0
animation/clip_152/end_frame=0
animation/clip_152/loops=false
animation/clip_153/name=""
animation/clip_153/start_frame=0
animation/clip_153/end_frame=0
animation/clip_153/loops=false
animation/clip_154/name=""
animation/clip_154/start_frame=0
animation/clip_154/end_frame=0
animation/clip_154/loops=false
animation/clip_155/name=""
animation/clip_155/start_frame=0
animation/clip_155/end_frame=0
animation/clip_155/loops=false
animation/clip_156/name=""
animation/clip_156/start_frame=0
animation/clip_156/end_frame=0
animation/clip_156/loops=false
animation/clip_157/name=""
animation/clip_157/start_frame=0
animation/clip_157/end_frame=0
animation/clip_157/loops=false
animation/clip_158/name=""
animation/clip_158/start_frame=0
animation/clip_158/end_frame=0
animation/clip_158/loops=false
animation/clip_159/name=""
animation/clip_159/start_frame=0
animation/clip_159/end_frame=0
animation/clip_159/loops=false
animation/clip_160/name=""
animation/clip_160/start_frame=0
animation/clip_160/end_frame=0
animation/clip_160/loops=false
animation/clip_161/name=""
animation/clip_161/start_frame=0
animation/clip_161/end_frame=0
animation/clip_161/loops=false
animation/clip_162/name=""
animation/clip_162/start_frame=0
animation/clip_162/end_frame=0
animation/clip_162/loops=false
animation/clip_163/name=""
animation/clip_163/start_frame=0
animation/clip_163/end_frame=0
animation/clip_163/loops=false
animation/clip_164/name=""
animation/clip_164/start_frame=0
animation/clip_164/end_frame=0
animation/clip_164/loops=false
animation/clip_165/name=""
animation/clip_165/start_frame=0
animation/clip_165/end_frame=0
animation/clip_165/loops=false
animation/clip_166/name=""
animation/clip_166/start_frame=0
animation/clip_166/end_frame=0
animation/clip_166/loops=false
animation/clip_167/name=""
animation/clip_167/start_frame=0
animation/clip_167/end_frame=0
animation/clip_167/loops=false
animation/clip_168/name=""
animation/clip_168/start_frame=0
animation/clip_168/end_frame=0
animation/clip_168/loops=false
animation/clip_169/name=""
animation/clip_169/start_frame=0
animation/clip_169/end_frame=0
animation/clip_169/loops=false
animation/clip_170/name=""
animation/clip_170/start_frame=0
animation/clip_170/end_frame=0
animation/clip_170/loops=false
animation/clip_171/name=""
animation/clip_171/start_frame=0
animation/clip_171/end_frame=0
animation/clip_171/loops=false
animation/clip_172/name=""
animation/clip_172/start_frame=0
animation/clip_172/end_frame=0
animation/clip_172/loops=false
animation/clip_173/name=""
animation/clip_173/start_frame=0
animation/clip_173/end_frame=0
animation/clip_173/loops=false
animation/clip_174/name=""
animation/clip_174/start_frame=0
animation/clip_174/end_frame=0
animation/clip_174/loops=false
animation/clip_175/name=""
animation/clip_175/start_frame=0
animation/clip_175/end_frame=0
animation/clip_175/loops=false
animation/clip_176/name=""
animation/clip_176/start_frame=0
animation/clip_176/end_frame=0
animation/clip_176/loops=false
animation/clip_177/name=""
animation/clip_177/start_frame=0
animation/clip_177/end_frame=0
animation/clip_177/loops=false
animation/clip_178/name=""
animation/clip_178/start_frame=0
animation/clip_178/end_frame=0
animation/clip_178/loops=false
animation/clip_179/name=""
animation/clip_179/start_frame=0
animation/clip_179/end_frame=0
animation/clip_179/loops=false
animation/clip_180/name=""
animation/clip_180/start_frame=0
animation/clip_180/end_frame=0
animation/clip_180/loops=false
animation/clip_181/name=""
animation/clip_181/start_frame=0
animation/clip_181/end_frame=0
animation/clip_181/loops=false
animation/clip_182/name=""
animation/clip_182/start_frame=0
animation/clip_182/end_frame=0
animation/clip_182/loops=false
animation/clip_183/name=""
animation/clip_183/start_frame=0
animation/clip_183/end_frame=0
animation/clip_183/loops=false
animation/clip_184/name=""
animation/clip_184/start_frame=0
animation/clip_184/end_frame=0
animation/clip_184/loops=false
animation/clip_185/name=""
animation/clip_185/start_frame=0
animation/clip_185/end_frame=0
animation/clip_185/loops=false
animation/clip_186/name=""
animation/clip_186/start_frame=0
animation/clip_186/end_frame=0
animation/clip_186/loops=false
animation/clip_187/name=""
animation/clip_187/start_frame=0
animation/clip_187/end_frame=0
animation/clip_187/loops=false
animation/clip_188/name=""
animation/clip_188/start_frame=0
animation/clip_188/end_frame=0
animation/clip_188/loops=false
animation/clip_189/name=""
animation/clip_189/start_frame=0
animation/clip_189/end_frame=0
animation/clip_189/loops=false
animation/clip_190/name=""
animation/clip_190/start_frame=0
animation/clip_190/end_frame=0
animation/clip_190/loops=false
animation/clip_191/name=""
animation/clip_191/start_frame=0
animation/clip_191/end_frame=0
animation/clip_191/loops=false
animation/clip_192/name=""
animation/clip_192/start_frame=0
animation/clip_192/end_frame=0
animation/clip_192/loops=false
animation/clip_193/name=""
animation/clip_193/start_frame=0
animation/clip_193/end_frame=0
animation/clip_193/loops=false
animation/clip_194/name=""
animation/clip_194/start_frame=0
animation/clip_194/end_frame=0
animation/clip_194/loops=false
animation/clip_195/name=""
animation/clip_195/start_frame=0
animation/clip_195/end_frame=0
animation/clip_195/loops=false
animation/clip_196/name=""
animation/clip_196/start_frame=0
animation/clip_196/end_frame=0
animation/clip_196/loops=false
animation/clip_197/name=""
animation/clip_197/start_frame=0
animation/clip_197/end_frame=0
animation/clip_197/loops=false
animation/clip_198/name=""
animation/clip_198/start_frame=0
animation/clip_198/end_frame=0
animation/clip_198/loops=false
animation/clip_199/name=""
animation/clip_199/start_frame=0
animation/clip_199/end_frame=0
animation/clip_199/loops=false
animation/clip_200/name=""
animation/clip_200/start_frame=0
animation/clip_200/end_frame=0
animation/clip_200/loops=false
animation/clip_201/name=""
animation/clip_201/start_frame=0
animation/clip_201/end_frame=0
animation/clip_201/loops=false
animation/clip_202/name=""
animation/clip_202/start_frame=0
animation/clip_202/end_frame=0
animation/clip_202/loops=false
animation/clip_203/name=""
animation/clip_203/start_frame=0
animation/clip_203/end_frame=0
animation/clip_203/loops=false
animation/clip_204/name=""
animation/clip_204/start_frame=0
animation/clip_204/end_frame=0
animation/clip_204/loops=false
animation/clip_205/name=""
animation/clip_205/start_frame=0
animation/clip_205/end_frame=0
animation/clip_205/loops=false
animation/clip_206/name=""
animation/clip_206/start_frame=0
animation/clip_206/end_frame=0
animation/clip_206/loops=false
animation/clip_207/name=""
animation/clip_207/start_frame=0
animation/clip_207/end_frame=0
animation/clip_207/loops=false
animation/clip_208/name=""
animation/clip_208/start_frame=0
animation/clip_208/end_frame=0
animation/clip_208/loops=false
animation/clip_209/name=""
animation/clip_209/start_frame=0
animation/clip_209/end_frame=0
animation/clip_209/loops=false
animation/clip_210/name=""
animation/clip_210/start_frame=0
animation/clip_210/end_frame=0
animation/clip_210/loops=false
animation/clip_211/name=""
animation/clip_211/start_frame=0
animation/clip_211/end_frame=0
animation/clip_211/loops=false
animation/clip_212/name=""
animation/clip_212/start_frame=0
animation/clip_212/end_frame=0
animation/clip_212/loops=false
animation/clip_213/name=""
animation/clip_213/start_frame=0
animation/clip_213/end_frame=0
animation/clip_213/loops=false
animation/clip_214/name=""
animation/clip_214/start_frame=0
animation/clip_214/end_frame=0
animation/clip_214/loops=false
animation/clip_215/name=""
animation/clip_215/start_frame=0
animation/clip_215/end_frame=0
animation/clip_215/loops=false
animation/clip_216/name=""
animation/clip_216/start_frame=0
animation/clip_216/end_frame=0
animation/clip_216/loops=false
animation/clip_217/name=""
animation/clip_217/start_frame=0
animation/clip_217/end_frame=0
animation/clip_217/loops=false
animation/clip_218/name=""
animation/clip_218/start_frame=0
animation/clip_218/end_frame=0
animation/clip_218/loops=false
animation/clip_219/name=""
animation/clip_219/start_frame=0
animation/clip_219/end_frame=0
animation/clip_219/loops=false
animation/clip_220/name=""
animation/clip_220/start_frame=0
animation/clip_220/end_frame=0
animation/clip_220/loops=false
animation/clip_221/name=""
animation/clip_221/start_frame=0
animation/clip_221/end_frame=0
animation/clip_221/loops=false
animation/clip_222/name=""
animation/clip_222/start_frame=0
animation/clip_222/end_frame=0
animation/clip_222/loops=false
animation/clip_223/name=""
animation/clip_223/start_frame=0
animation/clip_223/end_frame=0
animation/clip_223/loops=false
animation/clip_224/name=""
animation/clip_224/start_frame=0
animation/clip_224/end_frame=0
animation/clip_224/loops=false
animation/clip_225/name=""
animation/clip_225/start_frame=0
animation/clip_225/end_frame=0
animation/clip_225/loops=false
animation/clip_226/name=""
animation/clip_226/start_frame=0
animation/clip_226/end_frame=0
animation/clip_226/loops=false
animation/clip_227/name=""
animation/clip_227/start_frame=0
animation/clip_227/end_frame=0
animation/clip_227/loops=false
animation/clip_228/name=""
animation/clip_228/start_frame=0
animation/clip_228/end_frame=0
animation/clip_228/loops=false
animation/clip_229/name=""
animation/clip_229/start_frame=0
animation/clip_229/end_frame=0
animation/clip_229/loops=false
animation/clip_230/name=""
animation/clip_230/start_frame=0
animation/clip_230/end_frame=0
animation/clip_230/loops=false
animation/clip_231/name=""
animation/clip_231/start_frame=0
animation/clip_231/end_frame=0
animation/clip_231/loops=false
animation/clip_232/name=""
animation/clip_232/start_frame=0
animation/clip_232/end_frame=0
animation/clip_232/loops=false
animation/clip_233/name=""
animation/clip_233/start_frame=0
animation/clip_233/end_frame=0
animation/clip_233/loops=false
animation/clip_234/name=""
animation/clip_234/start_frame=0
animation/clip_234/end_frame=0
animation/clip_234/loops=false
animation/clip_235/name=""
animation/clip_235/start_frame=0
animation/clip_235/end_frame=0
animation/clip_235/loops=false
animation/clip_236/name=""
animation/clip_236/start_frame=0
animation/clip_236/end_frame=0
animation/clip_236/loops=false
animation/clip_237/name=""
animation/clip_237/start_frame=0
animation/clip_237/end_frame=0
animation/clip_237/loops=false
animation/clip_238/name=""
animation/clip_238/start_frame=0
animation/clip_238/end_frame=0
animation/clip_238/loops=false
animation/clip_239/name=""
animation/clip_239/start_frame=0
animation/clip_239/end_frame=0
animation/clip_239/loops=false
animation/clip_240/name=""
animation/clip_240/start_frame=0
animation/clip_240/end_frame=0
animation/clip_240/loops=false
animation/clip_241/name=""
animation/clip_241/start_frame=0
animation/clip_241/end_frame=0
animation/clip_241/loops=false
animation/clip_242/name=""
animation/clip_242/start_frame=0
animation/clip_242/end_frame=0
animation/clip_242/loops=false
animation/clip_243/name=""
animation/clip_243/start_frame=0
animation/clip_243/end_frame=0
animation/clip_243/loops=false
animation/clip_244/name=""
animation/clip_244/start_frame=0
animation/clip_244/end_frame=0
animation/clip_244/loops=false
animation/clip_245/name=""
animation/clip_245/start_frame=0
animation/clip_245/end_frame=0
animation/clip_245/loops=false
animation/clip_246/name=""
animation/clip_246/start_frame=0
animation/clip_246/end_frame=0
animation/clip_246/loops=false
animation/clip_247/name=""
animation/clip_247/start_frame=0
animation/clip_247/end_frame=0
animation/clip_247/loops=false
animation/clip_248/name=""
animation/clip_248/start_frame=0
animation/clip_248/end_frame=0
animation/clip_248/loops=false
animation/clip_249/name=""
animation/clip_249/start_frame=0
animation/clip_249/end_frame=0
animation/clip_249/loops=false
animation/clip_250/name=""
animation/clip_250/start_frame=0
animation/clip_250/end_frame=0
animation/clip_250/loops=false
animation/clip_251/name=""
animation/clip_251/start_frame=0
animation/clip_251/end_frame=0
animation/clip_251/loops=false
animation/clip_252/name=""
animation/clip_252/start_frame=0
animation/clip_252/end_frame=0
animation/clip_252/loops=false
animation/clip_253/name=""
animation/clip_253/start_frame=0
animation/clip_253/end_frame=0
animation/clip_253/loops=false
animation/clip_254/name=""
animation/clip_254/start_frame=0
animation/clip_254/end_frame=0
animation/clip_254/loops=false
animation/clip_255/name=""
animation/clip_255/start_frame=0
animation/clip_255/end_frame=0
animation/clip_255/loops=false
animation/clip_256/name=""
animation/clip_256/start_frame=0
animation/clip_256/end_frame=0
animation/clip_256/loops=false
     RSRC                     PackedScene                                                                 +      ..        resource_local_to_scene    resource_name    surfaces/0    custom_aabb/custom_aabb    script    flags_transparent    flags_unshaded    flags_on_top    flags_use_point_size    flags_fixed_size    vertex_color_use_as_albedo    vertex_color_is_srgb    params_diffuse_mode    params_blend_mode    params_cull_mode    params_depth_draw_mode    params_line_width    params_point_size    params_billboard_mode    albedo_color    albedo_texture    specular_mode    specular_color    specular_metalness    specular_roughness    specular_texture    emission_enabled    normal_enabled    rim_enabled    clearcoat_enabled    anisotropy_enabled    ao_enabled    height_enabled    subsurf_scatter_enabled    refraction_enabled    detail_enabled 
   uv1_scale    uv1_offset 
   uv2_scale    uv2_offset 	   _bundled        
   local://1       
   local://2 �      
   local://3  
      
   local://4 �      
   local://5 (      
   local://6 �'      
   local://7 �4      
   local://8 0B      
   local://9 �O         local://10 �\         local://11 8j         local://12 �w         local://13 
�         local://14 �         Mesh             Cube       
         array_data        < � < < �  �� � � < �   < ��� < �  �� < � <   �; < < <    < <�� <    < <�� <    < � < <    < ��� <   �; < < <    � ��; <    < � < <    � ��; <�   �� < � <�   �� � � <�    < ��� <  � �� < � <  �  < <�� <  �  � ��; < �   � <�; <   �; < < <    � <�; <    � <�; <�   �� � � <  �       vertex_count (                array_index_data    H             	  
                 	 
              index_count (   $          
   primitive (                format (              aabb     ��  �� ��  @   @  @      skeleton_aabb              blend_shape_data              name    	   Material                                  SpatialMaterial $         	   Material                     	          
                                           (              (              (              (                   �?        �?   (                 333?333?333?  �?             (                 ���=���=���=  �?         ?      �
?                                                             !          "          #          $          %          &   
     �?  �?'   
           (   
     �?  �?)   
              Mesh          	   Cube.001       	         array_data        � <�A <�    � � � <�    � ��A <�    � < � <  �  < � � <  �  � � � <  �  < < � <    < ��A <    < � � <    < <�A <    � ��A <    < ��A <    < � � < �   � ��A < �   � � � < �   � < � <    < <�A <    < < � <    � < � <�    < < � <  �  < <�A <    � <�A <    < ��A < �   � <�A <         vertex_count (                array_index_data    H             	  
                 	 
              index_count (   $          
   primitive (                format (              aabb      ��  ��  ��   @   @�vt@      skeleton_aabb              blend_shape_data                                         Mesh          	   Cylinder       	         array_data     	     < � < � >2 �ػ < �    � � < � >2 <ػ <$ � 6 �d� <$ � >2 �ػ <$ � 6 <d� <; � q8 ��� <; � 6 �d� <; � q8 <�� <P � �9 ��� <P � q8 ��� <P � �9 <�� <b � �: �q� <b � �9 ��� <b � �: <q� <p � d; �� <p � �: �q� <p � d; <� <y � �; �>� <y � d; �� <y � �; <>� <~ �  < �   <~ � �; �>� <~ �  < <   <~  �; �>2 <~   < �   <~  �; <>2 <y $ d; �6 <y $ �; �>2 <y $ d; <6 <p ; �: �q8 <p ; d; �6 <p ; �: <q8 <b P �9 ��9 <b P �: �q8 <b P �9 <�9 <P b q8 ��: <P b �9 ��9 <P b q8 <�: <; p 6 �d; <; p q8 ��: <; p 6 <d; <$ y >2 ��; <$ y 6 �d; <$ y >2 <�; < ~    � < < ~ >2 ��; < ~    < < <� ~ >� ��; <� ~    � < <� ~ >� <�; <� y � �d; <� y >� ��; <� y � <d; <� p q� ��: <� p � �d; <� p q� <�: <� b �� ��9 <� b q� ��: <� b �� <�9 <� P �� �q8 <� P �� ��9 <� P �� <q8 <� ; d� �6 <� ; �� �q8 <� ; d� <6 <� $ ػ �>2 <� $ d� �6 <� $ ػ <>2 <�   � �   <�  ػ �>2 <�   � <   <� � ػ �>� <� �  � �   <� � ػ <>� <� � d� �� <� � ػ �>� <� � d� <� <� � �� �q� <� � d� �� <� � �� <q� <� � �� ��� <� � �� �q� <� � �� <�� <� � q� ��� <� � �� ��� <� � q� <�� <� � � �d� <� � q� ��� <� � � <d; <   d; <6 <   d� <� <   � <d� <� � >� �ػ <� � � �d� <� � >� <ػ <� �    � � <� � >� �ػ <� � >2 ��; < �  ػ �>2 < �  �; �>� < �  >2 <ػ < � 6 <d� <$ � q8 <�� <; � �9 <�� <P � �: <q� <b � d; <� <p � �; <>� <y �  < <   <~ � �; <>2 <~  d; <6 <y $ �: <q8 <p ; �9 <�9 <b P q8 <�: <P b 6 <d; <; p >2 <�; <$ y    < < < ~ >� <�; <� ~ � <d; <� y q� <�: <� p �� <�9 <� b �� <q8 <� P d� <6 <� ; ػ <>2 <� $  � <   <�  ػ <>� <� � d� <� <� � �� <q� <� � �� <�� <� � q� <�� <� � � <d� <� � 6 <d� <   >2 <ػ <      < � <   >� <ػ <   � <d� <   q� <�� <   �� <�� <   �� <q� <   ػ <>� <    � <   <   ػ <>2 <   d� <6 <   �� <q8 <   �� <�9 <   q� <�: <   >� <�; <      < < <   >2 <�; <   6 <d; <   q8 <�: <   �9 <�9 <   �: <q8 <   �; <>2 <    < <   <   �; <>� <   d; <� <   �: <q� <   �9 <�� <   q8 <�� <   >� <ػ <� �    < � <� � >� �ػ < �     � � < �  >2 �ػ < �  6 �d� < �  q8 ��� < �  �9 ��� < �  �: �q� < �  d; �� < �   < �   < �  �; �>2 < �  d; �6 < �  �: �q8 < �  �9 ��9 < �  q8 ��: < �  6 �d; < �     � < < �  >� ��; < �  � �d; < �  q� ��: < �  �� ��9 < �  �� �q8 < �  d� �6 < �   � �   < �  ػ �>� < �  d� �� < �  �� �q� < �  �� ��� < �  q� ��� < �  � �d� < �        vertex_count (   �             array_index_data    �            	  
                       ! # " $ & % ' ) ( * , + - / . 0 2 1 3 5 4 6 8 7 9 ; : < > = ? A @ B D C E G F H J I K M L N P O Q S R T V U W Y X Z \ [ ] _ ^ ` b a c e d    f   g   h 	 
 i   j   k   l   m   n   o   p ! " q $ % r ' ( s * + t - . u 0 1 v 3 4 w 6 7 x 9 : y < = z ? @ { B C | E F } H I ~ K L  N O � Q R � T U � W X � � � � � � � � � � � \ � \ � � � \ � � Z � � Z � Z � � � � � � � � � [ � [ � � � [ � � � � � � � � � � � � � \ � � � Z � Z [ � � [ � [ � � � [ � � \ � \ Z � � [ � [ � � � [ \ ] ^ � ` a � � � � � � � � � � � � � e � � � e � � c � � c � c � � � � � � � � � d � d � � � � � � � � � � � � e � � e � e � � � c � c d � � d � d � � � � � � e � e c � � d � � � � � d e       index_count (   t         
   primitive (                format (              aabb      ��  ��  ��   @   @   @      skeleton_aabb              blend_shape_data                                         Mesh             Cylinder.001       	         array_data     	     < � < � >2 �ػ < �    � � < � >2 <ػ <$ � 6 �d� <$ � >2 �ػ <$ � 6 <d� <; � q8 ��� <; � 6 �d� <; � q8 <�� <P � �9 ��� <P � q8 ��� <P � �9 <�� <b � �: �q� <b � �9 ��� <b � �: <q� <p � d; �� <p � �: �q� <p � d; <� <y � �; �>� <y � d; �� <y � �; <>� <~ �  < �   <~ � �; �>� <~ �  < <   <~  �; �>2 <~   < �   <~  �; <>2 <y $ d; �6 <y $ �; �>2 <y $ d; <6 <p ; �: �q8 <p ; d; �6 <p ; �: <q8 <b P �9 ��9 <b P �: �q8 <b P �9 <�9 <P b q8 ��: <P b �9 ��9 <P b q8 <�: <; p 6 �d; <; p q8 ��: <; p 6 <d; <$ y >2 ��; <$ y 6 �d; <$ y >2 <�; < ~    � < < ~ >2 ��; < ~    < < <� ~ >� ��; <� ~    � < <� ~ >� <�; <� y � �d; <� y >� ��; <� y � <d; <� p q� ��: <� p � �d; <� p q� <�: <� b �� ��9 <� b q� ��: <� b �� <�9 <� P �� �q8 <� P �� ��9 <� P �� <q8 <� ; d� �6 <� ; �� �q8 <� ; d� <6 <� $ ػ �>2 <� $ d� �6 <� $ ػ <>2 <�   � �   <�  ػ �>2 <�   � <   <� � ػ �>� <� �  � �   <� � ػ <>� <� � d� �� <� � ػ �>� <� � d� <� <� � �� �q� <� � d� �� <� � �� <q� <� � �� ��� <� � �� �q� <� � �� <�� <� � q� ��� <� � �� ��� <� � q� <�� <� � � �d� <� � q� ��� <� � � <d; <   d; <6 <   d� <� <   � <d� <� � >� �ػ <� � � �d� <� � >� <ػ <� �    � � <� � >� �ػ <� � >2 ��; < �  ػ �>2 < �  �; �>� < �  >2 <ػ < � 6 <d� <$ � q8 <�� <; � �9 <�� <P � �: <q� <b � d; <� <p � �; <>� <y �  < <   <~ � �; <>2 <~  d; <6 <y $ �: <q8 <p ; �9 <�9 <b P q8 <�: <P b 6 <d; <; p >2 <�; <$ y    < < < ~ >� <�; <� ~ � <d; <� y q� <�: <� p �� <�9 <� b �� <q8 <� P d� <6 <� ; ػ <>2 <� $  � <   <�  ػ <>� <� � d� <� <� � �� <q� <� � �� <�� <� � q� <�� <� � � <d� <� � 6 <d� <   >2 <ػ <      < � <   >� <ػ <   � <d� <   q� <�� <   �� <�� <   �� <q� <   ػ <>� <    � <   <   ػ <>2 <   d� <6 <   �� <q8 <   �� <�9 <   q� <�: <   >� <�; <      < < <   >2 <�; <   6 <d; <   q8 <�: <   �9 <�9 <   �: <q8 <   �; <>2 <    < <   <   �; <>� <   d; <� <   �: <q� <   �9 <�� <   q8 <�� <   >� <ػ <� �    < � <� � >� �ػ < �     � � < �  >2 �ػ < �  6 �d� < �  q8 ��� < �  �9 ��� < �  �: �q� < �  d; �� < �   < �   < �  �; �>2 < �  d; �6 < �  �: �q8 < �  �9 ��9 < �  q8 ��: < �  6 �d; < �     � < < �  >� ��; < �  � �d; < �  q� ��: < �  �� ��9 < �  �� �q8 < �  d� �6 < �   � �   < �  ػ �>� < �  d� �� < �  �� �q� < �  �� ��� < �  q� ��� < �  � �d� < �        vertex_count (   �             array_index_data    �            	  
                       ! # " $ & % ' ) ( * , + - / . 0 2 1 3 5 4 6 8 7 9 ; : < > = ? A @ B D C E G F H J I K M L N P O Q S R T V U W Y X Z \ [ ] _ ^ ` b a c e d    f   g   h 	 
 i   j   k   l   m   n   o   p ! " q $ % r ' ( s * + t - . u 0 1 v 3 4 w 6 7 x 9 : y < = z ? @ { B C | E F } H I ~ K L  N O � Q R � T U � W X � � � � � � � � � � � \ � \ � � � \ � � Z � � Z � Z � � � � � � � � � [ � [ � � � [ � � � � � � � � � � � � � \ � � � Z � Z [ � � [ � [ � � � [ � � \ � \ Z � � [ � [ � � � [ \ ] ^ � ` a � � � � � � � � � � � � � e � � � e � � c � � c � c � � � � � � � � � d � d � � � � � � � � � � � � e � � e � e � � � c � c d � � d � d � � � � � � e � e c � � d � � � � � d e       index_count (   t         
   primitive (                format (              aabb      ��  ��  ��   @   @   @      skeleton_aabb              blend_shape_data                                         Mesh             Cylinder.002       	         array_data     	     < � < � >2 �ػ < �    � � < � >2 <ػ <$ � 6 �d� <$ � >2 �ػ <$ � 6 <d� <; � q8 ��� <; � 6 �d� <; � q8 <�� <P � �9 ��� <P � q8 ��� <P � �9 <�� <b � �: �q� <b � �9 ��� <b � �: <q� <p � d; �� <p � �: �q� <p � d; <� <y � �; �>� <y � d; �� <y � �; <>� <~ �  < �   <~ � �; �>� <~ �  < <   <~  �; �>2 <~   < �   <~  �; <>2 <y $ d; �6 <y $ �; �>2 <y $ d; <6 <p ; �: �q8 <p ; d; �6 <p ; �: <q8 <b P �9 ��9 <b P �: �q8 <b P �9 <�9 <P b q8 ��: <P b �9 ��9 <P b q8 <�: <; p 6 �d; <; p q8 ��: <; p 6 <d; <$ y >2 ��; <$ y 6 �d; <$ y >2 <�; < ~    � < < ~ >2 ��; < ~    < < <� ~ >� ��; <� ~    � < <� ~ >� <�; <� y � �d; <� y >� ��; <� y � <d; <� p q� ��: <� p � �d; <� p q� <�: <� b �� ��9 <� b q� ��: <� b �� <�9 <� P �� �q8 <� P �� ��9 <� P �� <q8 <� ; d� �6 <� ; �� �q8 <� ; d� <6 <� $ ػ �>2 <� $ d� �6 <� $ ػ <>2 <�   � �   <�  ػ �>2 <�   � <   <� � ػ �>� <� �  � �   <� � ػ <>� <� � d� �� <� � ػ �>� <� � d� <� <� � �� �q� <� � d� �� <� � �� <q� <� � �� ��� <� � �� �q� <� � �� <�� <� � q� ��� <� � �� ��� <� � q� <�� <� � � �d� <� � q� ��� <� � � <d; <   d; <6 <   d� <� <   � <d� <� � >� �ػ <� � � �d� <� � >� <ػ <� �    � � <� � >� �ػ <� � >2 ��; < �  ػ �>2 < �  �; �>� < �  >2 <ػ < � 6 <d� <$ � q8 <�� <; � �9 <�� <P � �: <q� <b � d; <� <p � �; <>� <y �  < <   <~ � �; <>2 <~  d; <6 <y $ �: <q8 <p ; �9 <�9 <b P q8 <�: <P b 6 <d; <; p >2 <�; <$ y    < < < ~ >� <�; <� ~ � <d; <� y q� <�: <� p �� <�9 <� b �� <q8 <� P d� <6 <� ; ػ <>2 <� $  � <   <�  ػ <>� <� � d� <� <� � �� <q� <� � �� <�� <� � q� <�� <� � � <d� <� � 6 <d� <   >2 <ػ <      < � <   >� <ػ <   � <d� <   q� <�� <   �� <�� <   �� <q� <   ػ <>� <    � <   <   ػ <>2 <   d� <6 <   �� <q8 <   �� <�9 <   q� <�: <   >� <�; <      < < <   >2 <�; <   6 <d; <   q8 <�: <   �9 <�9 <   �: <q8 <   �; <>2 <    < <   <   �; <>� <   d; <� <   �: <q� <   �9 <�� <   q8 <�� <   >� <ػ <� �    < � <� � >� �ػ < �     � � < �  >2 �ػ < �  6 �d� < �  q8 ��� < �  �9 ��� < �  �: �q� < �  d; �� < �   < �   < �  �; �>2 < �  d; �6 < �  �: �q8 < �  �9 ��9 < �  q8 ��: < �  6 �d; < �     � < < �  >� ��; < �  � �d; < �  q� ��: < �  �� ��9 < �  �� �q8 < �  d� �6 < �   � �   < �  ػ �>� < �  d� �� < �  �� �q� < �  �� ��� < �  q� ��� < �  � �d� < �        vertex_count (   �             array_index_data    �            	  
                       ! # " $ & % ' ) ( * , + - / . 0 2 1 3 5 4 6 8 7 9 ; : < > = ? A @ B D C E G F H J I K M L N P O Q S R T V U W Y X Z \ [ ] _ ^ ` b a c e d    f   g   h 	 
 i   j   k   l   m   n   o   p ! " q $ % r ' ( s * + t - . u 0 1 v 3 4 w 6 7 x 9 : y < = z ? @ { B C | E F } H I ~ K L  N O � Q R � T U � W X � � � � � � � � � � � \ � \ � � � \ � � Z � � Z � Z � � � � � � � � � [ � [ � � � [ � � � � � � � � � � � � � \ � � � Z � Z [ � � [ � [ � � � [ � � \ � \ Z � � [ � [ � � � [ \ ] ^ � ` a � � � � � � � � � � � � � e � � � e � � c � � c � c � � � � � � � � � d � d � � � � � � � � � � � � e � � e � e � � � c � c d � � d � d � � � � � � e � e c � � d � � � � � d e       index_count (   t         
   primitive (                format (              aabb      ��  ��  ��   @   @   @      skeleton_aabb              blend_shape_data                                         Mesh             Cylinder.003       	         array_data     	     < � < � >2 �ػ < �    � � < � >2 <ػ <$ � 6 �d� <$ � >2 �ػ <$ � 6 <d� <; � q8 ��� <; � 6 �d� <; � q8 <�� <P � �9 ��� <P � q8 ��� <P � �9 <�� <b � �: �q� <b � �9 ��� <b � �: <q� <p � d; �� <p � �: �q� <p � d; <� <y � �; �>� <y � d; �� <y � �; <>� <~ �  < �   <~ � �; �>� <~ �  < <   <~  �; �>2 <~   < �   <~  �; <>2 <y $ d; �6 <y $ �; �>2 <y $ d; <6 <p ; �: �q8 <p ; d; �6 <p ; �: <q8 <b P �9 ��9 <b P �: �q8 <b P �9 <�9 <P b q8 ��: <P b �9 ��9 <P b q8 <�: <; p 6 �d; <; p q8 ��: <; p 6 <d; <$ y >2 ��; <$ y 6 �d; <$ y >2 <�; < ~    � < < ~ >2 ��; < ~    < < <� ~ >� ��; <� ~    � < <� ~ >� <�; <� y � �d; <� y >� ��; <� y � <d; <� p q� ��: <� p � �d; <� p q� <�: <� b �� ��9 <� b q� ��: <� b �� <�9 <� P �� �q8 <� P �� ��9 <� P �� <q8 <� ; d� �6 <� ; �� �q8 <� ; d� <6 <� $ ػ �>2 <� $ d� �6 <� $ ػ <>2 <�   � �   <�  ػ �>2 <�   � <   <� � ػ �>� <� �  � �   <� � ػ <>� <� � d� �� <� � ػ �>� <� � d� <� <� � �� �q� <� � d� �� <� � �� <q� <� � �� ��� <� � �� �q� <� � �� <�� <� � q� ��� <� � �� ��� <� � q� <�� <� � � �d� <� � q� ��� <� � � <d; <   d; <6 <   d� <� <   � <d� <� � >� �ػ <� � � �d� <� � >� <ػ <� �    � � <� � >� �ػ <� � >2 ��; < �  ػ �>2 < �  �; �>� < �  >2 <ػ < � 6 <d� <$ � q8 <�� <; � �9 <�� <P � �: <q� <b � d; <� <p � �; <>� <y �  < <   <~ � �; <>2 <~  d; <6 <y $ �: <q8 <p ; �9 <�9 <b P q8 <�: <P b 6 <d; <; p >2 <�; <$ y    < < < ~ >� <�; <� ~ � <d; <� y q� <�: <� p �� <�9 <� b �� <q8 <� P d� <6 <� ; ػ <>2 <� $  � <   <�  ػ <>� <� � d� <� <� � �� <q� <� � �� <�� <� � q� <�� <� � � <d� <� � 6 <d� <   >2 <ػ <      < � <   >� <ػ <   � <d� <   q� <�� <   �� <�� <   �� <q� <   ػ <>� <    � <   <   ػ <>2 <   d� <6 <   �� <q8 <   �� <�9 <   q� <�: <   >� <�; <      < < <   >2 <�; <   6 <d; <   q8 <�: <   �9 <�9 <   �: <q8 <   �; <>2 <    < <   <   �; <>� <   d; <� <   �: <q� <   �9 <�� <   q8 <�� <   >� <ػ <� �    < � <� � >� �ػ < �     � � < �  >2 �ػ < �  6 �d� < �  q8 ��� < �  �9 ��� < �  �: �q� < �  d; �� < �   < �   < �  �; �>2 < �  d; �6 < �  �: �q8 < �  �9 ��9 < �  q8 ��: < �  6 �d; < �     � < < �  >� ��; < �  � �d; < �  q� ��: < �  �� ��9 < �  �� �q8 < �  d� �6 < �   � �   < �  ػ �>� < �  d� �� < �  �� �q� < �  �� ��� < �  q� ��� < �  � �d� < �        vertex_count (   �             array_index_data    �            	  
                       ! # " $ & % ' ) ( * , + - / . 0 2 1 3 5 4 6 8 7 9 ; : < > = ? A @ B D C E G F H J I K M L N P O Q S R T V U W Y X Z \ [ ] _ ^ ` b a c e d    f   g   h 	 
 i   j   k   l   m   n   o   p ! " q $ % r ' ( s * + t - . u 0 1 v 3 4 w 6 7 x 9 : y < = z ? @ { B C | E F } H I ~ K L  N O � Q R � T U � W X � � � � � � � � � � � \ � \ � � � \ � � Z � � Z � Z � � � � � � � � � [ � [ � � � [ � � � � � � � � � � � � � \ � � � Z � Z [ � � [ � [ � � � [ � � \ � \ Z � � [ � [ � � � [ \ ] ^ � ` a � � � � � � � � � � � � � e � � � e � � c � � c � c � � � � � � � � � d � d � � � � � � � � � � � � e � � e � e � � � c � c d � � d � d � � � � � � e � e c � � d � � � � � d e       index_count (   t         
   primitive (                format (              aabb      ��  ��  ��   @   @   @      skeleton_aabb              blend_shape_data                                         Mesh             Cylinder.004       	         array_data     	     < � < � >2 �ػ < �    � � < � >2 <ػ <$ � 6 �d� <$ � >2 �ػ <$ � 6 <d� <; � q8 ��� <; � 6 �d� <; � q8 <�� <P � �9 ��� <P � q8 ��� <P � �9 <�� <b � �: �q� <b � �9 ��� <b � �: <q� <p � d; �� <p � �: �q� <p � d; <� <y � �; �>� <y � d; �� <y � �; <>� <~ �  < �   <~ � �; �>� <~ �  < <   <~  �; �>2 <~   < �   <~  �; <>2 <y $ d; �6 <y $ �; �>2 <y $ d; <6 <p ; �: �q8 <p ; d; �6 <p ; �: <q8 <b P �9 ��9 <b P �: �q8 <b P �9 <�9 <P b q8 ��: <P b �9 ��9 <P b q8 <�: <; p 6 �d; <; p q8 ��: <; p 6 <d; <$ y >2 ��; <$ y 6 �d; <$ y >2 <�; < ~    � < < ~ >2 ��; < ~    < < <� ~ >� ��; <� ~    � < <� ~ >� <�; <� y � �d; <� y >� ��; <� y � <d; <� p q� ��: <� p � �d; <� p q� <�: <� b �� ��9 <� b q� ��: <� b �� <�9 <� P �� �q8 <� P �� ��9 <� P �� <q8 <� ; d� �6 <� ; �� �q8 <� ; d� <6 <� $ ػ �>2 <� $ d� �6 <� $ ػ <>2 <�   � �   <�  ػ �>2 <�   � <   <� � ػ �>� <� �  � �   <� � ػ <>� <� � d� �� <� � ػ �>� <� � d� <� <� � �� �q� <� � d� �� <� � �� <q� <� � �� ��� <� � �� �q� <� � �� <�� <� � q� ��� <� � �� ��� <� � q� <�� <� � � �d� <� � q� ��� <� � � <d; <   d; <6 <   d� <� <   � <d� <� � >� �ػ <� � � �d� <� � >� <ػ <� �    � � <� � >� �ػ <� � >2 ��; < �  ػ �>2 < �  �; �>� < �  >2 <ػ < � 6 <d� <$ � q8 <�� <; � �9 <�� <P � �: <q� <b � d; <� <p � �; <>� <y �  < <   <~ � �; <>2 <~  d; <6 <y $ �: <q8 <p ; �9 <�9 <b P q8 <�: <P b 6 <d; <; p >2 <�; <$ y    < < < ~ >� <�; <� ~ � <d; <� y q� <�: <� p �� <�9 <� b �� <q8 <� P d� <6 <� ; ػ <>2 <� $  � <   <�  ػ <>� <� � d� <� <� � �� <q� <� � �� <�� <� � q� <�� <� � � <d� <� � 6 <d� <   >2 <ػ <      < � <   >� <ػ <   � <d� <   q� <�� <   �� <�� <   �� <q� <   ػ <>� <    � <   <   ػ <>2 <   d� <6 <   �� <q8 <   �� <�9 <   q� <�: <   >� <�; <      < < <   >2 <�; <   6 <d; <   q8 <�: <   �9 <�9 <   �: <q8 <   �; <>2 <    < <   <   �; <>� <   d; <� <   �: <q� <   �9 <�� <   q8 <�� <   >� <ػ <� �    < � <� � >� �ػ < �     � � < �  >2 �ػ < �  6 �d� < �  q8 ��� < �  �9 ��� < �  �: �q� < �  d; �� < �   < �   < �  �; �>2 < �  d; �6 < �  �: �q8 < �  �9 ��9 < �  q8 ��: < �  6 �d; < �     � < < �  >� ��; < �  � �d; < �  q� ��: < �  �� ��9 < �  �� �q8 < �  d� �6 < �   � �   < �  ػ �>� < �  d� �� < �  �� �q� < �  �� ��� < �  q� ��� < �  � �d� < �        vertex_count (   �             array_index_data    �            	  
                       ! # " $ & % ' ) ( * , + - / . 0 2 1 3 5 4 6 8 7 9 ; : < > = ? A @ B D C E G F H J I K M L N P O Q S R T V U W Y X Z \ [ ] _ ^ ` b a c e d    f   g   h 	 
 i   j   k   l   m   n   o   p ! " q $ % r ' ( s * + t - . u 0 1 v 3 4 w 6 7 x 9 : y < = z ? @ { B C | E F } H I ~ K L  N O � Q R � T U � W X � � � � � � � � � � � \ � \ � � � \ � � Z � � Z � Z � � � � � � � � � [ � [ � � � [ � � � � � � � � � � � � � \ � � � Z � Z [ � � [ � [ � � � [ � � \ � \ Z � � [ � [ � � � [ \ ] ^ � ` a � � � � � � � � � � � � � e � � � e � � c � � c � c � � � � � � � � � d � d � � � � � � � � � � � � e � � e � e � � � c � c d � � d � d � � � � � � e � e c � � d � � � � � d e       index_count (   t         
   primitive (                format (              aabb      ��  ��  ��   @   @   @      skeleton_aabb              blend_shape_data                                         Mesh             Cylinder.005       	         array_data     	     < � < � >2 �ػ < �    � � < � >2 <ػ <$ � 6 �d� <$ � >2 �ػ <$ � 6 <d� <; � q8 ��� <; � 6 �d� <; � q8 <�� <P � �9 ��� <P � q8 ��� <P � �9 <�� <b � �: �q� <b � �9 ��� <b � �: <q� <p � d; �� <p � �: �q� <p � d; <� <y � �; �>� <y � d; �� <y � �; <>� <~ �  < �   <~ � �; �>� <~ �  < <   <~  �; �>2 <~   < �   <~  �; <>2 <y $ d; �6 <y $ �; �>2 <y $ d; <6 <p ; �: �q8 <p ; d; �6 <p ; �: <q8 <b P �9 ��9 <b P �: �q8 <b P �9 <�9 <P b q8 ��: <P b �9 ��9 <P b q8 <�: <; p 6 �d; <; p q8 ��: <; p 6 <d; <$ y >2 ��; <$ y 6 �d; <$ y >2 <�; < ~    � < < ~ >2 ��; < ~    < < <� ~ >� ��; <� ~    � < <� ~ >� <�; <� y � �d; <� y >� ��; <� y � <d; <� p q� ��: <� p � �d; <� p q� <�: <� b �� ��9 <� b q� ��: <� b �� <�9 <� P �� �q8 <� P �� ��9 <� P �� <q8 <� ; d� �6 <� ; �� �q8 <� ; d� <6 <� $ ػ �>2 <� $ d� �6 <� $ ػ <>2 <�   � �   <�  ػ �>2 <�   � <   <� � ػ �>� <� �  � �   <� � ػ <>� <� � d� �� <� � ػ �>� <� � d� <� <� � �� �q� <� � d� �� <� � �� <q� <� � �� ��� <� � �� �q� <� � �� <�� <� � q� ��� <� � �� ��� <� � q� <�� <� � � �d� <� � q� ��� <� � � <d; <   d; <6 <   d� <� <   � <d� <� � >� �ػ <� � � �d� <� � >� <ػ <� �    � � <� � >� �ػ <� � >2 ��; < �  ػ �>2 < �  �; �>� < �  >2 <ػ < � 6 <d� <$ � q8 <�� <; � �9 <�� <P � �: <q� <b � d; <� <p � �; <>� <y �  < <   <~ � �; <>2 <~  d; <6 <y $ �: <q8 <p ; �9 <�9 <b P q8 <�: <P b 6 <d; <; p >2 <�; <$ y    < < < ~ >� <�; <� ~ � <d; <� y q� <�: <� p �� <�9 <� b �� <q8 <� P d� <6 <� ; ػ <>2 <� $  � <   <�  ػ <>� <� � d� <� <� � �� <q� <� � �� <�� <� � q� <�� <� � � <d� <� � 6 <d� <   >2 <ػ <      < � <   >� <ػ <   � <d� <   q� <�� <   �� <�� <   �� <q� <   ػ <>� <    � <   <   ػ <>2 <   d� <6 <   �� <q8 <   �� <�9 <   q� <�: <   >� <�; <      < < <   >2 <�; <   6 <d; <   q8 <�: <   �9 <�9 <   �: <q8 <   �; <>2 <    < <   <   �; <>� <   d; <� <   �: <q� <   �9 <�� <   q8 <�� <   >� <ػ <� �    < � <� � >� �ػ < �     � � < �  >2 �ػ < �  6 �d� < �  q8 ��� < �  �9 ��� < �  �: �q� < �  d; �� < �   < �   < �  �; �>2 < �  d; �6 < �  �: �q8 < �  �9 ��9 < �  q8 ��: < �  6 �d; < �     � < < �  >� ��; < �  � �d; < �  q� ��: < �  �� ��9 < �  �� �q8 < �  d� �6 < �   � �   < �  ػ �>� < �  d� �� < �  �� �q� < �  �� ��� < �  q� ��� < �  � �d� < �        vertex_count (   �             array_index_data    �            	  
                       ! # " $ & % ' ) ( * , + - / . 0 2 1 3 5 4 6 8 7 9 ; : < > = ? A @ B D C E G F H J I K M L N P O Q S R T V U W Y X Z \ [ ] _ ^ ` b a c e d    f   g   h 	 
 i   j   k   l   m   n   o   p ! " q $ % r ' ( s * + t - . u 0 1 v 3 4 w 6 7 x 9 : y < = z ? @ { B C | E F } H I ~ K L  N O � Q R � T U � W X � � � � � � � � � � � \ � \ � � � \ � � Z � � Z � Z � � � � � � � � � [ � [ � � � [ � � � � � � � � � � � � � \ � � � Z � Z [ � � [ � [ � � � [ � � \ � \ Z � � [ � [ � � � [ \ ] ^ � ` a � � � � � � � � � � � � � e � � � e � � c � � c � c � � � � � � � � � d � d � � � � � � � � � � � � e � � e � e � � � c � c d � � d � d � � � � � � e � e c � � d � � � � � d e       index_count (   t         
   primitive (                format (              aabb      ��  ��  ��   @   @   @      skeleton_aabb              blend_shape_data                                         Mesh             Cylinder.006       	         array_data     	     < � < � >2 �ػ < �    � � < � >2 <ػ <$ � 6 �d� <$ � >2 �ػ <$ � 6 <d� <; � q8 ��� <; � 6 �d� <; � q8 <�� <P � �9 ��� <P � q8 ��� <P � �9 <�� <b � �: �q� <b � �9 ��� <b � �: <q� <p � d; �� <p � �: �q� <p � d; <� <y � �; �>� <y � d; �� <y � �; <>� <~ �  < �   <~ � �; �>� <~ �  < <   <~  �; �>2 <~   < �   <~  �; <>2 <y $ d; �6 <y $ �; �>2 <y $ d; <6 <p ; �: �q8 <p ; d; �6 <p ; �: <q8 <b P �9 ��9 <b P �: �q8 <b P �9 <�9 <P b q8 ��: <P b �9 ��9 <P b q8 <�: <; p 6 �d; <; p q8 ��: <; p 6 <d; <$ y >2 ��; <$ y 6 �d; <$ y >2 <�; < ~    � < < ~ >2 ��; < ~    < < <� ~ >� ��; <� ~    � < <� ~ >� <�; <� y � �d; <� y >� ��; <� y � <d; <� p q� ��: <� p � �d; <� p q� <�: <� b �� ��9 <� b q� ��: <� b �� <�9 <� P �� �q8 <� P �� ��9 <� P �� <q8 <� ; d� �6 <� ; �� �q8 <� ; d� <6 <� $ ػ �>2 <� $ d� �6 <� $ ػ <>2 <�   � �   <�  ػ �>2 <�   � <   <� � ػ �>� <� �  � �   <� � ػ <>� <� � d� �� <� � ػ �>� <� � d� <� <� � �� �q� <� � d� �� <� � �� <q� <� � �� ��� <� � �� �q� <� � �� <�� <� � q� ��� <� � �� ��� <� � q� <�� <� � � �d� <� � q� ��� <� � � <d; <   d; <6 <   d� <� <   � <d� <� � >� �ػ <� � � �d� <� � >� <ػ <� �    � � <� � >� �ػ <� � >2 ��; < �  ػ �>2 < �  �; �>� < �  >2 <ػ < � 6 <d� <$ � q8 <�� <; � �9 <�� <P � �: <q� <b � d; <� <p � �; <>� <y �  < <   <~ � �; <>2 <~  d; <6 <y $ �: <q8 <p ; �9 <�9 <b P q8 <�: <P b 6 <d; <; p >2 <�; <$ y    < < < ~ >� <�; <� ~ � <d; <� y q� <�: <� p �� <�9 <� b �� <q8 <� P d� <6 <� ; ػ <>2 <� $  � <   <�  ػ <>� <� � d� <� <� � �� <q� <� � �� <�� <� � q� <�� <� � � <d� <� � 6 <d� <   >2 <ػ <      < � <   >� <ػ <   � <d� <   q� <�� <   �� <�� <   �� <q� <   ػ <>� <    � <   <   ػ <>2 <   d� <6 <   �� <q8 <   �� <�9 <   q� <�: <   >� <�; <      < < <   >2 <�; <   6 <d; <   q8 <�: <   �9 <�9 <   �: <q8 <   �; <>2 <    < <   <   �; <>� <   d; <� <   �: <q� <   �9 <�� <   q8 <�� <   >� <ػ <� �    < � <� � >� �ػ < �     � � < �  >2 �ػ < �  6 �d� < �  q8 ��� < �  �9 ��� < �  �: �q� < �  d; �� < �   < �   < �  �; �>2 < �  d; �6 < �  �: �q8 < �  �9 ��9 < �  q8 ��: < �  6 �d; < �     � < < �  >� ��; < �  � �d; < �  q� ��: < �  �� ��9 < �  �� �q8 < �  d� �6 < �   � �   < �  ػ �>� < �  d� �� < �  �� �q� < �  �� ��� < �  q� ��� < �  � �d� < �        vertex_count (   �             array_index_data    �            	  
                       ! # " $ & % ' ) ( * , + - / . 0 2 1 3 5 4 6 8 7 9 ; : < > = ? A @ B D C E G F H J I K M L N P O Q S R T V U W Y X Z \ [ ] _ ^ ` b a c e d    f   g   h 	 
 i   j   k   l   m   n   o   p ! " q $ % r ' ( s * + t - . u 0 1 v 3 4 w 6 7 x 9 : y < = z ? @ { B C | E F } H I ~ K L  N O � Q R � T U � W X � � � � � � � � � � � \ � \ � � � \ � � Z � � Z � Z � � � � � � � � � [ � [ � � � [ � � � � � � � � � � � � � \ � � � Z � Z [ � � [ � [ � � � [ � � \ � \ Z � � [ � [ � � � [ \ ] ^ � ` a � � � � � � � � � � � � � e � � � e � � c � � c � c � � � � � � � � � d � d � � � � � � � � � � � � e � � e � e � � � c � c d � � d � d � � � � � � e � e c � � d � � � � � d e       index_count (   t         
   primitive (                format (              aabb      ��  ��  ��   @   @   @      skeleton_aabb              blend_shape_data                                         Mesh             Cylinder.007       	         array_data     	     < � < � >2 �ػ < �    � � < � >2 <ػ <$ � 6 �d� <$ � >2 �ػ <$ � 6 <d� <; � q8 ��� <; � 6 �d� <; � q8 <�� <P � �9 ��� <P � q8 ��� <P � �9 <�� <b � �: �q� <b � �9 ��� <b � �: <q� <p � d; �� <p � �: �q� <p � d; <� <y � �; �>� <y � d; �� <y � �; <>� <~ �  < �   <~ � �; �>� <~ �  < <   <~  �; �>2 <~   < �   <~  �; <>2 <y $ d; �6 <y $ �; �>2 <y $ d; <6 <p ; �: �q8 <p ; d; �6 <p ; �: <q8 <b P �9 ��9 <b P �: �q8 <b P �9 <�9 <P b q8 ��: <P b �9 ��9 <P b q8 <�: <; p 6 �d; <; p q8 ��: <; p 6 <d; <$ y >2 ��; <$ y 6 �d; <$ y >2 <�; < ~    � < < ~ >2 ��; < ~    < < <� ~ >� ��; <� ~    � < <� ~ >� <�; <� y � �d; <� y >� ��; <� y � <d; <� p q� ��: <� p � �d; <� p q� <�: <� b �� ��9 <� b q� ��: <� b �� <�9 <� P �� �q8 <� P �� ��9 <� P �� <q8 <� ; d� �6 <� ; �� �q8 <� ; d� <6 <� $ ػ �>2 <� $ d� �6 <� $ ػ <>2 <�   � �   <�  ػ �>2 <�   � <   <� � ػ �>� <� �  � �   <� � ػ <>� <� � d� �� <� � ػ �>� <� � d� <� <� � �� �q� <� � d� �� <� � �� <q� <� � �� ��� <� � �� �q� <� � �� <�� <� � q� ��� <� � �� ��� <� � q� <�� <� � � �d� <� � q� ��� <� � � <d; <   d; <6 <   d� <� <   � <d� <� � >� �ػ <� � � �d� <� � >� <ػ <� �    � � <� � >� �ػ <� � >2 ��; < �  ػ �>2 < �  �; �>� < �  >2 <ػ < � 6 <d� <$ � q8 <�� <; � �9 <�� <P � �: <q� <b � d; <� <p � �; <>� <y �  < <   <~ � �; <>2 <~  d; <6 <y $ �: <q8 <p ; �9 <�9 <b P q8 <�: <P b 6 <d; <; p >2 <�; <$ y    < < < ~ >� <�; <� ~ � <d; <� y q� <�: <� p �� <�9 <� b �� <q8 <� P d� <6 <� ; ػ <>2 <� $  � <   <�  ػ <>� <� � d� <� <� � �� <q� <� � �� <�� <� � q� <�� <� � � <d� <� � 6 <d� <   >2 <ػ <      < � <   >� <ػ <   � <d� <   q� <�� <   �� <�� <   �� <q� <   ػ <>� <    � <   <   ػ <>2 <   d� <6 <   �� <q8 <   �� <�9 <   q� <�: <   >� <�; <      < < <   >2 <�; <   6 <d; <   q8 <�: <   �9 <�9 <   �: <q8 <   �; <>2 <    < <   <   �; <>� <   d; <� <   �: <q� <   �9 <�� <   q8 <�� <   >� <ػ <� �    < � <� � >� �ػ < �     � � < �  >2 �ػ < �  6 �d� < �  q8 ��� < �  �9 ��� < �  �: �q� < �  d; �� < �   < �   < �  �; �>2 < �  d; �6 < �  �: �q8 < �  �9 ��9 < �  q8 ��: < �  6 �d; < �     � < < �  >� ��; < �  � �d; < �  q� ��: < �  �� ��9 < �  �� �q8 < �  d� �6 < �   � �   < �  ػ �>� < �  d� �� < �  �� �q� < �  �� ��� < �  q� ��� < �  � �d� < �        vertex_count (   �             array_index_data    �            	  
                       ! # " $ & % ' ) ( * , + - / . 0 2 1 3 5 4 6 8 7 9 ; : < > = ? A @ B D C E G F H J I K M L N P O Q S R T V U W Y X Z \ [ ] _ ^ ` b a c e d    f   g   h 	 
 i   j   k   l   m   n   o   p ! " q $ % r ' ( s * + t - . u 0 1 v 3 4 w 6 7 x 9 : y < = z ? @ { B C | E F } H I ~ K L  N O � Q R � T U � W X � � � � � � � � � � � \ � \ � � � \ � � Z � � Z � Z � � � � � � � � � [ � [ � � � [ � � � � � � � � � � � � � \ � � � Z � Z [ � � [ � [ � � � [ � � \ � \ Z � � [ � [ � � � [ \ ] ^ � ` a � � � � � � � � � � � � � e � � � e � � c � � c � c � � � � � � � � � d � d � � � � � � � � � � � � e � � e � e � � � c � c d � � d � d � � � � � � e � e c � � d � � � � � d e       index_count (   t         
   primitive (                format (              aabb      ��  ��  ��   @   @   @      skeleton_aabb              blend_shape_data                                         Mesh             Cylinder.008       
         array_data     	    ? � < � >2C�ػ < �   C��� < � >2?ػ <$ � 6C�d� <$ � >2C�ػ <$ � 6?d� <; � q8C��� <; � 6C�d� <; � q8?�� <P � �9C��� <P � q8C��� <P � �9?�� <b � �:C�q� <b � �9C��� <b � �:?q� <p � d;C�� <p � �:C�q� <p � d;?� <y � �;C�>� <y � d;C�� <y � �;?>� <~ �  <C�   <~ � �;C�>� <~ �  <?   <~  �;C�>2 <~   <C�   <~  �;?>2 <y $ d;C�6 <y $ �;C�>2 <y $ d;?6 <p ; �:C�q8 <p ; d;C�6 <p ; �:C�q8 <b P �9?�9 <b P �9C��9 <b P �9?�9 <P b q8C��: <P b �9C��9 <P b q8?�: <; p 6C�d; <; p q8C��: <; p 6?d; <$ y >2C��; <$ y 6C�d; <$ y >2?�; < ~   C� < < ~ >2C��; < ~   ?�; <� ~ >�C��; <� ~   C� < <� ~ >�?�; <� y �C�d; <� y >�C��; <� y �?d; <� p q�C��: <� p �C�d; <� p q�?�: <� b ��C��9 <� b q�C��: <� b ��?�9 <� P ��C�q8 <� P ��C��9 <� P ��?q8 <� ; d�C�6 <� ; ��C�q8 <� ; d�?6 <� $ ػC�>2 <� $ d�C�6 <� $ ػ?>2 <�   �C�   <�  ػC�>2 <�   �?   <� � ػC�>� <� �  �C�   <� � ػ?>� <� � d�C�� <� � ػC�>� <� � d�?� <� � ��C�q� <� � d�C�� <� � ��?q� <� � ��C��� <� � ��C�q� <� � ��?�� <� � q�C��� <� � ��C��� <� � q�?�� <� � �C�d� <� � q�C��� <� � �?d; <   d;?6 <   d�?� <   �?d� <� � >�C�ػ <� � �C�d� <� � >�C�ػ <� �   ? � <� �   C��� <� � >2C��; < �  ػC�>2 < �  �;C�>� < �  >2?ػ < � 6?d� <$ � q8?�� <; � �9?�� <P � �:?q� <b � d;?� <p � �;?>� <y �  <?   <~ � �;?>2 <~  d;?6 <y $ �:?q8 <p ; �:?q8 <b P q8?�: <P b 6?d; <; p >2?�; <$ y   ?�; < ~ >�?�; <� ~ �?d; <� y q�?�: <� p ��?�9 <� b ��?q8 <� P d�?6 <� ; ػ?>2 <� $  �?   <�  ػ?>� <� � d�?� <� � ��?q� <� � ��?�� <� � q�?�� <� � �?d� <� � 6?d� <   >2?ػ <     ? � <   >�?ػ <   �?d� <   q�?�� <   ��?�� <   ��?q� <   ػ?>� <    �?   <   ػ?>2 <   d�?6 <   ��?q8 <   ��?�9 <   q�?�: <   >�?�; <     ?�; <   >2?�; <   6?d; <   q8?�: <   �9?�9 <   �:?q8 <   �;?>2 <    <?   <   �;?>� <   d;?� <   �:?q� <   �9?�� <   q8?�� <   >�?ػ <� � >�?ػ <� � >�C�ػ < �    C��� < �  >2C�ػ < �  6C�d� < �  q8C��� < �  �9C��� < �  �:C�q� < �  d;C�� < �   <C�   < �  �;C�>2 < �  d;C�6 < �  �:C�q8 < �  �9C��9 < �  q8C��: < �  6C�d; < �    C� < < �  q�C��: < �  >�C��; < �  �C�d; < �  ��C��9 < �  ��C�q8 < �  d�C�6 < �   �C�   < �  ػC�>� < �  d�C�� < �  ��C�q� < �  ��C��� < �  q�C��� < �  �C�d� < �        vertex_count (   �             array_index_data    �            	  
                       ! # " $ & % ' ) ( * , + - / . 0 2 1 3 5 4 6 8 7 9 ; : < > = ? A @ B D C E G F H J I K M L N P O Q S R T V U W Y X Z \ [ ] _ ^ ` b a c e d    f   g   h 	 
 i   j   k   l   m   n   o   p ! " q $ % r ' ( s * + t - . u 0 1 v 3 4 w 6 7 x 9 : y < = z ? @ { B C | E F } H I ~ K L  N O � Q R � T U � W X � � � � � � � � � � � \ � \ � � � \ � � Z � � Z � Z � � � � � � � � � [ � [ � � � [ � � � � � � � � \ � � \ � \ � � � Z � Z [ � � [ � [ � � � [ � � \ � \ Z � � [ � [ � � � [ \ ] ^ � ` a � � � � � � � � e � � e � e � � � e � � � � � c � c � � � � � � � � � d � d � � � � � � � � � � � � � � � e � e � � � e � � � � � d � d � � � � � � e � e c � c d � � � � � d e       index_count (   t         
   primitive (                format (              aabb      ��-h��  ��   @Z)F@   @      skeleton_aabb              blend_shape_data              name       Material.001                                  SpatialMaterial $            Material.001                     	          
                                           (              (              (              (                   �?        �?   (                 333?333?333?  �?             (                 ���=���=���=  �?      ��L?      �
?                                                             !          "          #          $          %          &   
     �?  �?'   
           (   
     �?  �?)   
              PackedScene    *      	         names "   $      Scene Root    Spatial    Cube 
   transform    layers    material_override    cast_shadow    extra_cull_margin    visible_in_all_rooms    use_in_baked_light    lod_min_distance    lod_min_hysteresis    lod_max_distance    lod_max_hysteresis    mesh 	   skeleton    material/0    MeshInstance    Cube.1 	   Cylinder    Cylinder.1    Cylinder.2    Cylinder.3    Cylinder.4    Cylinder.5    Cylinder.6    Cylinder.7    cover    AnimationPlayer    playback_process_mode    playback_default_blend_time 
   root_node    playback/active    playback/speed    blend_times 	   autoplay    	   variants    !      33�?            ��?               @    ��?    (                                                                       ��L>            ��L>               ?0�?�o�? 	��            ���>            ���=            ���>�X>����?��?            ���>            ���=            ���>(>g=���?��?            ���>            ���=            ���>�X>����??            ���>            ���=            ���>(>g=���??            ���>            ���=            ���>�X>����?��>�            ���>            ���=            ���>(>g=���?��>�      	      ���>            ���=            ���>�X>����?{~|�      
      ���>            ���=            ���>(>g=���?{~|�            ��?            �)C����    ��?�)C�� �����?����                       �?                    node_count (                nodes     �  ��������       ����                      ����                                        	      
                                                            ����      	                                 	      
                           
                                 ����                                       	      
                                                            ����                                       	      
                                                            ����                                       	      
                                                            ����                                       	      
                                                            ����                                       	      
                                                            ����                                       	      
                                                            ����                                       	      
                                                            ����                                       	      
                                                            ����                                       	      
                                                            ����                            !      "      #                 conn_count (                 conns               node_paths              editable_instances              version (          RSRC       [remap]

importer="scene"
type="PackedScene"
path="res://.import/incubator.dae-2e04073c4fc20dcee8f5f14ec9979ed0.scn"

[params]

nodes/root_type="Spatial"
nodes/root_name="Scene Root"
nodes/custom_script=""
materials/location=0
materials/storage=0
geometry/compress=true
geometry/ensure_tangents=true
geometry/storage=0
animation/import=true
animation/fps=15
animation/filter_script=""
animation/optimizer/enabled=true
animation/optimizer/max_linear_error=0.05
animation/optimizer/max_angular_error=0.01
animation/optimizer/max_angle=22
animation/optimizer/remove_unused_tracks=true
animation/clips/amount=0
animation/clip_1/name=""
animation/clip_1/start_frame=0
animation/clip_1/end_frame=0
animation/clip_1/loops=false
animation/clip_2/name=""
animation/clip_2/start_frame=0
animation/clip_2/end_frame=0
animation/clip_2/loops=false
animation/clip_3/name=""
animation/clip_3/start_frame=0
animation/clip_3/end_frame=0
animation/clip_3/loops=false
animation/clip_4/name=""
animation/clip_4/start_frame=0
animation/clip_4/end_frame=0
animation/clip_4/loops=false
animation/clip_5/name=""
animation/clip_5/start_frame=0
animation/clip_5/end_frame=0
animation/clip_5/loops=false
animation/clip_6/name=""
animation/clip_6/start_frame=0
animation/clip_6/end_frame=0
animation/clip_6/loops=false
animation/clip_7/name=""
animation/clip_7/start_frame=0
animation/clip_7/end_frame=0
animation/clip_7/loops=false
animation/clip_8/name=""
animation/clip_8/start_frame=0
animation/clip_8/end_frame=0
animation/clip_8/loops=false
animation/clip_9/name=""
animation/clip_9/start_frame=0
animation/clip_9/end_frame=0
animation/clip_9/loops=false
animation/clip_10/name=""
animation/clip_10/start_frame=0
animation/clip_10/end_frame=0
animation/clip_10/loops=false
animation/clip_11/name=""
animation/clip_11/start_frame=0
animation/clip_11/end_frame=0
animation/clip_11/loops=false
animation/clip_12/name=""
animation/clip_12/start_frame=0
animation/clip_12/end_frame=0
animation/clip_12/loops=false
animation/clip_13/name=""
animation/clip_13/start_frame=0
animation/clip_13/end_frame=0
animation/clip_13/loops=false
animation/clip_14/name=""
animation/clip_14/start_frame=0
animation/clip_14/end_frame=0
animation/clip_14/loops=false
animation/clip_15/name=""
animation/clip_15/start_frame=0
animation/clip_15/end_frame=0
animation/clip_15/loops=false
animation/clip_16/name=""
animation/clip_16/start_frame=0
animation/clip_16/end_frame=0
animation/clip_16/loops=false
animation/clip_17/name=""
animation/clip_17/start_frame=0
animation/clip_17/end_frame=0
animation/clip_17/loops=false
animation/clip_18/name=""
animation/clip_18/start_frame=0
animation/clip_18/end_frame=0
animation/clip_18/loops=false
animation/clip_19/name=""
animation/clip_19/start_frame=0
animation/clip_19/end_frame=0
animation/clip_19/loops=false
animation/clip_20/name=""
animation/clip_20/start_frame=0
animation/clip_20/end_frame=0
animation/clip_20/loops=false
animation/clip_21/name=""
animation/clip_21/start_frame=0
animation/clip_21/end_frame=0
animation/clip_21/loops=false
animation/clip_22/name=""
animation/clip_22/start_frame=0
animation/clip_22/end_frame=0
animation/clip_22/loops=false
animation/clip_23/name=""
animation/clip_23/start_frame=0
animation/clip_23/end_frame=0
animation/clip_23/loops=false
animation/clip_24/name=""
animation/clip_24/start_frame=0
animation/clip_24/end_frame=0
animation/clip_24/loops=false
animation/clip_25/name=""
animation/clip_25/start_frame=0
animation/clip_25/end_frame=0
animation/clip_25/loops=false
animation/clip_26/name=""
animation/clip_26/start_frame=0
animation/clip_26/end_frame=0
animation/clip_26/loops=false
animation/clip_27/name=""
animation/clip_27/start_frame=0
animation/clip_27/end_frame=0
animation/clip_27/loops=false
animation/clip_28/name=""
animation/clip_28/start_frame=0
animation/clip_28/end_frame=0
animation/clip_28/loops=false
animation/clip_29/name=""
animation/clip_29/start_frame=0
animation/clip_29/end_frame=0
animation/clip_29/loops=false
animation/clip_30/name=""
animation/clip_30/start_frame=0
animation/clip_30/end_frame=0
animation/clip_30/loops=false
animation/clip_31/name=""
animation/clip_31/start_frame=0
animation/clip_31/end_frame=0
animation/clip_31/loops=false
animation/clip_32/name=""
animation/clip_32/start_frame=0
animation/clip_32/end_frame=0
animation/clip_32/loops=false
animation/clip_33/name=""
animation/clip_33/start_frame=0
animation/clip_33/end_frame=0
animation/clip_33/loops=false
animation/clip_34/name=""
animation/clip_34/start_frame=0
animation/clip_34/end_frame=0
animation/clip_34/loops=false
animation/clip_35/name=""
animation/clip_35/start_frame=0
animation/clip_35/end_frame=0
animation/clip_35/loops=false
animation/clip_36/name=""
animation/clip_36/start_frame=0
animation/clip_36/end_frame=0
animation/clip_36/loops=false
animation/clip_37/name=""
animation/clip_37/start_frame=0
animation/clip_37/end_frame=0
animation/clip_37/loops=false
animation/clip_38/name=""
animation/clip_38/start_frame=0
animation/clip_38/end_frame=0
animation/clip_38/loops=false
animation/clip_39/name=""
animation/clip_39/start_frame=0
animation/clip_39/end_frame=0
animation/clip_39/loops=false
animation/clip_40/name=""
animation/clip_40/start_frame=0
animation/clip_40/end_frame=0
animation/clip_40/loops=false
animation/clip_41/name=""
animation/clip_41/start_frame=0
animation/clip_41/end_frame=0
animation/clip_41/loops=false
animation/clip_42/name=""
animation/clip_42/start_frame=0
animation/clip_42/end_frame=0
animation/clip_42/loops=false
animation/clip_43/name=""
animation/clip_43/start_frame=0
animation/clip_43/end_frame=0
animation/clip_43/loops=false
animation/clip_44/name=""
animation/clip_44/start_frame=0
animation/clip_44/end_frame=0
animation/clip_44/loops=false
animation/clip_45/name=""
animation/clip_45/start_frame=0
animation/clip_45/end_frame=0
animation/clip_45/loops=false
animation/clip_46/name=""
animation/clip_46/start_frame=0
animation/clip_46/end_frame=0
animation/clip_46/loops=false
animation/clip_47/name=""
animation/clip_47/start_frame=0
animation/clip_47/end_frame=0
animation/clip_47/loops=false
animation/clip_48/name=""
animation/clip_48/start_frame=0
animation/clip_48/end_frame=0
animation/clip_48/loops=false
animation/clip_49/name=""
animation/clip_49/start_frame=0
animation/clip_49/end_frame=0
animation/clip_49/loops=false
animation/clip_50/name=""
animation/clip_50/start_frame=0
animation/clip_50/end_frame=0
animation/clip_50/loops=false
animation/clip_51/name=""
animation/clip_51/start_frame=0
animation/clip_51/end_frame=0
animation/clip_51/loops=false
animation/clip_52/name=""
animation/clip_52/start_frame=0
animation/clip_52/end_frame=0
animation/clip_52/loops=false
animation/clip_53/name=""
animation/clip_53/start_frame=0
animation/clip_53/end_frame=0
animation/clip_53/loops=false
animation/clip_54/name=""
animation/clip_54/start_frame=0
animation/clip_54/end_frame=0
animation/clip_54/loops=false
animation/clip_55/name=""
animation/clip_55/start_frame=0
animation/clip_55/end_frame=0
animation/clip_55/loops=false
animation/clip_56/name=""
animation/clip_56/start_frame=0
animation/clip_56/end_frame=0
animation/clip_56/loops=false
animation/clip_57/name=""
animation/clip_57/start_frame=0
animation/clip_57/end_frame=0
animation/clip_57/loops=false
animation/clip_58/name=""
animation/clip_58/start_frame=0
animation/clip_58/end_frame=0
animation/clip_58/loops=false
animation/clip_59/name=""
animation/clip_59/start_frame=0
animation/clip_59/end_frame=0
animation/clip_59/loops=false
animation/clip_60/name=""
animation/clip_60/start_frame=0
animation/clip_60/end_frame=0
animation/clip_60/loops=false
animation/clip_61/name=""
animation/clip_61/start_frame=0
animation/clip_61/end_frame=0
animation/clip_61/loops=false
animation/clip_62/name=""
animation/clip_62/start_frame=0
animation/clip_62/end_frame=0
animation/clip_62/loops=false
animation/clip_63/name=""
animation/clip_63/start_frame=0
animation/clip_63/end_frame=0
animation/clip_63/loops=false
animation/clip_64/name=""
animation/clip_64/start_frame=0
animation/clip_64/end_frame=0
animation/clip_64/loops=false
animation/clip_65/name=""
animation/clip_65/start_frame=0
animation/clip_65/end_frame=0
animation/clip_65/loops=false
animation/clip_66/name=""
animation/clip_66/start_frame=0
animation/clip_66/end_frame=0
animation/clip_66/loops=false
animation/clip_67/name=""
animation/clip_67/start_frame=0
animation/clip_67/end_frame=0
animation/clip_67/loops=false
animation/clip_68/name=""
animation/clip_68/start_frame=0
animation/clip_68/end_frame=0
animation/clip_68/loops=false
animation/clip_69/name=""
animation/clip_69/start_frame=0
animation/clip_69/end_frame=0
animation/clip_69/loops=false
animation/clip_70/name=""
animation/clip_70/start_frame=0
animation/clip_70/end_frame=0
animation/clip_70/loops=false
animation/clip_71/name=""
animation/clip_71/start_frame=0
animation/clip_71/end_frame=0
animation/clip_71/loops=false
animation/clip_72/name=""
animation/clip_72/start_frame=0
animation/clip_72/end_frame=0
animation/clip_72/loops=false
animation/clip_73/name=""
animation/clip_73/start_frame=0
animation/clip_73/end_frame=0
animation/clip_73/loops=false
animation/clip_74/name=""
animation/clip_74/start_frame=0
animation/clip_74/end_frame=0
animation/clip_74/loops=false
animation/clip_75/name=""
animation/clip_75/start_frame=0
animation/clip_75/end_frame=0
animation/clip_75/loops=false
animation/clip_76/name=""
animation/clip_76/start_frame=0
animation/clip_76/end_frame=0
animation/clip_76/loops=false
animation/clip_77/name=""
animation/clip_77/start_frame=0
animation/clip_77/end_frame=0
animation/clip_77/loops=false
animation/clip_78/name=""
animation/clip_78/start_frame=0
animation/clip_78/end_frame=0
animation/clip_78/loops=false
animation/clip_79/name=""
animation/clip_79/start_frame=0
animation/clip_79/end_frame=0
animation/clip_79/loops=false
animation/clip_80/name=""
animation/clip_80/start_frame=0
animation/clip_80/end_frame=0
animation/clip_80/loops=false
animation/clip_81/name=""
animation/clip_81/start_frame=0
animation/clip_81/end_frame=0
animation/clip_81/loops=false
animation/clip_82/name=""
animation/clip_82/start_frame=0
animation/clip_82/end_frame=0
animation/clip_82/loops=false
animation/clip_83/name=""
animation/clip_83/start_frame=0
animation/clip_83/end_frame=0
animation/clip_83/loops=false
animation/clip_84/name=""
animation/clip_84/start_frame=0
animation/clip_84/end_frame=0
animation/clip_84/loops=false
animation/clip_85/name=""
animation/clip_85/start_frame=0
animation/clip_85/end_frame=0
animation/clip_85/loops=false
animation/clip_86/name=""
animation/clip_86/start_frame=0
animation/clip_86/end_frame=0
animation/clip_86/loops=false
animation/clip_87/name=""
animation/clip_87/start_frame=0
animation/clip_87/end_frame=0
animation/clip_87/loops=false
animation/clip_88/name=""
animation/clip_88/start_frame=0
animation/clip_88/end_frame=0
animation/clip_88/loops=false
animation/clip_89/name=""
animation/clip_89/start_frame=0
animation/clip_89/end_frame=0
animation/clip_89/loops=false
animation/clip_90/name=""
animation/clip_90/start_frame=0
animation/clip_90/end_frame=0
animation/clip_90/loops=false
animation/clip_91/name=""
animation/clip_91/start_frame=0
animation/clip_91/end_frame=0
animation/clip_91/loops=false
animation/clip_92/name=""
animation/clip_92/start_frame=0
animation/clip_92/end_frame=0
animation/clip_92/loops=false
animation/clip_93/name=""
animation/clip_93/start_frame=0
animation/clip_93/end_frame=0
animation/clip_93/loops=false
animation/clip_94/name=""
animation/clip_94/start_frame=0
animation/clip_94/end_frame=0
animation/clip_94/loops=false
animation/clip_95/name=""
animation/clip_95/start_frame=0
animation/clip_95/end_frame=0
animation/clip_95/loops=false
animation/clip_96/name=""
animation/clip_96/start_frame=0
animation/clip_96/end_frame=0
animation/clip_96/loops=false
animation/clip_97/name=""
animation/clip_97/start_frame=0
animation/clip_97/end_frame=0
animation/clip_97/loops=false
animation/clip_98/name=""
animation/clip_98/start_frame=0
animation/clip_98/end_frame=0
animation/clip_98/loops=false
animation/clip_99/name=""
animation/clip_99/start_frame=0
animation/clip_99/end_frame=0
animation/clip_99/loops=false
animation/clip_100/name=""
animation/clip_100/start_frame=0
animation/clip_100/end_frame=0
animation/clip_100/loops=false
animation/clip_101/name=""
animation/clip_101/start_frame=0
animation/clip_101/end_frame=0
animation/clip_101/loops=false
animation/clip_102/name=""
animation/clip_102/start_frame=0
animation/clip_102/end_frame=0
animation/clip_102/loops=false
animation/clip_103/name=""
animation/clip_103/start_frame=0
animation/clip_103/end_frame=0
animation/clip_103/loops=false
animation/clip_104/name=""
animation/clip_104/start_frame=0
animation/clip_104/end_frame=0
animation/clip_104/loops=false
animation/clip_105/name=""
animation/clip_105/start_frame=0
animation/clip_105/end_frame=0
animation/clip_105/loops=false
animation/clip_106/name=""
animation/clip_106/start_frame=0
animation/clip_106/end_frame=0
animation/clip_106/loops=false
animation/clip_107/name=""
animation/clip_107/start_frame=0
animation/clip_107/end_frame=0
animation/clip_107/loops=false
animation/clip_108/name=""
animation/clip_108/start_frame=0
animation/clip_108/end_frame=0
animation/clip_108/loops=false
animation/clip_109/name=""
animation/clip_109/start_frame=0
animation/clip_109/end_frame=0
animation/clip_109/loops=false
animation/clip_110/name=""
animation/clip_110/start_frame=0
animation/clip_110/end_frame=0
animation/clip_110/loops=false
animation/clip_111/name=""
animation/clip_111/start_frame=0
animation/clip_111/end_frame=0
animation/clip_111/loops=false
animation/clip_112/name=""
animation/clip_112/start_frame=0
animation/clip_112/end_frame=0
animation/clip_112/loops=false
animation/clip_113/name=""
animation/clip_113/start_frame=0
animation/clip_113/end_frame=0
animation/clip_113/loops=false
animation/clip_114/name=""
animation/clip_114/start_frame=0
animation/clip_114/end_frame=0
animation/clip_114/loops=false
animation/clip_115/name=""
animation/clip_115/start_frame=0
animation/clip_115/end_frame=0
animation/clip_115/loops=false
animation/clip_116/name=""
animation/clip_116/start_frame=0
animation/clip_116/end_frame=0
animation/clip_116/loops=false
animation/clip_117/name=""
animation/clip_117/start_frame=0
animation/clip_117/end_frame=0
animation/clip_117/loops=false
animation/clip_118/name=""
animation/clip_118/start_frame=0
animation/clip_118/end_frame=0
animation/clip_118/loops=false
animation/clip_119/name=""
animation/clip_119/start_frame=0
animation/clip_119/end_frame=0
animation/clip_119/loops=false
animation/clip_120/name=""
animation/clip_120/start_frame=0
animation/clip_120/end_frame=0
animation/clip_120/loops=false
animation/clip_121/name=""
animation/clip_121/start_frame=0
animation/clip_121/end_frame=0
animation/clip_121/loops=false
animation/clip_122/name=""
animation/clip_122/start_frame=0
animation/clip_122/end_frame=0
animation/clip_122/loops=false
animation/clip_123/name=""
animation/clip_123/start_frame=0
animation/clip_123/end_frame=0
animation/clip_123/loops=false
animation/clip_124/name=""
animation/clip_124/start_frame=0
animation/clip_124/end_frame=0
animation/clip_124/loops=false
animation/clip_125/name=""
animation/clip_125/start_frame=0
animation/clip_125/end_frame=0
animation/clip_125/loops=false
animation/clip_126/name=""
animation/clip_126/start_frame=0
animation/clip_126/end_frame=0
animation/clip_126/loops=false
animation/clip_127/name=""
animation/clip_127/start_frame=0
animation/clip_127/end_frame=0
animation/clip_127/loops=false
animation/clip_128/name=""
animation/clip_128/start_frame=0
animation/clip_128/end_frame=0
animation/clip_128/loops=false
animation/clip_129/name=""
animation/clip_129/start_frame=0
animation/clip_129/end_frame=0
animation/clip_129/loops=false
animation/clip_130/name=""
animation/clip_130/start_frame=0
animation/clip_130/end_frame=0
animation/clip_130/loops=false
animation/clip_131/name=""
animation/clip_131/start_frame=0
animation/clip_131/end_frame=0
animation/clip_131/loops=false
animation/clip_132/name=""
animation/clip_132/start_frame=0
animation/clip_132/end_frame=0
animation/clip_132/loops=false
animation/clip_133/name=""
animation/clip_133/start_frame=0
animation/clip_133/end_frame=0
animation/clip_133/loops=false
animation/clip_134/name=""
animation/clip_134/start_frame=0
animation/clip_134/end_frame=0
animation/clip_134/loops=false
animation/clip_135/name=""
animation/clip_135/start_frame=0
animation/clip_135/end_frame=0
animation/clip_135/loops=false
animation/clip_136/name=""
animation/clip_136/start_frame=0
animation/clip_136/end_frame=0
animation/clip_136/loops=false
animation/clip_137/name=""
animation/clip_137/start_frame=0
animation/clip_137/end_frame=0
animation/clip_137/loops=false
animation/clip_138/name=""
animation/clip_138/start_frame=0
animation/clip_138/end_frame=0
animation/clip_138/loops=false
animation/clip_139/name=""
animation/clip_139/start_frame=0
animation/clip_139/end_frame=0
animation/clip_139/loops=false
animation/clip_140/name=""
animation/clip_140/start_frame=0
animation/clip_140/end_frame=0
animation/clip_140/loops=false
animation/clip_141/name=""
animation/clip_141/start_frame=0
animation/clip_141/end_frame=0
animation/clip_141/loops=false
animation/clip_142/name=""
animation/clip_142/start_frame=0
animation/clip_142/end_frame=0
animation/clip_142/loops=false
animation/clip_143/name=""
animation/clip_143/start_frame=0
animation/clip_143/end_frame=0
animation/clip_143/loops=false
animation/clip_144/name=""
animation/clip_144/start_frame=0
animation/clip_144/end_frame=0
animation/clip_144/loops=false
animation/clip_145/name=""
animation/clip_145/start_frame=0
animation/clip_145/end_frame=0
animation/clip_145/loops=false
animation/clip_146/name=""
animation/clip_146/start_frame=0
animation/clip_146/end_frame=0
animation/clip_146/loops=false
animation/clip_147/name=""
animation/clip_147/start_frame=0
animation/clip_147/end_frame=0
animation/clip_147/loops=false
animation/clip_148/name=""
animation/clip_148/start_frame=0
animation/clip_148/end_frame=0
animation/clip_148/loops=false
animation/clip_149/name=""
animation/clip_149/start_frame=0
animation/clip_149/end_frame=0
animation/clip_149/loops=false
animation/clip_150/name=""
animation/clip_150/start_frame=0
animation/clip_150/end_frame=0
animation/clip_150/loops=false
animation/clip_151/name=""
animation/clip_151/start_frame=0
animation/clip_151/end_frame=0
animation/clip_151/loops=false
animation/clip_152/name=""
animation/clip_152/start_frame=0
animation/clip_152/end_frame=0
animation/clip_152/loops=false
animation/clip_153/name=""
animation/clip_153/start_frame=0
animation/clip_153/end_frame=0
animation/clip_153/loops=false
animation/clip_154/name=""
animation/clip_154/start_frame=0
animation/clip_154/end_frame=0
animation/clip_154/loops=false
animation/clip_155/name=""
animation/clip_155/start_frame=0
animation/clip_155/end_frame=0
animation/clip_155/loops=false
animation/clip_156/name=""
animation/clip_156/start_frame=0
animation/clip_156/end_frame=0
animation/clip_156/loops=false
animation/clip_157/name=""
animation/clip_157/start_frame=0
animation/clip_157/end_frame=0
animation/clip_157/loops=false
animation/clip_158/name=""
animation/clip_158/start_frame=0
animation/clip_158/end_frame=0
animation/clip_158/loops=false
animation/clip_159/name=""
animation/clip_159/start_frame=0
animation/clip_159/end_frame=0
animation/clip_159/loops=false
animation/clip_160/name=""
animation/clip_160/start_frame=0
animation/clip_160/end_frame=0
animation/clip_160/loops=false
animation/clip_161/name=""
animation/clip_161/start_frame=0
animation/clip_161/end_frame=0
animation/clip_161/loops=false
animation/clip_162/name=""
animation/clip_162/start_frame=0
animation/clip_162/end_frame=0
animation/clip_162/loops=false
animation/clip_163/name=""
animation/clip_163/start_frame=0
animation/clip_163/end_frame=0
animation/clip_163/loops=false
animation/clip_164/name=""
animation/clip_164/start_frame=0
animation/clip_164/end_frame=0
animation/clip_164/loops=false
animation/clip_165/name=""
animation/clip_165/start_frame=0
animation/clip_165/end_frame=0
animation/clip_165/loops=false
animation/clip_166/name=""
animation/clip_166/start_frame=0
animation/clip_166/end_frame=0
animation/clip_166/loops=false
animation/clip_167/name=""
animation/clip_167/start_frame=0
animation/clip_167/end_frame=0
animation/clip_167/loops=false
animation/clip_168/name=""
animation/clip_168/start_frame=0
animation/clip_168/end_frame=0
animation/clip_168/loops=false
animation/clip_169/name=""
animation/clip_169/start_frame=0
animation/clip_169/end_frame=0
animation/clip_169/loops=false
animation/clip_170/name=""
animation/clip_170/start_frame=0
animation/clip_170/end_frame=0
animation/clip_170/loops=false
animation/clip_171/name=""
animation/clip_171/start_frame=0
animation/clip_171/end_frame=0
animation/clip_171/loops=false
animation/clip_172/name=""
animation/clip_172/start_frame=0
animation/clip_172/end_frame=0
animation/clip_172/loops=false
animation/clip_173/name=""
animation/clip_173/start_frame=0
animation/clip_173/end_frame=0
animation/clip_173/loops=false
animation/clip_174/name=""
animation/clip_174/start_frame=0
animation/clip_174/end_frame=0
animation/clip_174/loops=false
animation/clip_175/name=""
animation/clip_175/start_frame=0
animation/clip_175/end_frame=0
animation/clip_175/loops=false
animation/clip_176/name=""
animation/clip_176/start_frame=0
animation/clip_176/end_frame=0
animation/clip_176/loops=false
animation/clip_177/name=""
animation/clip_177/start_frame=0
animation/clip_177/end_frame=0
animation/clip_177/loops=false
animation/clip_178/name=""
animation/clip_178/start_frame=0
animation/clip_178/end_frame=0
animation/clip_178/loops=false
animation/clip_179/name=""
animation/clip_179/start_frame=0
animation/clip_179/end_frame=0
animation/clip_179/loops=false
animation/clip_180/name=""
animation/clip_180/start_frame=0
animation/clip_180/end_frame=0
animation/clip_180/loops=false
animation/clip_181/name=""
animation/clip_181/start_frame=0
animation/clip_181/end_frame=0
animation/clip_181/loops=false
animation/clip_182/name=""
animation/clip_182/start_frame=0
animation/clip_182/end_frame=0
animation/clip_182/loops=false
animation/clip_183/name=""
animation/clip_183/start_frame=0
animation/clip_183/end_frame=0
animation/clip_183/loops=false
animation/clip_184/name=""
animation/clip_184/start_frame=0
animation/clip_184/end_frame=0
animation/clip_184/loops=false
animation/clip_185/name=""
animation/clip_185/start_frame=0
animation/clip_185/end_frame=0
animation/clip_185/loops=false
animation/clip_186/name=""
animation/clip_186/start_frame=0
animation/clip_186/end_frame=0
animation/clip_186/loops=false
animation/clip_187/name=""
animation/clip_187/start_frame=0
animation/clip_187/end_frame=0
animation/clip_187/loops=false
animation/clip_188/name=""
animation/clip_188/start_frame=0
animation/clip_188/end_frame=0
animation/clip_188/loops=false
animation/clip_189/name=""
animation/clip_189/start_frame=0
animation/clip_189/end_frame=0
animation/clip_189/loops=false
animation/clip_190/name=""
animation/clip_190/start_frame=0
animation/clip_190/end_frame=0
animation/clip_190/loops=false
animation/clip_191/name=""
animation/clip_191/start_frame=0
animation/clip_191/end_frame=0
animation/clip_191/loops=false
animation/clip_192/name=""
animation/clip_192/start_frame=0
animation/clip_192/end_frame=0
animation/clip_192/loops=false
animation/clip_193/name=""
animation/clip_193/start_frame=0
animation/clip_193/end_frame=0
animation/clip_193/loops=false
animation/clip_194/name=""
animation/clip_194/start_frame=0
animation/clip_194/end_frame=0
animation/clip_194/loops=false
animation/clip_195/name=""
animation/clip_195/start_frame=0
animation/clip_195/end_frame=0
animation/clip_195/loops=false
animation/clip_196/name=""
animation/clip_196/start_frame=0
animation/clip_196/end_frame=0
animation/clip_196/loops=false
animation/clip_197/name=""
animation/clip_197/start_frame=0
animation/clip_197/end_frame=0
animation/clip_197/loops=false
animation/clip_198/name=""
animation/clip_198/start_frame=0
animation/clip_198/end_frame=0
animation/clip_198/loops=false
animation/clip_199/name=""
animation/clip_199/start_frame=0
animation/clip_199/end_frame=0
animation/clip_199/loops=false
animation/clip_200/name=""
animation/clip_200/start_frame=0
animation/clip_200/end_frame=0
animation/clip_200/loops=false
animation/clip_201/name=""
animation/clip_201/start_frame=0
animation/clip_201/end_frame=0
animation/clip_201/loops=false
animation/clip_202/name=""
animation/clip_202/start_frame=0
animation/clip_202/end_frame=0
animation/clip_202/loops=false
animation/clip_203/name=""
animation/clip_203/start_frame=0
animation/clip_203/end_frame=0
animation/clip_203/loops=false
animation/clip_204/name=""
animation/clip_204/start_frame=0
animation/clip_204/end_frame=0
animation/clip_204/loops=false
animation/clip_205/name=""
animation/clip_205/start_frame=0
animation/clip_205/end_frame=0
animation/clip_205/loops=false
animation/clip_206/name=""
animation/clip_206/start_frame=0
animation/clip_206/end_frame=0
animation/clip_206/loops=false
animation/clip_207/name=""
animation/clip_207/start_frame=0
animation/clip_207/end_frame=0
animation/clip_207/loops=false
animation/clip_208/name=""
animation/clip_208/start_frame=0
animation/clip_208/end_frame=0
animation/clip_208/loops=false
animation/clip_209/name=""
animation/clip_209/start_frame=0
animation/clip_209/end_frame=0
animation/clip_209/loops=false
animation/clip_210/name=""
animation/clip_210/start_frame=0
animation/clip_210/end_frame=0
animation/clip_210/loops=false
animation/clip_211/name=""
animation/clip_211/start_frame=0
animation/clip_211/end_frame=0
animation/clip_211/loops=false
animation/clip_212/name=""
animation/clip_212/start_frame=0
animation/clip_212/end_frame=0
animation/clip_212/loops=false
animation/clip_213/name=""
animation/clip_213/start_frame=0
animation/clip_213/end_frame=0
animation/clip_213/loops=false
animation/clip_214/name=""
animation/clip_214/start_frame=0
animation/clip_214/end_frame=0
animation/clip_214/loops=false
animation/clip_215/name=""
animation/clip_215/start_frame=0
animation/clip_215/end_frame=0
animation/clip_215/loops=false
animation/clip_216/name=""
animation/clip_216/start_frame=0
animation/clip_216/end_frame=0
animation/clip_216/loops=false
animation/clip_217/name=""
animation/clip_217/start_frame=0
animation/clip_217/end_frame=0
animation/clip_217/loops=false
animation/clip_218/name=""
animation/clip_218/start_frame=0
animation/clip_218/end_frame=0
animation/clip_218/loops=false
animation/clip_219/name=""
animation/clip_219/start_frame=0
animation/clip_219/end_frame=0
animation/clip_219/loops=false
animation/clip_220/name=""
animation/clip_220/start_frame=0
animation/clip_220/end_frame=0
animation/clip_220/loops=false
animation/clip_221/name=""
animation/clip_221/start_frame=0
animation/clip_221/end_frame=0
animation/clip_221/loops=false
animation/clip_222/name=""
animation/clip_222/start_frame=0
animation/clip_222/end_frame=0
animation/clip_222/loops=false
animation/clip_223/name=""
animation/clip_223/start_frame=0
animation/clip_223/end_frame=0
animation/clip_223/loops=false
animation/clip_224/name=""
animation/clip_224/start_frame=0
animation/clip_224/end_frame=0
animation/clip_224/loops=false
animation/clip_225/name=""
animation/clip_225/start_frame=0
animation/clip_225/end_frame=0
animation/clip_225/loops=false
animation/clip_226/name=""
animation/clip_226/start_frame=0
animation/clip_226/end_frame=0
animation/clip_226/loops=false
animation/clip_227/name=""
animation/clip_227/start_frame=0
animation/clip_227/end_frame=0
animation/clip_227/loops=false
animation/clip_228/name=""
animation/clip_228/start_frame=0
animation/clip_228/end_frame=0
animation/clip_228/loops=false
animation/clip_229/name=""
animation/clip_229/start_frame=0
animation/clip_229/end_frame=0
animation/clip_229/loops=false
animation/clip_230/name=""
animation/clip_230/start_frame=0
animation/clip_230/end_frame=0
animation/clip_230/loops=false
animation/clip_231/name=""
animation/clip_231/start_frame=0
animation/clip_231/end_frame=0
animation/clip_231/loops=false
animation/clip_232/name=""
animation/clip_232/start_frame=0
animation/clip_232/end_frame=0
animation/clip_232/loops=false
animation/clip_233/name=""
animation/clip_233/start_frame=0
animation/clip_233/end_frame=0
animation/clip_233/loops=false
animation/clip_234/name=""
animation/clip_234/start_frame=0
animation/clip_234/end_frame=0
animation/clip_234/loops=false
animation/clip_235/name=""
animation/clip_235/start_frame=0
animation/clip_235/end_frame=0
animation/clip_235/loops=false
animation/clip_236/name=""
animation/clip_236/start_frame=0
animation/clip_236/end_frame=0
animation/clip_236/loops=false
animation/clip_237/name=""
animation/clip_237/start_frame=0
animation/clip_237/end_frame=0
animation/clip_237/loops=false
animation/clip_238/name=""
animation/clip_238/start_frame=0
animation/clip_238/end_frame=0
animation/clip_238/loops=false
animation/clip_239/name=""
animation/clip_239/start_frame=0
animation/clip_239/end_frame=0
animation/clip_239/loops=false
animation/clip_240/name=""
animation/clip_240/start_frame=0
animation/clip_240/end_frame=0
animation/clip_240/loops=false
animation/clip_241/name=""
animation/clip_241/start_frame=0
animation/clip_241/end_frame=0
animation/clip_241/loops=false
animation/clip_242/name=""
animation/clip_242/start_frame=0
animation/clip_242/end_frame=0
animation/clip_242/loops=false
animation/clip_243/name=""
animation/clip_243/start_frame=0
animation/clip_243/end_frame=0
animation/clip_243/loops=false
animation/clip_244/name=""
animation/clip_244/start_frame=0
animation/clip_244/end_frame=0
animation/clip_244/loops=false
animation/clip_245/name=""
animation/clip_245/start_frame=0
animation/clip_245/end_frame=0
animation/clip_245/loops=false
animation/clip_246/name=""
animation/clip_246/start_frame=0
animation/clip_246/end_frame=0
animation/clip_246/loops=false
animation/clip_247/name=""
animation/clip_247/start_frame=0
animation/clip_247/end_frame=0
animation/clip_247/loops=false
animation/clip_248/name=""
animation/clip_248/start_frame=0
animation/clip_248/end_frame=0
animation/clip_248/loops=false
animation/clip_249/name=""
animation/clip_249/start_frame=0
animation/clip_249/end_frame=0
animation/clip_249/loops=false
animation/clip_250/name=""
animation/clip_250/start_frame=0
animation/clip_250/end_frame=0
animation/clip_250/loops=false
animation/clip_251/name=""
animation/clip_251/start_frame=0
animation/clip_251/end_frame=0
animation/clip_251/loops=false
animation/clip_252/name=""
animation/clip_252/start_frame=0
animation/clip_252/end_frame=0
animation/clip_252/loops=false
animation/clip_253/name=""
animation/clip_253/start_frame=0
animation/clip_253/end_frame=0
animation/clip_253/loops=false
animation/clip_254/name=""
animation/clip_254/start_frame=0
animation/clip_254/end_frame=0
animation/clip_254/loops=false
animation/clip_255/name=""
animation/clip_255/start_frame=0
animation/clip_255/end_frame=0
animation/clip_255/loops=false
animation/clip_256/name=""
animation/clip_256/start_frame=0
animation/clip_256/end_frame=0
animation/clip_256/loops=false
 RSRC                     PackedScene                                                                       ..        resource_local_to_scene    resource_name    surfaces/0    custom_aabb/custom_aabb    script 	   _bundled        
   local://1       
   local://2 �         Mesh          	   Cylinder       	         array_data    @    *7   <� =9j; <� ̷9�= <� W@q<O> <1� =9j; <1� A<   <1�   *7   <�
 ̷9�= <�
 O�9   <�
   *7   <�� O�9   <�� ̷9�� <��   *7   <�� ̷9�� <�� =9j� <�� W@q<O> <[� A<   <[� �A�>j; <[� ��q<A <�_ O:<�@ <�_   �>�A <�_ ]�q<   <�� !�<�= <�� ���>j; <�� ��q<� <ƭ� !�<�� <ƭ� ��>�� <ƭ� W@q<O� <6�� O:<�� <6�� ?�>�� <6�� W@q<O> <a�G �A�>j; <a�G ?�>�@ <a�G ��q<A <��s   �>�A <��s ��>�@ <��s ]�q<   <��  ���>j; <��  ���>j� <��  ��q<� <�ڍ ��>�� <�ڍ   �>�� <�ڍ W@q<O� <aڹ ?�>�� <aڹ �A�>j� <aڹ �:^@A <s+ !@�@�= <s+ �7VA�= <s+ W�^@O> <�s( O��@�@ <�s( �VAj; <�s( W�^@O� <�s� ��@   <�s� �VAj� <�s� �:^@� <s� O��@�� <s� �7VA�� <s� ]A^@   <2s� !@�@�� <2s� O>VA   <2s� O>VA   <}� �7VA�� <}�   �A   <}� O>VA   <y� !@�@�� <y� �7VA�� <y� !@�@�� <s� �:^@� <s� �7VA�� <s� �7VA�� <�}� �VAj� <�}�   �A   <�}� �7VA�� <�y� O��@�� <�y� �VAj� <�y� O��@�� <�s� W�^@O� <�s� �VAj� <�s� �VAj� <�}  �VAj; <�}    �A   <�}  �VAj� <�y  ��@   <�y  �VAj; <�y  ��@   <�s W�^@O> <�s �VAj; <�s �VAj; <�} �7VA�= <�}   �A   <�} �VAj; <�y# O��@�@ <�y# �7VA�= <�y# O��@�@ <s4 �:^@A <s4 �7VA�= <s4 �7VA�= <}
 O>VA   <}
   �A   <}
 �7VA�= <y !@�@�= <y O>VA   <y !@�@�= <2s ]A^@   <2s O>VA   <2s �A�>j� <ZS� !@�@�� <ZS� ]A^@   <ZS� �A�>j� <\6� ?�>�� <\6� !@�@�� <\6� ?�>�� <:S� �:^@� <:S� !@�@�� <:S�   �>�� <�S� O��@�� <�S� �:^@� <�S�   �>�� <�6� ��>�� <�6� O��@�� <�6� ��>�� <�S� W�^@O� <�S� O��@�� <�S� ���>j� <�S� ��@   <�S� W�^@O� <�S� ���>j� <�6  ���>j; <�6  ��@   <�6  ���>j; <�S W�^@O> <�S ��@   <�S ��>�@ <�SN O��@�@ <�SN W�^@O> <�SN ��>�@ <�6l   �>�A <�6l O��@�@ <�6l   �>�A <�S_ �:^@A <�S_ O��@�@ <�S_ ?�>�@ <:SK !@�@�= <:SK �:^@A <:SK ?�>�@ <\6C �A�>j; <\6C !@�@�= <\6C �A�>j; <ZS ]A^@   <ZS !@�@�= <ZS ?�>�� <%&�   �>�� <%&� �:^@� <%&� ?�>�� <#ʔ O:<�� <#ʔ   �>�� <#ʔ O:<�� <�� ��q<� <��   �>�� <�� ��>�� <�&� ���>j� <�&� W�^@O� <�&� ��>�� <�ʽ !�<�� <�ʽ ���>j� <�ʽ !�<�� <��� ]�q<   <��� ���>j� <��� ���>j; <�&G ��>�@ <�&G W�^@O> <�&G ���>j; <��C !�<�= <��C ��>�@ <��C !�<�= <ƭK ��q<A <ƭK ��>�@ <ƭK   �>�A <%&s ?�>�@ <%&s �:^@A <%&s   �>�A <#�l O:<�@ <#�l ?�>�@ <#�l O:<�@ <6�N W@q<O> <6�N ?�>�@ <6�N �A�>j; <y&  �A�>j� <y&  ]A^@   <y&  �A�>j; <r�  A<   <r�  �A�>j� <r�  A<   <[�� W@q<O� <[�� �A�>j� <[�� =9j� < �� O:<�� < �� W@q<O� < �� =9j� <�� ̷9�� <�� O:<�� <�� ̷9�� <��� ��q<� <��� O:<�� <��� ̷9�� <�� !�<�� <�� ��q<� <�� ̷9�� <�� O�9   <�� !�<�� <�� O�9   <΍� ]�q<   <΍� !�<�� <΍� O�9   <΍ !�<�= <΍ ]�q<   <΍ O�9   <� ̷9�= <� !�<�= <� ̷9�= <�+ ��q<A <�+ !�<�= <�+ A<   <1�� =9j� <1�� W@q<O� <1�� A<   <%�  =9j; <%�  =9j� <%�  =9j; <�    *7   <�  =9j� <�  ̷9�= <��4 O:<�@ <��4 ��q<A <��4 ̷9�= <�# =9j; <�# O:<�@ <�# =9j; < �( W@q<O> < �( O:<�@ < �(      � < �    @ � < � >2 @ػ < � >2  ػ < � >2  ػ <$ � >2 @ػ <$ � 6 @d� <$ � 6  d� <$ � 6  d� <; � 6 @d� <; � q8 @�� <; � q8  �� <; � q8  �� <P � q8 @�� <P � �9 @�� <P � �9  �� <P � �9  �� <b � �9 @�� <b � �: @q� <b � �:  q� <b � �:  q� <p � �: @q� <p � d; @� <p � d;  � <p � d;  � <y � d; @� <y � �; @>� <y � �;  >� <y � �;  >� <~ � �; @>� <~ �  < @   <~ �  <     <~ �  <     <~   < @   <~  �; @>2 <~  �;  >2 <~  �;  >2 <y $ �; @>2 <y $ d; @6 <y $ d;  6 <y $ d;  6 <p ; d; @6 <p ; �: @q8 <p ; �:  q8 <p ; �:  q8 <b P �: @q8 <b P �9 @�9 <b P �9  �9 <b P �9  �9 <P b �9 @�9 <P b q8 @�: <P b q8  �: <P b q8  �: <; p q8 @�: <; p 6 @d; <; p 6  d; <; p 6  d; <$ y 6 @d; <$ y >2 @�; <$ y >2  �; <$ y >2  �; < ~ >2 @�; < ~    @ < < ~      < < ~      < <� ~    @ < <� ~ >� @�; <� ~ >�  �; <� ~ >�  �; <� y >� @�; <� y � @d; <� y �  d; <� y �  d; <� p � @d; <� p q� @�: <� p q�  �: <� p q�  �: <� b q� @�: <� b �� @�9 <� b ��  �9 <� b ��  �9 <� P �� @�9 <� P �� @q8 <� P ��  q8 <� P ��  q8 <� ; �� @q8 <� ; d� @6 <� ; d�  6 <� ; d�  6 <� $ d� @6 <� $ ػ @>2 <� $ ػ  >2 <� $ ػ  >2 <�  ػ @>2 <�   � @   <�   �     <�   �     <� �  � @   <� � ػ @>� <� � ػ  >� <� � ػ  >� <� � ػ @>� <� � d� @� <� � d�  � <� � d�  � <� � d� @� <� � �� @q� <� � ��  q� <� � ��  q� <� � �� @q� <� � �� @�� <� � ��  �� <� � ��  �� <� � �� @�� <� � q� @�� <� � q�  �� <� � q�  �� <� � q� @�� <� � � @d� <� � �  d� <� � >2 @ػ <      @ � <   >� @ػ <   � @d� <   q� @�� <   �� @�� <   �� @q� <   d� @� <   ػ @>� <    � @   <   ػ @>2 <   d� @6 <   �� @q8 <   �� @�9 <   q� @�: <   � @d; <   >� @�; <      @ < <   >2 @�; <   6 @d; <   q8 @�: <   �9 @�9 <   �: @q8 <   d; @6 <   �; @>2 <    < @   <   �; @>� <   d; @� <   �: @q� <   �9 @�� <   q8 @�� <   6 @d� <   �  d� <� � � @d� <� � >� @ػ <� � >�  ػ <� � >�  ػ <� � >� @ػ <� �    @ � <� �      � <� �      � < �  >2  ػ < �  6  d� < �  q8  �� < �  �9  �� < �  �:  q� < �  d;  � < �  �;  >� < �   <     < �  �;  >2 < �  d;  6 < �  �:  q8 < �  �9  �9 < �  q8  �: < �  6  d; < �  >2  �; < �       < < �  >�  �; < �  �  d; < �  q�  �: < �  ��  �9 < �  ��  q8 < �  d�  6 < �  ػ  >2 < �   �     < �  ػ  >� < �  d�  � < �  ��  q� < �  ��  �� < �  q�  �� < �  �  d� < �  >�  ػ < �        vertex_count (   �            array_index_data    �            	  
                       ! # " $ & % ' ) ( * , + - / . 0 2 1 3 5 4 6 8 7 9 ; : < > = ? A @ B D C E G F H J I K M L N P O Q S R T V U W Y X Z \ [ ] _ ^ ` b a c e d f h g i k j l n m o q p r t s u w v x z y { } | ~ �  � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �   
	
 "! #"$&%$'&(*)(+*,.-,/.0210324654768:98;:<>=<?>@BA@CBDFEDGFHJIHKJLNMLONPRQPSRTVUTWVXZYX[Z\^]\_^`ba`cbdfedgfhjihkjhlkhmlhnmhonhpohqphrqhsrhtshuthvuhwvhxwhyxhzyh{zh|{h}|h~}h~h�h��h��h��h��h��h��h��������������������������������������������������������������������������������������������������������      index_count (   d         
   primitive (                format (              aabb    e�6�    ��?�e��@�A6@  �@      skeleton_aabb              blend_shape_data                                         PackedScene          	         names "         Scene Root    Spatial 	   Cylinder 
   transform    layers    material_override    cast_shadow    extra_cull_margin    visible_in_all_rooms    use_in_baked_light    lod_min_distance    lod_min_hysteresis    lod_max_distance    lod_max_hysteresis    mesh 	   skeleton    material/0    MeshInstance    AnimationPlayer    playback_process_mode    playback_default_blend_time 
   root_node    playback/active    playback/speed    blend_times 	   autoplay    	   variants          ��L>               ?            ��L>            (                                                                �?                    node_count (                nodes     ?   ��������       ����                      ����                                        	      
                                                            ����                                    	      
             conn_count (                 conns               node_paths              editable_instances              version (          RSRC            [remap]

importer="scene"
type="PackedScene"
path="res://.import/tree_ball.dae-9a379d792ca573f0939cba446a692182.scn"

[params]

nodes/root_type="Spatial"
nodes/root_name="Scene Root"
nodes/custom_script=""
materials/location=0
materials/storage=0
geometry/compress=true
geometry/ensure_tangents=true
geometry/storage=0
animation/import=true
animation/fps=15
animation/filter_script=""
animation/optimizer/enabled=true
animation/optimizer/max_linear_error=0.05
animation/optimizer/max_angular_error=0.01
animation/optimizer/max_angle=22
animation/optimizer/remove_unused_tracks=true
animation/clips/amount=0
animation/clip_1/name=""
animation/clip_1/start_frame=0
animation/clip_1/end_frame=0
animation/clip_1/loops=false
animation/clip_2/name=""
animation/clip_2/start_frame=0
animation/clip_2/end_frame=0
animation/clip_2/loops=false
animation/clip_3/name=""
animation/clip_3/start_frame=0
animation/clip_3/end_frame=0
animation/clip_3/loops=false
animation/clip_4/name=""
animation/clip_4/start_frame=0
animation/clip_4/end_frame=0
animation/clip_4/loops=false
animation/clip_5/name=""
animation/clip_5/start_frame=0
animation/clip_5/end_frame=0
animation/clip_5/loops=false
animation/clip_6/name=""
animation/clip_6/start_frame=0
animation/clip_6/end_frame=0
animation/clip_6/loops=false
animation/clip_7/name=""
animation/clip_7/start_frame=0
animation/clip_7/end_frame=0
animation/clip_7/loops=false
animation/clip_8/name=""
animation/clip_8/start_frame=0
animation/clip_8/end_frame=0
animation/clip_8/loops=false
animation/clip_9/name=""
animation/clip_9/start_frame=0
animation/clip_9/end_frame=0
animation/clip_9/loops=false
animation/clip_10/name=""
animation/clip_10/start_frame=0
animation/clip_10/end_frame=0
animation/clip_10/loops=false
animation/clip_11/name=""
animation/clip_11/start_frame=0
animation/clip_11/end_frame=0
animation/clip_11/loops=false
animation/clip_12/name=""
animation/clip_12/start_frame=0
animation/clip_12/end_frame=0
animation/clip_12/loops=false
animation/clip_13/name=""
animation/clip_13/start_frame=0
animation/clip_13/end_frame=0
animation/clip_13/loops=false
animation/clip_14/name=""
animation/clip_14/start_frame=0
animation/clip_14/end_frame=0
animation/clip_14/loops=false
animation/clip_15/name=""
animation/clip_15/start_frame=0
animation/clip_15/end_frame=0
animation/clip_15/loops=false
animation/clip_16/name=""
animation/clip_16/start_frame=0
animation/clip_16/end_frame=0
animation/clip_16/loops=false
animation/clip_17/name=""
animation/clip_17/start_frame=0
animation/clip_17/end_frame=0
animation/clip_17/loops=false
animation/clip_18/name=""
animation/clip_18/start_frame=0
animation/clip_18/end_frame=0
animation/clip_18/loops=false
animation/clip_19/name=""
animation/clip_19/start_frame=0
animation/clip_19/end_frame=0
animation/clip_19/loops=false
animation/clip_20/name=""
animation/clip_20/start_frame=0
animation/clip_20/end_frame=0
animation/clip_20/loops=false
animation/clip_21/name=""
animation/clip_21/start_frame=0
animation/clip_21/end_frame=0
animation/clip_21/loops=false
animation/clip_22/name=""
animation/clip_22/start_frame=0
animation/clip_22/end_frame=0
animation/clip_22/loops=false
animation/clip_23/name=""
animation/clip_23/start_frame=0
animation/clip_23/end_frame=0
animation/clip_23/loops=false
animation/clip_24/name=""
animation/clip_24/start_frame=0
animation/clip_24/end_frame=0
animation/clip_24/loops=false
animation/clip_25/name=""
animation/clip_25/start_frame=0
animation/clip_25/end_frame=0
animation/clip_25/loops=false
animation/clip_26/name=""
animation/clip_26/start_frame=0
animation/clip_26/end_frame=0
animation/clip_26/loops=false
animation/clip_27/name=""
animation/clip_27/start_frame=0
animation/clip_27/end_frame=0
animation/clip_27/loops=false
animation/clip_28/name=""
animation/clip_28/start_frame=0
animation/clip_28/end_frame=0
animation/clip_28/loops=false
animation/clip_29/name=""
animation/clip_29/start_frame=0
animation/clip_29/end_frame=0
animation/clip_29/loops=false
animation/clip_30/name=""
animation/clip_30/start_frame=0
animation/clip_30/end_frame=0
animation/clip_30/loops=false
animation/clip_31/name=""
animation/clip_31/start_frame=0
animation/clip_31/end_frame=0
animation/clip_31/loops=false
animation/clip_32/name=""
animation/clip_32/start_frame=0
animation/clip_32/end_frame=0
animation/clip_32/loops=false
animation/clip_33/name=""
animation/clip_33/start_frame=0
animation/clip_33/end_frame=0
animation/clip_33/loops=false
animation/clip_34/name=""
animation/clip_34/start_frame=0
animation/clip_34/end_frame=0
animation/clip_34/loops=false
animation/clip_35/name=""
animation/clip_35/start_frame=0
animation/clip_35/end_frame=0
animation/clip_35/loops=false
animation/clip_36/name=""
animation/clip_36/start_frame=0
animation/clip_36/end_frame=0
animation/clip_36/loops=false
animation/clip_37/name=""
animation/clip_37/start_frame=0
animation/clip_37/end_frame=0
animation/clip_37/loops=false
animation/clip_38/name=""
animation/clip_38/start_frame=0
animation/clip_38/end_frame=0
animation/clip_38/loops=false
animation/clip_39/name=""
animation/clip_39/start_frame=0
animation/clip_39/end_frame=0
animation/clip_39/loops=false
animation/clip_40/name=""
animation/clip_40/start_frame=0
animation/clip_40/end_frame=0
animation/clip_40/loops=false
animation/clip_41/name=""
animation/clip_41/start_frame=0
animation/clip_41/end_frame=0
animation/clip_41/loops=false
animation/clip_42/name=""
animation/clip_42/start_frame=0
animation/clip_42/end_frame=0
animation/clip_42/loops=false
animation/clip_43/name=""
animation/clip_43/start_frame=0
animation/clip_43/end_frame=0
animation/clip_43/loops=false
animation/clip_44/name=""
animation/clip_44/start_frame=0
animation/clip_44/end_frame=0
animation/clip_44/loops=false
animation/clip_45/name=""
animation/clip_45/start_frame=0
animation/clip_45/end_frame=0
animation/clip_45/loops=false
animation/clip_46/name=""
animation/clip_46/start_frame=0
animation/clip_46/end_frame=0
animation/clip_46/loops=false
animation/clip_47/name=""
animation/clip_47/start_frame=0
animation/clip_47/end_frame=0
animation/clip_47/loops=false
animation/clip_48/name=""
animation/clip_48/start_frame=0
animation/clip_48/end_frame=0
animation/clip_48/loops=false
animation/clip_49/name=""
animation/clip_49/start_frame=0
animation/clip_49/end_frame=0
animation/clip_49/loops=false
animation/clip_50/name=""
animation/clip_50/start_frame=0
animation/clip_50/end_frame=0
animation/clip_50/loops=false
animation/clip_51/name=""
animation/clip_51/start_frame=0
animation/clip_51/end_frame=0
animation/clip_51/loops=false
animation/clip_52/name=""
animation/clip_52/start_frame=0
animation/clip_52/end_frame=0
animation/clip_52/loops=false
animation/clip_53/name=""
animation/clip_53/start_frame=0
animation/clip_53/end_frame=0
animation/clip_53/loops=false
animation/clip_54/name=""
animation/clip_54/start_frame=0
animation/clip_54/end_frame=0
animation/clip_54/loops=false
animation/clip_55/name=""
animation/clip_55/start_frame=0
animation/clip_55/end_frame=0
animation/clip_55/loops=false
animation/clip_56/name=""
animation/clip_56/start_frame=0
animation/clip_56/end_frame=0
animation/clip_56/loops=false
animation/clip_57/name=""
animation/clip_57/start_frame=0
animation/clip_57/end_frame=0
animation/clip_57/loops=false
animation/clip_58/name=""
animation/clip_58/start_frame=0
animation/clip_58/end_frame=0
animation/clip_58/loops=false
animation/clip_59/name=""
animation/clip_59/start_frame=0
animation/clip_59/end_frame=0
animation/clip_59/loops=false
animation/clip_60/name=""
animation/clip_60/start_frame=0
animation/clip_60/end_frame=0
animation/clip_60/loops=false
animation/clip_61/name=""
animation/clip_61/start_frame=0
animation/clip_61/end_frame=0
animation/clip_61/loops=false
animation/clip_62/name=""
animation/clip_62/start_frame=0
animation/clip_62/end_frame=0
animation/clip_62/loops=false
animation/clip_63/name=""
animation/clip_63/start_frame=0
animation/clip_63/end_frame=0
animation/clip_63/loops=false
animation/clip_64/name=""
animation/clip_64/start_frame=0
animation/clip_64/end_frame=0
animation/clip_64/loops=false
animation/clip_65/name=""
animation/clip_65/start_frame=0
animation/clip_65/end_frame=0
animation/clip_65/loops=false
animation/clip_66/name=""
animation/clip_66/start_frame=0
animation/clip_66/end_frame=0
animation/clip_66/loops=false
animation/clip_67/name=""
animation/clip_67/start_frame=0
animation/clip_67/end_frame=0
animation/clip_67/loops=false
animation/clip_68/name=""
animation/clip_68/start_frame=0
animation/clip_68/end_frame=0
animation/clip_68/loops=false
animation/clip_69/name=""
animation/clip_69/start_frame=0
animation/clip_69/end_frame=0
animation/clip_69/loops=false
animation/clip_70/name=""
animation/clip_70/start_frame=0
animation/clip_70/end_frame=0
animation/clip_70/loops=false
animation/clip_71/name=""
animation/clip_71/start_frame=0
animation/clip_71/end_frame=0
animation/clip_71/loops=false
animation/clip_72/name=""
animation/clip_72/start_frame=0
animation/clip_72/end_frame=0
animation/clip_72/loops=false
animation/clip_73/name=""
animation/clip_73/start_frame=0
animation/clip_73/end_frame=0
animation/clip_73/loops=false
animation/clip_74/name=""
animation/clip_74/start_frame=0
animation/clip_74/end_frame=0
animation/clip_74/loops=false
animation/clip_75/name=""
animation/clip_75/start_frame=0
animation/clip_75/end_frame=0
animation/clip_75/loops=false
animation/clip_76/name=""
animation/clip_76/start_frame=0
animation/clip_76/end_frame=0
animation/clip_76/loops=false
animation/clip_77/name=""
animation/clip_77/start_frame=0
animation/clip_77/end_frame=0
animation/clip_77/loops=false
animation/clip_78/name=""
animation/clip_78/start_frame=0
animation/clip_78/end_frame=0
animation/clip_78/loops=false
animation/clip_79/name=""
animation/clip_79/start_frame=0
animation/clip_79/end_frame=0
animation/clip_79/loops=false
animation/clip_80/name=""
animation/clip_80/start_frame=0
animation/clip_80/end_frame=0
animation/clip_80/loops=false
animation/clip_81/name=""
animation/clip_81/start_frame=0
animation/clip_81/end_frame=0
animation/clip_81/loops=false
animation/clip_82/name=""
animation/clip_82/start_frame=0
animation/clip_82/end_frame=0
animation/clip_82/loops=false
animation/clip_83/name=""
animation/clip_83/start_frame=0
animation/clip_83/end_frame=0
animation/clip_83/loops=false
animation/clip_84/name=""
animation/clip_84/start_frame=0
animation/clip_84/end_frame=0
animation/clip_84/loops=false
animation/clip_85/name=""
animation/clip_85/start_frame=0
animation/clip_85/end_frame=0
animation/clip_85/loops=false
animation/clip_86/name=""
animation/clip_86/start_frame=0
animation/clip_86/end_frame=0
animation/clip_86/loops=false
animation/clip_87/name=""
animation/clip_87/start_frame=0
animation/clip_87/end_frame=0
animation/clip_87/loops=false
animation/clip_88/name=""
animation/clip_88/start_frame=0
animation/clip_88/end_frame=0
animation/clip_88/loops=false
animation/clip_89/name=""
animation/clip_89/start_frame=0
animation/clip_89/end_frame=0
animation/clip_89/loops=false
animation/clip_90/name=""
animation/clip_90/start_frame=0
animation/clip_90/end_frame=0
animation/clip_90/loops=false
animation/clip_91/name=""
animation/clip_91/start_frame=0
animation/clip_91/end_frame=0
animation/clip_91/loops=false
animation/clip_92/name=""
animation/clip_92/start_frame=0
animation/clip_92/end_frame=0
animation/clip_92/loops=false
animation/clip_93/name=""
animation/clip_93/start_frame=0
animation/clip_93/end_frame=0
animation/clip_93/loops=false
animation/clip_94/name=""
animation/clip_94/start_frame=0
animation/clip_94/end_frame=0
animation/clip_94/loops=false
animation/clip_95/name=""
animation/clip_95/start_frame=0
animation/clip_95/end_frame=0
animation/clip_95/loops=false
animation/clip_96/name=""
animation/clip_96/start_frame=0
animation/clip_96/end_frame=0
animation/clip_96/loops=false
animation/clip_97/name=""
animation/clip_97/start_frame=0
animation/clip_97/end_frame=0
animation/clip_97/loops=false
animation/clip_98/name=""
animation/clip_98/start_frame=0
animation/clip_98/end_frame=0
animation/clip_98/loops=false
animation/clip_99/name=""
animation/clip_99/start_frame=0
animation/clip_99/end_frame=0
animation/clip_99/loops=false
animation/clip_100/name=""
animation/clip_100/start_frame=0
animation/clip_100/end_frame=0
animation/clip_100/loops=false
animation/clip_101/name=""
animation/clip_101/start_frame=0
animation/clip_101/end_frame=0
animation/clip_101/loops=false
animation/clip_102/name=""
animation/clip_102/start_frame=0
animation/clip_102/end_frame=0
animation/clip_102/loops=false
animation/clip_103/name=""
animation/clip_103/start_frame=0
animation/clip_103/end_frame=0
animation/clip_103/loops=false
animation/clip_104/name=""
animation/clip_104/start_frame=0
animation/clip_104/end_frame=0
animation/clip_104/loops=false
animation/clip_105/name=""
animation/clip_105/start_frame=0
animation/clip_105/end_frame=0
animation/clip_105/loops=false
animation/clip_106/name=""
animation/clip_106/start_frame=0
animation/clip_106/end_frame=0
animation/clip_106/loops=false
animation/clip_107/name=""
animation/clip_107/start_frame=0
animation/clip_107/end_frame=0
animation/clip_107/loops=false
animation/clip_108/name=""
animation/clip_108/start_frame=0
animation/clip_108/end_frame=0
animation/clip_108/loops=false
animation/clip_109/name=""
animation/clip_109/start_frame=0
animation/clip_109/end_frame=0
animation/clip_109/loops=false
animation/clip_110/name=""
animation/clip_110/start_frame=0
animation/clip_110/end_frame=0
animation/clip_110/loops=false
animation/clip_111/name=""
animation/clip_111/start_frame=0
animation/clip_111/end_frame=0
animation/clip_111/loops=false
animation/clip_112/name=""
animation/clip_112/start_frame=0
animation/clip_112/end_frame=0
animation/clip_112/loops=false
animation/clip_113/name=""
animation/clip_113/start_frame=0
animation/clip_113/end_frame=0
animation/clip_113/loops=false
animation/clip_114/name=""
animation/clip_114/start_frame=0
animation/clip_114/end_frame=0
animation/clip_114/loops=false
animation/clip_115/name=""
animation/clip_115/start_frame=0
animation/clip_115/end_frame=0
animation/clip_115/loops=false
animation/clip_116/name=""
animation/clip_116/start_frame=0
animation/clip_116/end_frame=0
animation/clip_116/loops=false
animation/clip_117/name=""
animation/clip_117/start_frame=0
animation/clip_117/end_frame=0
animation/clip_117/loops=false
animation/clip_118/name=""
animation/clip_118/start_frame=0
animation/clip_118/end_frame=0
animation/clip_118/loops=false
animation/clip_119/name=""
animation/clip_119/start_frame=0
animation/clip_119/end_frame=0
animation/clip_119/loops=false
animation/clip_120/name=""
animation/clip_120/start_frame=0
animation/clip_120/end_frame=0
animation/clip_120/loops=false
animation/clip_121/name=""
animation/clip_121/start_frame=0
animation/clip_121/end_frame=0
animation/clip_121/loops=false
animation/clip_122/name=""
animation/clip_122/start_frame=0
animation/clip_122/end_frame=0
animation/clip_122/loops=false
animation/clip_123/name=""
animation/clip_123/start_frame=0
animation/clip_123/end_frame=0
animation/clip_123/loops=false
animation/clip_124/name=""
animation/clip_124/start_frame=0
animation/clip_124/end_frame=0
animation/clip_124/loops=false
animation/clip_125/name=""
animation/clip_125/start_frame=0
animation/clip_125/end_frame=0
animation/clip_125/loops=false
animation/clip_126/name=""
animation/clip_126/start_frame=0
animation/clip_126/end_frame=0
animation/clip_126/loops=false
animation/clip_127/name=""
animation/clip_127/start_frame=0
animation/clip_127/end_frame=0
animation/clip_127/loops=false
animation/clip_128/name=""
animation/clip_128/start_frame=0
animation/clip_128/end_frame=0
animation/clip_128/loops=false
animation/clip_129/name=""
animation/clip_129/start_frame=0
animation/clip_129/end_frame=0
animation/clip_129/loops=false
animation/clip_130/name=""
animation/clip_130/start_frame=0
animation/clip_130/end_frame=0
animation/clip_130/loops=false
animation/clip_131/name=""
animation/clip_131/start_frame=0
animation/clip_131/end_frame=0
animation/clip_131/loops=false
animation/clip_132/name=""
animation/clip_132/start_frame=0
animation/clip_132/end_frame=0
animation/clip_132/loops=false
animation/clip_133/name=""
animation/clip_133/start_frame=0
animation/clip_133/end_frame=0
animation/clip_133/loops=false
animation/clip_134/name=""
animation/clip_134/start_frame=0
animation/clip_134/end_frame=0
animation/clip_134/loops=false
animation/clip_135/name=""
animation/clip_135/start_frame=0
animation/clip_135/end_frame=0
animation/clip_135/loops=false
animation/clip_136/name=""
animation/clip_136/start_frame=0
animation/clip_136/end_frame=0
animation/clip_136/loops=false
animation/clip_137/name=""
animation/clip_137/start_frame=0
animation/clip_137/end_frame=0
animation/clip_137/loops=false
animation/clip_138/name=""
animation/clip_138/start_frame=0
animation/clip_138/end_frame=0
animation/clip_138/loops=false
animation/clip_139/name=""
animation/clip_139/start_frame=0
animation/clip_139/end_frame=0
animation/clip_139/loops=false
animation/clip_140/name=""
animation/clip_140/start_frame=0
animation/clip_140/end_frame=0
animation/clip_140/loops=false
animation/clip_141/name=""
animation/clip_141/start_frame=0
animation/clip_141/end_frame=0
animation/clip_141/loops=false
animation/clip_142/name=""
animation/clip_142/start_frame=0
animation/clip_142/end_frame=0
animation/clip_142/loops=false
animation/clip_143/name=""
animation/clip_143/start_frame=0
animation/clip_143/end_frame=0
animation/clip_143/loops=false
animation/clip_144/name=""
animation/clip_144/start_frame=0
animation/clip_144/end_frame=0
animation/clip_144/loops=false
animation/clip_145/name=""
animation/clip_145/start_frame=0
animation/clip_145/end_frame=0
animation/clip_145/loops=false
animation/clip_146/name=""
animation/clip_146/start_frame=0
animation/clip_146/end_frame=0
animation/clip_146/loops=false
animation/clip_147/name=""
animation/clip_147/start_frame=0
animation/clip_147/end_frame=0
animation/clip_147/loops=false
animation/clip_148/name=""
animation/clip_148/start_frame=0
animation/clip_148/end_frame=0
animation/clip_148/loops=false
animation/clip_149/name=""
animation/clip_149/start_frame=0
animation/clip_149/end_frame=0
animation/clip_149/loops=false
animation/clip_150/name=""
animation/clip_150/start_frame=0
animation/clip_150/end_frame=0
animation/clip_150/loops=false
animation/clip_151/name=""
animation/clip_151/start_frame=0
animation/clip_151/end_frame=0
animation/clip_151/loops=false
animation/clip_152/name=""
animation/clip_152/start_frame=0
animation/clip_152/end_frame=0
animation/clip_152/loops=false
animation/clip_153/name=""
animation/clip_153/start_frame=0
animation/clip_153/end_frame=0
animation/clip_153/loops=false
animation/clip_154/name=""
animation/clip_154/start_frame=0
animation/clip_154/end_frame=0
animation/clip_154/loops=false
animation/clip_155/name=""
animation/clip_155/start_frame=0
animation/clip_155/end_frame=0
animation/clip_155/loops=false
animation/clip_156/name=""
animation/clip_156/start_frame=0
animation/clip_156/end_frame=0
animation/clip_156/loops=false
animation/clip_157/name=""
animation/clip_157/start_frame=0
animation/clip_157/end_frame=0
animation/clip_157/loops=false
animation/clip_158/name=""
animation/clip_158/start_frame=0
animation/clip_158/end_frame=0
animation/clip_158/loops=false
animation/clip_159/name=""
animation/clip_159/start_frame=0
animation/clip_159/end_frame=0
animation/clip_159/loops=false
animation/clip_160/name=""
animation/clip_160/start_frame=0
animation/clip_160/end_frame=0
animation/clip_160/loops=false
animation/clip_161/name=""
animation/clip_161/start_frame=0
animation/clip_161/end_frame=0
animation/clip_161/loops=false
animation/clip_162/name=""
animation/clip_162/start_frame=0
animation/clip_162/end_frame=0
animation/clip_162/loops=false
animation/clip_163/name=""
animation/clip_163/start_frame=0
animation/clip_163/end_frame=0
animation/clip_163/loops=false
animation/clip_164/name=""
animation/clip_164/start_frame=0
animation/clip_164/end_frame=0
animation/clip_164/loops=false
animation/clip_165/name=""
animation/clip_165/start_frame=0
animation/clip_165/end_frame=0
animation/clip_165/loops=false
animation/clip_166/name=""
animation/clip_166/start_frame=0
animation/clip_166/end_frame=0
animation/clip_166/loops=false
animation/clip_167/name=""
animation/clip_167/start_frame=0
animation/clip_167/end_frame=0
animation/clip_167/loops=false
animation/clip_168/name=""
animation/clip_168/start_frame=0
animation/clip_168/end_frame=0
animation/clip_168/loops=false
animation/clip_169/name=""
animation/clip_169/start_frame=0
animation/clip_169/end_frame=0
animation/clip_169/loops=false
animation/clip_170/name=""
animation/clip_170/start_frame=0
animation/clip_170/end_frame=0
animation/clip_170/loops=false
animation/clip_171/name=""
animation/clip_171/start_frame=0
animation/clip_171/end_frame=0
animation/clip_171/loops=false
animation/clip_172/name=""
animation/clip_172/start_frame=0
animation/clip_172/end_frame=0
animation/clip_172/loops=false
animation/clip_173/name=""
animation/clip_173/start_frame=0
animation/clip_173/end_frame=0
animation/clip_173/loops=false
animation/clip_174/name=""
animation/clip_174/start_frame=0
animation/clip_174/end_frame=0
animation/clip_174/loops=false
animation/clip_175/name=""
animation/clip_175/start_frame=0
animation/clip_175/end_frame=0
animation/clip_175/loops=false
animation/clip_176/name=""
animation/clip_176/start_frame=0
animation/clip_176/end_frame=0
animation/clip_176/loops=false
animation/clip_177/name=""
animation/clip_177/start_frame=0
animation/clip_177/end_frame=0
animation/clip_177/loops=false
animation/clip_178/name=""
animation/clip_178/start_frame=0
animation/clip_178/end_frame=0
animation/clip_178/loops=false
animation/clip_179/name=""
animation/clip_179/start_frame=0
animation/clip_179/end_frame=0
animation/clip_179/loops=false
animation/clip_180/name=""
animation/clip_180/start_frame=0
animation/clip_180/end_frame=0
animation/clip_180/loops=false
animation/clip_181/name=""
animation/clip_181/start_frame=0
animation/clip_181/end_frame=0
animation/clip_181/loops=false
animation/clip_182/name=""
animation/clip_182/start_frame=0
animation/clip_182/end_frame=0
animation/clip_182/loops=false
animation/clip_183/name=""
animation/clip_183/start_frame=0
animation/clip_183/end_frame=0
animation/clip_183/loops=false
animation/clip_184/name=""
animation/clip_184/start_frame=0
animation/clip_184/end_frame=0
animation/clip_184/loops=false
animation/clip_185/name=""
animation/clip_185/start_frame=0
animation/clip_185/end_frame=0
animation/clip_185/loops=false
animation/clip_186/name=""
animation/clip_186/start_frame=0
animation/clip_186/end_frame=0
animation/clip_186/loops=false
animation/clip_187/name=""
animation/clip_187/start_frame=0
animation/clip_187/end_frame=0
animation/clip_187/loops=false
animation/clip_188/name=""
animation/clip_188/start_frame=0
animation/clip_188/end_frame=0
animation/clip_188/loops=false
animation/clip_189/name=""
animation/clip_189/start_frame=0
animation/clip_189/end_frame=0
animation/clip_189/loops=false
animation/clip_190/name=""
animation/clip_190/start_frame=0
animation/clip_190/end_frame=0
animation/clip_190/loops=false
animation/clip_191/name=""
animation/clip_191/start_frame=0
animation/clip_191/end_frame=0
animation/clip_191/loops=false
animation/clip_192/name=""
animation/clip_192/start_frame=0
animation/clip_192/end_frame=0
animation/clip_192/loops=false
animation/clip_193/name=""
animation/clip_193/start_frame=0
animation/clip_193/end_frame=0
animation/clip_193/loops=false
animation/clip_194/name=""
animation/clip_194/start_frame=0
animation/clip_194/end_frame=0
animation/clip_194/loops=false
animation/clip_195/name=""
animation/clip_195/start_frame=0
animation/clip_195/end_frame=0
animation/clip_195/loops=false
animation/clip_196/name=""
animation/clip_196/start_frame=0
animation/clip_196/end_frame=0
animation/clip_196/loops=false
animation/clip_197/name=""
animation/clip_197/start_frame=0
animation/clip_197/end_frame=0
animation/clip_197/loops=false
animation/clip_198/name=""
animation/clip_198/start_frame=0
animation/clip_198/end_frame=0
animation/clip_198/loops=false
animation/clip_199/name=""
animation/clip_199/start_frame=0
animation/clip_199/end_frame=0
animation/clip_199/loops=false
animation/clip_200/name=""
animation/clip_200/start_frame=0
animation/clip_200/end_frame=0
animation/clip_200/loops=false
animation/clip_201/name=""
animation/clip_201/start_frame=0
animation/clip_201/end_frame=0
animation/clip_201/loops=false
animation/clip_202/name=""
animation/clip_202/start_frame=0
animation/clip_202/end_frame=0
animation/clip_202/loops=false
animation/clip_203/name=""
animation/clip_203/start_frame=0
animation/clip_203/end_frame=0
animation/clip_203/loops=false
animation/clip_204/name=""
animation/clip_204/start_frame=0
animation/clip_204/end_frame=0
animation/clip_204/loops=false
animation/clip_205/name=""
animation/clip_205/start_frame=0
animation/clip_205/end_frame=0
animation/clip_205/loops=false
animation/clip_206/name=""
animation/clip_206/start_frame=0
animation/clip_206/end_frame=0
animation/clip_206/loops=false
animation/clip_207/name=""
animation/clip_207/start_frame=0
animation/clip_207/end_frame=0
animation/clip_207/loops=false
animation/clip_208/name=""
animation/clip_208/start_frame=0
animation/clip_208/end_frame=0
animation/clip_208/loops=false
animation/clip_209/name=""
animation/clip_209/start_frame=0
animation/clip_209/end_frame=0
animation/clip_209/loops=false
animation/clip_210/name=""
animation/clip_210/start_frame=0
animation/clip_210/end_frame=0
animation/clip_210/loops=false
animation/clip_211/name=""
animation/clip_211/start_frame=0
animation/clip_211/end_frame=0
animation/clip_211/loops=false
animation/clip_212/name=""
animation/clip_212/start_frame=0
animation/clip_212/end_frame=0
animation/clip_212/loops=false
animation/clip_213/name=""
animation/clip_213/start_frame=0
animation/clip_213/end_frame=0
animation/clip_213/loops=false
animation/clip_214/name=""
animation/clip_214/start_frame=0
animation/clip_214/end_frame=0
animation/clip_214/loops=false
animation/clip_215/name=""
animation/clip_215/start_frame=0
animation/clip_215/end_frame=0
animation/clip_215/loops=false
animation/clip_216/name=""
animation/clip_216/start_frame=0
animation/clip_216/end_frame=0
animation/clip_216/loops=false
animation/clip_217/name=""
animation/clip_217/start_frame=0
animation/clip_217/end_frame=0
animation/clip_217/loops=false
animation/clip_218/name=""
animation/clip_218/start_frame=0
animation/clip_218/end_frame=0
animation/clip_218/loops=false
animation/clip_219/name=""
animation/clip_219/start_frame=0
animation/clip_219/end_frame=0
animation/clip_219/loops=false
animation/clip_220/name=""
animation/clip_220/start_frame=0
animation/clip_220/end_frame=0
animation/clip_220/loops=false
animation/clip_221/name=""
animation/clip_221/start_frame=0
animation/clip_221/end_frame=0
animation/clip_221/loops=false
animation/clip_222/name=""
animation/clip_222/start_frame=0
animation/clip_222/end_frame=0
animation/clip_222/loops=false
animation/clip_223/name=""
animation/clip_223/start_frame=0
animation/clip_223/end_frame=0
animation/clip_223/loops=false
animation/clip_224/name=""
animation/clip_224/start_frame=0
animation/clip_224/end_frame=0
animation/clip_224/loops=false
animation/clip_225/name=""
animation/clip_225/start_frame=0
animation/clip_225/end_frame=0
animation/clip_225/loops=false
animation/clip_226/name=""
animation/clip_226/start_frame=0
animation/clip_226/end_frame=0
animation/clip_226/loops=false
animation/clip_227/name=""
animation/clip_227/start_frame=0
animation/clip_227/end_frame=0
animation/clip_227/loops=false
animation/clip_228/name=""
animation/clip_228/start_frame=0
animation/clip_228/end_frame=0
animation/clip_228/loops=false
animation/clip_229/name=""
animation/clip_229/start_frame=0
animation/clip_229/end_frame=0
animation/clip_229/loops=false
animation/clip_230/name=""
animation/clip_230/start_frame=0
animation/clip_230/end_frame=0
animation/clip_230/loops=false
animation/clip_231/name=""
animation/clip_231/start_frame=0
animation/clip_231/end_frame=0
animation/clip_231/loops=false
animation/clip_232/name=""
animation/clip_232/start_frame=0
animation/clip_232/end_frame=0
animation/clip_232/loops=false
animation/clip_233/name=""
animation/clip_233/start_frame=0
animation/clip_233/end_frame=0
animation/clip_233/loops=false
animation/clip_234/name=""
animation/clip_234/start_frame=0
animation/clip_234/end_frame=0
animation/clip_234/loops=false
animation/clip_235/name=""
animation/clip_235/start_frame=0
animation/clip_235/end_frame=0
animation/clip_235/loops=false
animation/clip_236/name=""
animation/clip_236/start_frame=0
animation/clip_236/end_frame=0
animation/clip_236/loops=false
animation/clip_237/name=""
animation/clip_237/start_frame=0
animation/clip_237/end_frame=0
animation/clip_237/loops=false
animation/clip_238/name=""
animation/clip_238/start_frame=0
animation/clip_238/end_frame=0
animation/clip_238/loops=false
animation/clip_239/name=""
animation/clip_239/start_frame=0
animation/clip_239/end_frame=0
animation/clip_239/loops=false
animation/clip_240/name=""
animation/clip_240/start_frame=0
animation/clip_240/end_frame=0
animation/clip_240/loops=false
animation/clip_241/name=""
animation/clip_241/start_frame=0
animation/clip_241/end_frame=0
animation/clip_241/loops=false
animation/clip_242/name=""
animation/clip_242/start_frame=0
animation/clip_242/end_frame=0
animation/clip_242/loops=false
animation/clip_243/name=""
animation/clip_243/start_frame=0
animation/clip_243/end_frame=0
animation/clip_243/loops=false
animation/clip_244/name=""
animation/clip_244/start_frame=0
animation/clip_244/end_frame=0
animation/clip_244/loops=false
animation/clip_245/name=""
animation/clip_245/start_frame=0
animation/clip_245/end_frame=0
animation/clip_245/loops=false
animation/clip_246/name=""
animation/clip_246/start_frame=0
animation/clip_246/end_frame=0
animation/clip_246/loops=false
animation/clip_247/name=""
animation/clip_247/start_frame=0
animation/clip_247/end_frame=0
animation/clip_247/loops=false
animation/clip_248/name=""
animation/clip_248/start_frame=0
animation/clip_248/end_frame=0
animation/clip_248/loops=false
animation/clip_249/name=""
animation/clip_249/start_frame=0
animation/clip_249/end_frame=0
animation/clip_249/loops=false
animation/clip_250/name=""
animation/clip_250/start_frame=0
animation/clip_250/end_frame=0
animation/clip_250/loops=false
animation/clip_251/name=""
animation/clip_251/start_frame=0
animation/clip_251/end_frame=0
animation/clip_251/loops=false
animation/clip_252/name=""
animation/clip_252/start_frame=0
animation/clip_252/end_frame=0
animation/clip_252/loops=false
animation/clip_253/name=""
animation/clip_253/start_frame=0
animation/clip_253/end_frame=0
animation/clip_253/loops=false
animation/clip_254/name=""
animation/clip_254/start_frame=0
animation/clip_254/end_frame=0
animation/clip_254/loops=false
animation/clip_255/name=""
animation/clip_255/start_frame=0
animation/clip_255/end_frame=0
animation/clip_255/loops=false
animation/clip_256/name=""
animation/clip_256/start_frame=0
animation/clip_256/end_frame=0
animation/clip_256/loops=false
 RSRC                     PackedScene                                                                       ..        resource_local_to_scene    resource_name    surfaces/0    custom_aabb/custom_aabb    script 	   _bundled        
   local://1       
   local://2 Y         Mesh          	   Cone.001       	         array_data         ?� <3�   �C   <3� �1?�� <3� �1?�� <!3�   �C   <!3� q5?�� <!3� q5?�� <63�   �C   <63� �7?� <63� �7?� <I3�   �C   <I3� 9?� <I3� 9?� <Y3�   �C   <Y3� �9?� <Y3� �9?� <f3�   �C   <f3� �:?q� <f3� �:?q� <o3�   �C   <o3� �:?�� <o3� �:?�� <s3�   �C   <s3� ;?   <s3� ;?   <s3   �C   <s3 �:?�1 <s3 �:?�1 <o3!   �C   <o3! �:?q5 <o3! �:?q5 <f36   �C   <f36 �9?�7 <f36 �9?�7 <Y3I   �C   <Y3I 9?9 <Y3I 9?9 <I3Y   �C   <I3Y �7?�9 <I3Y �7?�9 <63f   �C   <63f q5?�: <63f q5?�: <!3o   �C   <!3o �1?�: <!3o �1?�: <3s   �C   <3s   ?; <3s   ?; <�3s   �C   <�3s ��?�: <�3s ��?�: <�3o   �C   <�3o q�?�: <�3o q�?�: <�3f   �C   <�3f �?�9 <�3f �?�9 <�3Y   �C   <�3Y �?9 <�3Y �?9 <�3I   �C   <�3I �?�7 <�3I �?�7 <�36   �C   <�36 ��?q5 <�36 ��?q5 <�3!   �C   <�3! ��?�1 <�3! ��?�1 <�3   �C   <�3 �?   <�3 �?   <�3�   �C   <�3� ��?�� <�3� ��?�� <�3�   �C   <�3� ��?q� <�3� ��?q� <�3�   �C   <�3� �?� <�3� �?� <�3�   �C   <�3� �?� <�3� �?� <�3�   �C   <�3� �?� <�3� �?� <�3�   �C   <�3� q�?�� <�3� q�?�� <�3�   �C   <�3� ��?�� <�3� ��?�� <�3�   �C   <�3�   ?� <�3�   ?� < �  �1?�� < �  q5?�� < �  �7?� < �  9?� < �  �9?� < �  �:?q� < �  �:?�� < �  ;?   < �  �:?�1 < �  �:?q5 < �  �9?�7 < �  9?9 < �  �7?�9 < �  q5?�: < �  �1?�: < �    ?; < �  ��?�: < �  q�?�: < �  �?�9 < �  �?9 < �  �?�7 < �  ��?q5 < �  ��?�1 < �  �?   < �  ��?�� < �  ��?q� < �  �?� < �  �?� < �  �?� < �  q�?�� < �  ��?�� < �      � < �    A� < � �- A�� < � �-  �� < � �-  �� <$ � �- A�� <$ � q1 A�� <$ � q1  �� <$ � q1  �� <; � q1 A�� <; � �3 A� <; � �3  � <; � �3  � <P � �3 A� <P � 5 A� <P � 5  � <P � 5  � <b � 5 A� <b � �5 A� <b � �5  � <b � �5  � <p � �5 A� <p � �6 Aq� <p � �6  q� <p � �6  q� <y � �6 Aq� <y � �6 A�� <y � �6  �� <y � �6  �� <~ � �6 A�� <~ � 7 A   <~ � 7     <~ � 7     <~  7 A   <~  �6 A�- <~  �6  �- <~  �6  �- <y $ �6 A�- <y $ �6 Aq1 <y $ �6  q1 <y $ �6  q1 <p ; �6 Aq1 <p ; �5 A�3 <p ; �5  �3 <p ; �5  �3 <b P �5 A�3 <b P 5 A5 <b P 5  5 <b P 5  5 <P b 5 A5 <P b �3 A�5 <P b �3  �5 <P b �3  �5 <; p �3 A�5 <; p q1 A�6 <; p q1  �6 <; p q1  �6 <$ y q1 A�6 <$ y �- A�6 <$ y �-  �6 <$ y �-  �6 < ~ �- A�6 < ~    A7 < ~     7 < ~     7 <� ~    A7 <� ~ �� A�6 <� ~ ��  �6 <� ~ ��  �6 <� y �� A�6 <� y q� A�6 <� y q�  �6 <� y q�  �6 <� p q� A�6 <� p � A�5 <� p �  �5 <� p �  �5 <� b � A�5 <� b � A5 <� b �  5 <� b �  5 <� P � A5 <� P � A�3 <� P �  �3 <� P �  �3 <� ; � A�3 <� ; �� Aq1 <� ; ��  q1 <� ; ��  q1 <� $ �� Aq1 <� $ �� A�- <� $ ��  �- <� $ ��  �- <�  �� A�- <�  � A   <�  �     <�  �     <� � � A   <� � �� A�� <� � ��  �� <� � ��  �� <� � �� A�� <� � �� Aq� <� � ��  q� <� � ��  q� <� � �� Aq� <� � � A� <� � �  � <� � �  � <� � � A� <� � � A� <� � �  � <� � �  � <� � � A� <� � � A� <� � �  � <� � �  � <� � � A� <� � q� A�� <� � q�  �� <� � �- A�� <      A� <   �� A�� <   q� A�� <   � A� <   � A� <   � A� <   �� Aq� <   �� A�� <   � A   <   �� A�- <   �� Aq1 <   � A�3 <   � A5 <   � A�5 <   q� A�6 <   �� A�6 <      A7 <   �- A�6 <   q1 A�6 <   �3 A�5 <   5 A5 <   �5 A�3 <   �6 Aq1 <   �6 A�- <   7 A   <   �6 A�� <   �6 Aq� <   �5 A� <   5 A� <   �3 A� <   q1 A�� <   q�  �� <� � q� A�� <� � �� A�� <� � ��  �� <� � ��  �� <� � �� A�� <� �    A� <� �     � <� �     � < �  �-  �� < �  q1  �� < �  �3  � < �  5  � < �  �5  � < �  �6  q� < �  �6  �� < �  7     < �  �6  �- < �  �6  q1 < �  �5  �3 < �  5  5 < �  �3  �5 < �  q1  �6 < �  �-  �6 < �      7 < �  ��  �6 < �  q�  �6 < �  �  �5 < �  �  5 < �  �  �3 < �  ��  q1 < �  ��  �- < �  �     < �  ��  �� < �  ��  q� < �  �  � < �  �  � < �  �  � < �  q�  �� < �  ��  �� < �    ~: � <8�   �A   <8� >2~:ػ <8� >2~:ػ <!8�   �A   <!8� 6~:d� <!8� 6~:d� <58�   �A   <58� q8~:�� <58� q8~:�� <H8�   �A   <H8� �9~:�� <H8� �9~:�� <W8�   �A   <W8� �:~:q� <W8� �:~:q� <d8�   �A   <d8� d;~:� <d8� d;~:� <l8�   �A   <l8� �;~:>� <l8� �;~:>� <q8�   �A   <q8�  <~:   <q8�  <~:   <q8   �A   <q8 �;~:>2 <q8 �;~:>2 <l8!   �A   <l8! d;~:6 <l8! d;~:6 <d85   �A   <d85 �:~:q8 <d85 �:~:q8 <W8H   �A   <W8H �9~:�9 <W8H �9~:�9 <H8W   �A   <H8W q8~:�: <H8W q8~:�: <58d   �A   <58d 6~:d; <58d 6~:d; <!8l   �A   <!8l >2~:�; <!8l >2~:�; <8q   �A   <8q   ~: < <8q   ~: < <�8q   �A   <�8q >�~:�; <�8q >�~:�; <�8l   �A   <�8l �~:d; <�8l �~:d; <�8d   �A   <�8d q�~:�: <�8d q�~:�: <�8W   �A   <�8W ��~:�9 <�8W ��~:�9 <�8H   �A   <�8H ��~:q8 <�8H ��~:q8 <�85   �A   <�85 d�~:6 <�85 d�~:6 <�8!   �A   <�8! ػ~:>2 <�8! ػ~:>2 <�8   �A   <�8  �~:   <�8  �~:   <�8�   �A   <�8� ػ~:>� <�8� ػ~:>� <�8�   �A   <�8� d�~:� <�8� d�~:� <�8�   �A   <�8� ��~:q� <�8� ��~:q� <�8�   �A   <�8� ��~:�� <�8� ��~:�� <�8�   �A   <�8� q�~:�� <�8� q�~:�� <�8�   �A   <�8� �~:d� <�8� �~:d� <�8�   �A   <�8� >�~:ػ <�8� >�~:ػ <�8�   �A   <�8�   ~: � <�8�   ~: � < �  >2~:ػ < �  6~:d� < �  q8~:�� < �  �9~:�� < �  �:~:q� < �  d;~:� < �  �;~:>� < �   <~:   < �  �;~:>2 < �  d;~:6 < �  �:~:q8 < �  �9~:�9 < �  q8~:�: < �  6~:d; < �  >2~:�; < �    ~: < < �  >�~:�; < �  �~:d; < �  q�~:�: < �  ��~:�9 < �  ��~:q8 < �  d�~:6 < �  ػ~:>2 < �   �~:   < �  ػ~:>� < �  d�~:� < �  ��~:q� < �  ��~:�� < �  q�~:�� < �  �~:d� < �  >�~:ػ < �        vertex_count (   �            array_index_data    �            	  
                       ! # " $ & % ' ) ( * , + - / . 0 2 1 3 5 4 6 8 7 9 ; : < > = ? A @ B D C E G F H J I K M L N P O Q S R T V U W Y X Z \ [ ] _ ^ ` b a ` c b ` d c ` e d ` f e ` g f ` h g ` i h ` j i ` k j ` l k ` m l ` n m ` o n ` p o ` q p ` r q ` s r ` t s ` u t ` v u ` w v ` x w ` y x ` z y ` { z ` | { ` } | ` ~ } `  ~ � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  � �  � � � � � � � � 	� 
	� 
� � � � � � � � � � � �  "! #" $# %$ &% '& (' )( *) +* ,+ -, .- /. 0/ 10 21 32 43 54 65 76 87 98 :9 ;: <; =< >= ?>@BACEDFHGIKJLNMOQPRTSUWVXZY[]\^`_acbdfegihjlkmonprqsutvxwy{z|~}��������������������������������������������������������������������������������������������������������������������������      index_count (   �         
   primitive (                format (              aabb      ��  �6  ��   @�lp@   @      skeleton_aabb              blend_shape_data                                         PackedScene          	         names "         Scene Root    Spatial    Cone.1 
   transform    layers    material_override    cast_shadow    extra_cull_margin    visible_in_all_rooms    use_in_baked_light    lod_min_distance    lod_min_hysteresis    lod_max_distance    lod_max_hysteresis    mesh 	   skeleton    material/0    MeshInstance    AnimationPlayer    playback_process_mode    playback_default_blend_time 
   root_node    playback/active    playback/speed    blend_times 	   autoplay    	   variants          ff�>            ���>            ff�>            (                                                                �?                    node_count (                nodes     ?   ��������       ����                      ����                                        	      
                                                            ����                                    	      
             conn_count (                 conns               node_paths              editable_instances              version (          RSRC      [remap]

importer="scene"
type="PackedScene"
path="res://.import/tree_pine.dae-b596c934b4409683df714ba1497896dd.scn"

[params]

nodes/root_type="Spatial"
nodes/root_name="Scene Root"
nodes/custom_script=""
materials/location=0
materials/storage=0
geometry/compress=true
geometry/ensure_tangents=true
geometry/storage=0
animation/import=true
animation/fps=15
animation/filter_script=""
animation/optimizer/enabled=true
animation/optimizer/max_linear_error=0.05
animation/optimizer/max_angular_error=0.01
animation/optimizer/max_angle=22
animation/optimizer/remove_unused_tracks=true
animation/clips/amount=0
animation/clip_1/name=""
animation/clip_1/start_frame=0
animation/clip_1/end_frame=0
animation/clip_1/loops=false
animation/clip_2/name=""
animation/clip_2/start_frame=0
animation/clip_2/end_frame=0
animation/clip_2/loops=false
animation/clip_3/name=""
animation/clip_3/start_frame=0
animation/clip_3/end_frame=0
animation/clip_3/loops=false
animation/clip_4/name=""
animation/clip_4/start_frame=0
animation/clip_4/end_frame=0
animation/clip_4/loops=false
animation/clip_5/name=""
animation/clip_5/start_frame=0
animation/clip_5/end_frame=0
animation/clip_5/loops=false
animation/clip_6/name=""
animation/clip_6/start_frame=0
animation/clip_6/end_frame=0
animation/clip_6/loops=false
animation/clip_7/name=""
animation/clip_7/start_frame=0
animation/clip_7/end_frame=0
animation/clip_7/loops=false
animation/clip_8/name=""
animation/clip_8/start_frame=0
animation/clip_8/end_frame=0
animation/clip_8/loops=false
animation/clip_9/name=""
animation/clip_9/start_frame=0
animation/clip_9/end_frame=0
animation/clip_9/loops=false
animation/clip_10/name=""
animation/clip_10/start_frame=0
animation/clip_10/end_frame=0
animation/clip_10/loops=false
animation/clip_11/name=""
animation/clip_11/start_frame=0
animation/clip_11/end_frame=0
animation/clip_11/loops=false
animation/clip_12/name=""
animation/clip_12/start_frame=0
animation/clip_12/end_frame=0
animation/clip_12/loops=false
animation/clip_13/name=""
animation/clip_13/start_frame=0
animation/clip_13/end_frame=0
animation/clip_13/loops=false
animation/clip_14/name=""
animation/clip_14/start_frame=0
animation/clip_14/end_frame=0
animation/clip_14/loops=false
animation/clip_15/name=""
animation/clip_15/start_frame=0
animation/clip_15/end_frame=0
animation/clip_15/loops=false
animation/clip_16/name=""
animation/clip_16/start_frame=0
animation/clip_16/end_frame=0
animation/clip_16/loops=false
animation/clip_17/name=""
animation/clip_17/start_frame=0
animation/clip_17/end_frame=0
animation/clip_17/loops=false
animation/clip_18/name=""
animation/clip_18/start_frame=0
animation/clip_18/end_frame=0
animation/clip_18/loops=false
animation/clip_19/name=""
animation/clip_19/start_frame=0
animation/clip_19/end_frame=0
animation/clip_19/loops=false
animation/clip_20/name=""
animation/clip_20/start_frame=0
animation/clip_20/end_frame=0
animation/clip_20/loops=false
animation/clip_21/name=""
animation/clip_21/start_frame=0
animation/clip_21/end_frame=0
animation/clip_21/loops=false
animation/clip_22/name=""
animation/clip_22/start_frame=0
animation/clip_22/end_frame=0
animation/clip_22/loops=false
animation/clip_23/name=""
animation/clip_23/start_frame=0
animation/clip_23/end_frame=0
animation/clip_23/loops=false
animation/clip_24/name=""
animation/clip_24/start_frame=0
animation/clip_24/end_frame=0
animation/clip_24/loops=false
animation/clip_25/name=""
animation/clip_25/start_frame=0
animation/clip_25/end_frame=0
animation/clip_25/loops=false
animation/clip_26/name=""
animation/clip_26/start_frame=0
animation/clip_26/end_frame=0
animation/clip_26/loops=false
animation/clip_27/name=""
animation/clip_27/start_frame=0
animation/clip_27/end_frame=0
animation/clip_27/loops=false
animation/clip_28/name=""
animation/clip_28/start_frame=0
animation/clip_28/end_frame=0
animation/clip_28/loops=false
animation/clip_29/name=""
animation/clip_29/start_frame=0
animation/clip_29/end_frame=0
animation/clip_29/loops=false
animation/clip_30/name=""
animation/clip_30/start_frame=0
animation/clip_30/end_frame=0
animation/clip_30/loops=false
animation/clip_31/name=""
animation/clip_31/start_frame=0
animation/clip_31/end_frame=0
animation/clip_31/loops=false
animation/clip_32/name=""
animation/clip_32/start_frame=0
animation/clip_32/end_frame=0
animation/clip_32/loops=false
animation/clip_33/name=""
animation/clip_33/start_frame=0
animation/clip_33/end_frame=0
animation/clip_33/loops=false
animation/clip_34/name=""
animation/clip_34/start_frame=0
animation/clip_34/end_frame=0
animation/clip_34/loops=false
animation/clip_35/name=""
animation/clip_35/start_frame=0
animation/clip_35/end_frame=0
animation/clip_35/loops=false
animation/clip_36/name=""
animation/clip_36/start_frame=0
animation/clip_36/end_frame=0
animation/clip_36/loops=false
animation/clip_37/name=""
animation/clip_37/start_frame=0
animation/clip_37/end_frame=0
animation/clip_37/loops=false
animation/clip_38/name=""
animation/clip_38/start_frame=0
animation/clip_38/end_frame=0
animation/clip_38/loops=false
animation/clip_39/name=""
animation/clip_39/start_frame=0
animation/clip_39/end_frame=0
animation/clip_39/loops=false
animation/clip_40/name=""
animation/clip_40/start_frame=0
animation/clip_40/end_frame=0
animation/clip_40/loops=false
animation/clip_41/name=""
animation/clip_41/start_frame=0
animation/clip_41/end_frame=0
animation/clip_41/loops=false
animation/clip_42/name=""
animation/clip_42/start_frame=0
animation/clip_42/end_frame=0
animation/clip_42/loops=false
animation/clip_43/name=""
animation/clip_43/start_frame=0
animation/clip_43/end_frame=0
animation/clip_43/loops=false
animation/clip_44/name=""
animation/clip_44/start_frame=0
animation/clip_44/end_frame=0
animation/clip_44/loops=false
animation/clip_45/name=""
animation/clip_45/start_frame=0
animation/clip_45/end_frame=0
animation/clip_45/loops=false
animation/clip_46/name=""
animation/clip_46/start_frame=0
animation/clip_46/end_frame=0
animation/clip_46/loops=false
animation/clip_47/name=""
animation/clip_47/start_frame=0
animation/clip_47/end_frame=0
animation/clip_47/loops=false
animation/clip_48/name=""
animation/clip_48/start_frame=0
animation/clip_48/end_frame=0
animation/clip_48/loops=false
animation/clip_49/name=""
animation/clip_49/start_frame=0
animation/clip_49/end_frame=0
animation/clip_49/loops=false
animation/clip_50/name=""
animation/clip_50/start_frame=0
animation/clip_50/end_frame=0
animation/clip_50/loops=false
animation/clip_51/name=""
animation/clip_51/start_frame=0
animation/clip_51/end_frame=0
animation/clip_51/loops=false
animation/clip_52/name=""
animation/clip_52/start_frame=0
animation/clip_52/end_frame=0
animation/clip_52/loops=false
animation/clip_53/name=""
animation/clip_53/start_frame=0
animation/clip_53/end_frame=0
animation/clip_53/loops=false
animation/clip_54/name=""
animation/clip_54/start_frame=0
animation/clip_54/end_frame=0
animation/clip_54/loops=false
animation/clip_55/name=""
animation/clip_55/start_frame=0
animation/clip_55/end_frame=0
animation/clip_55/loops=false
animation/clip_56/name=""
animation/clip_56/start_frame=0
animation/clip_56/end_frame=0
animation/clip_56/loops=false
animation/clip_57/name=""
animation/clip_57/start_frame=0
animation/clip_57/end_frame=0
animation/clip_57/loops=false
animation/clip_58/name=""
animation/clip_58/start_frame=0
animation/clip_58/end_frame=0
animation/clip_58/loops=false
animation/clip_59/name=""
animation/clip_59/start_frame=0
animation/clip_59/end_frame=0
animation/clip_59/loops=false
animation/clip_60/name=""
animation/clip_60/start_frame=0
animation/clip_60/end_frame=0
animation/clip_60/loops=false
animation/clip_61/name=""
animation/clip_61/start_frame=0
animation/clip_61/end_frame=0
animation/clip_61/loops=false
animation/clip_62/name=""
animation/clip_62/start_frame=0
animation/clip_62/end_frame=0
animation/clip_62/loops=false
animation/clip_63/name=""
animation/clip_63/start_frame=0
animation/clip_63/end_frame=0
animation/clip_63/loops=false
animation/clip_64/name=""
animation/clip_64/start_frame=0
animation/clip_64/end_frame=0
animation/clip_64/loops=false
animation/clip_65/name=""
animation/clip_65/start_frame=0
animation/clip_65/end_frame=0
animation/clip_65/loops=false
animation/clip_66/name=""
animation/clip_66/start_frame=0
animation/clip_66/end_frame=0
animation/clip_66/loops=false
animation/clip_67/name=""
animation/clip_67/start_frame=0
animation/clip_67/end_frame=0
animation/clip_67/loops=false
animation/clip_68/name=""
animation/clip_68/start_frame=0
animation/clip_68/end_frame=0
animation/clip_68/loops=false
animation/clip_69/name=""
animation/clip_69/start_frame=0
animation/clip_69/end_frame=0
animation/clip_69/loops=false
animation/clip_70/name=""
animation/clip_70/start_frame=0
animation/clip_70/end_frame=0
animation/clip_70/loops=false
animation/clip_71/name=""
animation/clip_71/start_frame=0
animation/clip_71/end_frame=0
animation/clip_71/loops=false
animation/clip_72/name=""
animation/clip_72/start_frame=0
animation/clip_72/end_frame=0
animation/clip_72/loops=false
animation/clip_73/name=""
animation/clip_73/start_frame=0
animation/clip_73/end_frame=0
animation/clip_73/loops=false
animation/clip_74/name=""
animation/clip_74/start_frame=0
animation/clip_74/end_frame=0
animation/clip_74/loops=false
animation/clip_75/name=""
animation/clip_75/start_frame=0
animation/clip_75/end_frame=0
animation/clip_75/loops=false
animation/clip_76/name=""
animation/clip_76/start_frame=0
animation/clip_76/end_frame=0
animation/clip_76/loops=false
animation/clip_77/name=""
animation/clip_77/start_frame=0
animation/clip_77/end_frame=0
animation/clip_77/loops=false
animation/clip_78/name=""
animation/clip_78/start_frame=0
animation/clip_78/end_frame=0
animation/clip_78/loops=false
animation/clip_79/name=""
animation/clip_79/start_frame=0
animation/clip_79/end_frame=0
animation/clip_79/loops=false
animation/clip_80/name=""
animation/clip_80/start_frame=0
animation/clip_80/end_frame=0
animation/clip_80/loops=false
animation/clip_81/name=""
animation/clip_81/start_frame=0
animation/clip_81/end_frame=0
animation/clip_81/loops=false
animation/clip_82/name=""
animation/clip_82/start_frame=0
animation/clip_82/end_frame=0
animation/clip_82/loops=false
animation/clip_83/name=""
animation/clip_83/start_frame=0
animation/clip_83/end_frame=0
animation/clip_83/loops=false
animation/clip_84/name=""
animation/clip_84/start_frame=0
animation/clip_84/end_frame=0
animation/clip_84/loops=false
animation/clip_85/name=""
animation/clip_85/start_frame=0
animation/clip_85/end_frame=0
animation/clip_85/loops=false
animation/clip_86/name=""
animation/clip_86/start_frame=0
animation/clip_86/end_frame=0
animation/clip_86/loops=false
animation/clip_87/name=""
animation/clip_87/start_frame=0
animation/clip_87/end_frame=0
animation/clip_87/loops=false
animation/clip_88/name=""
animation/clip_88/start_frame=0
animation/clip_88/end_frame=0
animation/clip_88/loops=false
animation/clip_89/name=""
animation/clip_89/start_frame=0
animation/clip_89/end_frame=0
animation/clip_89/loops=false
animation/clip_90/name=""
animation/clip_90/start_frame=0
animation/clip_90/end_frame=0
animation/clip_90/loops=false
animation/clip_91/name=""
animation/clip_91/start_frame=0
animation/clip_91/end_frame=0
animation/clip_91/loops=false
animation/clip_92/name=""
animation/clip_92/start_frame=0
animation/clip_92/end_frame=0
animation/clip_92/loops=false
animation/clip_93/name=""
animation/clip_93/start_frame=0
animation/clip_93/end_frame=0
animation/clip_93/loops=false
animation/clip_94/name=""
animation/clip_94/start_frame=0
animation/clip_94/end_frame=0
animation/clip_94/loops=false
animation/clip_95/name=""
animation/clip_95/start_frame=0
animation/clip_95/end_frame=0
animation/clip_95/loops=false
animation/clip_96/name=""
animation/clip_96/start_frame=0
animation/clip_96/end_frame=0
animation/clip_96/loops=false
animation/clip_97/name=""
animation/clip_97/start_frame=0
animation/clip_97/end_frame=0
animation/clip_97/loops=false
animation/clip_98/name=""
animation/clip_98/start_frame=0
animation/clip_98/end_frame=0
animation/clip_98/loops=false
animation/clip_99/name=""
animation/clip_99/start_frame=0
animation/clip_99/end_frame=0
animation/clip_99/loops=false
animation/clip_100/name=""
animation/clip_100/start_frame=0
animation/clip_100/end_frame=0
animation/clip_100/loops=false
animation/clip_101/name=""
animation/clip_101/start_frame=0
animation/clip_101/end_frame=0
animation/clip_101/loops=false
animation/clip_102/name=""
animation/clip_102/start_frame=0
animation/clip_102/end_frame=0
animation/clip_102/loops=false
animation/clip_103/name=""
animation/clip_103/start_frame=0
animation/clip_103/end_frame=0
animation/clip_103/loops=false
animation/clip_104/name=""
animation/clip_104/start_frame=0
animation/clip_104/end_frame=0
animation/clip_104/loops=false
animation/clip_105/name=""
animation/clip_105/start_frame=0
animation/clip_105/end_frame=0
animation/clip_105/loops=false
animation/clip_106/name=""
animation/clip_106/start_frame=0
animation/clip_106/end_frame=0
animation/clip_106/loops=false
animation/clip_107/name=""
animation/clip_107/start_frame=0
animation/clip_107/end_frame=0
animation/clip_107/loops=false
animation/clip_108/name=""
animation/clip_108/start_frame=0
animation/clip_108/end_frame=0
animation/clip_108/loops=false
animation/clip_109/name=""
animation/clip_109/start_frame=0
animation/clip_109/end_frame=0
animation/clip_109/loops=false
animation/clip_110/name=""
animation/clip_110/start_frame=0
animation/clip_110/end_frame=0
animation/clip_110/loops=false
animation/clip_111/name=""
animation/clip_111/start_frame=0
animation/clip_111/end_frame=0
animation/clip_111/loops=false
animation/clip_112/name=""
animation/clip_112/start_frame=0
animation/clip_112/end_frame=0
animation/clip_112/loops=false
animation/clip_113/name=""
animation/clip_113/start_frame=0
animation/clip_113/end_frame=0
animation/clip_113/loops=false
animation/clip_114/name=""
animation/clip_114/start_frame=0
animation/clip_114/end_frame=0
animation/clip_114/loops=false
animation/clip_115/name=""
animation/clip_115/start_frame=0
animation/clip_115/end_frame=0
animation/clip_115/loops=false
animation/clip_116/name=""
animation/clip_116/start_frame=0
animation/clip_116/end_frame=0
animation/clip_116/loops=false
animation/clip_117/name=""
animation/clip_117/start_frame=0
animation/clip_117/end_frame=0
animation/clip_117/loops=false
animation/clip_118/name=""
animation/clip_118/start_frame=0
animation/clip_118/end_frame=0
animation/clip_118/loops=false
animation/clip_119/name=""
animation/clip_119/start_frame=0
animation/clip_119/end_frame=0
animation/clip_119/loops=false
animation/clip_120/name=""
animation/clip_120/start_frame=0
animation/clip_120/end_frame=0
animation/clip_120/loops=false
animation/clip_121/name=""
animation/clip_121/start_frame=0
animation/clip_121/end_frame=0
animation/clip_121/loops=false
animation/clip_122/name=""
animation/clip_122/start_frame=0
animation/clip_122/end_frame=0
animation/clip_122/loops=false
animation/clip_123/name=""
animation/clip_123/start_frame=0
animation/clip_123/end_frame=0
animation/clip_123/loops=false
animation/clip_124/name=""
animation/clip_124/start_frame=0
animation/clip_124/end_frame=0
animation/clip_124/loops=false
animation/clip_125/name=""
animation/clip_125/start_frame=0
animation/clip_125/end_frame=0
animation/clip_125/loops=false
animation/clip_126/name=""
animation/clip_126/start_frame=0
animation/clip_126/end_frame=0
animation/clip_126/loops=false
animation/clip_127/name=""
animation/clip_127/start_frame=0
animation/clip_127/end_frame=0
animation/clip_127/loops=false
animation/clip_128/name=""
animation/clip_128/start_frame=0
animation/clip_128/end_frame=0
animation/clip_128/loops=false
animation/clip_129/name=""
animation/clip_129/start_frame=0
animation/clip_129/end_frame=0
animation/clip_129/loops=false
animation/clip_130/name=""
animation/clip_130/start_frame=0
animation/clip_130/end_frame=0
animation/clip_130/loops=false
animation/clip_131/name=""
animation/clip_131/start_frame=0
animation/clip_131/end_frame=0
animation/clip_131/loops=false
animation/clip_132/name=""
animation/clip_132/start_frame=0
animation/clip_132/end_frame=0
animation/clip_132/loops=false
animation/clip_133/name=""
animation/clip_133/start_frame=0
animation/clip_133/end_frame=0
animation/clip_133/loops=false
animation/clip_134/name=""
animation/clip_134/start_frame=0
animation/clip_134/end_frame=0
animation/clip_134/loops=false
animation/clip_135/name=""
animation/clip_135/start_frame=0
animation/clip_135/end_frame=0
animation/clip_135/loops=false
animation/clip_136/name=""
animation/clip_136/start_frame=0
animation/clip_136/end_frame=0
animation/clip_136/loops=false
animation/clip_137/name=""
animation/clip_137/start_frame=0
animation/clip_137/end_frame=0
animation/clip_137/loops=false
animation/clip_138/name=""
animation/clip_138/start_frame=0
animation/clip_138/end_frame=0
animation/clip_138/loops=false
animation/clip_139/name=""
animation/clip_139/start_frame=0
animation/clip_139/end_frame=0
animation/clip_139/loops=false
animation/clip_140/name=""
animation/clip_140/start_frame=0
animation/clip_140/end_frame=0
animation/clip_140/loops=false
animation/clip_141/name=""
animation/clip_141/start_frame=0
animation/clip_141/end_frame=0
animation/clip_141/loops=false
animation/clip_142/name=""
animation/clip_142/start_frame=0
animation/clip_142/end_frame=0
animation/clip_142/loops=false
animation/clip_143/name=""
animation/clip_143/start_frame=0
animation/clip_143/end_frame=0
animation/clip_143/loops=false
animation/clip_144/name=""
animation/clip_144/start_frame=0
animation/clip_144/end_frame=0
animation/clip_144/loops=false
animation/clip_145/name=""
animation/clip_145/start_frame=0
animation/clip_145/end_frame=0
animation/clip_145/loops=false
animation/clip_146/name=""
animation/clip_146/start_frame=0
animation/clip_146/end_frame=0
animation/clip_146/loops=false
animation/clip_147/name=""
animation/clip_147/start_frame=0
animation/clip_147/end_frame=0
animation/clip_147/loops=false
animation/clip_148/name=""
animation/clip_148/start_frame=0
animation/clip_148/end_frame=0
animation/clip_148/loops=false
animation/clip_149/name=""
animation/clip_149/start_frame=0
animation/clip_149/end_frame=0
animation/clip_149/loops=false
animation/clip_150/name=""
animation/clip_150/start_frame=0
animation/clip_150/end_frame=0
animation/clip_150/loops=false
animation/clip_151/name=""
animation/clip_151/start_frame=0
animation/clip_151/end_frame=0
animation/clip_151/loops=false
animation/clip_152/name=""
animation/clip_152/start_frame=0
animation/clip_152/end_frame=0
animation/clip_152/loops=false
animation/clip_153/name=""
animation/clip_153/start_frame=0
animation/clip_153/end_frame=0
animation/clip_153/loops=false
animation/clip_154/name=""
animation/clip_154/start_frame=0
animation/clip_154/end_frame=0
animation/clip_154/loops=false
animation/clip_155/name=""
animation/clip_155/start_frame=0
animation/clip_155/end_frame=0
animation/clip_155/loops=false
animation/clip_156/name=""
animation/clip_156/start_frame=0
animation/clip_156/end_frame=0
animation/clip_156/loops=false
animation/clip_157/name=""
animation/clip_157/start_frame=0
animation/clip_157/end_frame=0
animation/clip_157/loops=false
animation/clip_158/name=""
animation/clip_158/start_frame=0
animation/clip_158/end_frame=0
animation/clip_158/loops=false
animation/clip_159/name=""
animation/clip_159/start_frame=0
animation/clip_159/end_frame=0
animation/clip_159/loops=false
animation/clip_160/name=""
animation/clip_160/start_frame=0
animation/clip_160/end_frame=0
animation/clip_160/loops=false
animation/clip_161/name=""
animation/clip_161/start_frame=0
animation/clip_161/end_frame=0
animation/clip_161/loops=false
animation/clip_162/name=""
animation/clip_162/start_frame=0
animation/clip_162/end_frame=0
animation/clip_162/loops=false
animation/clip_163/name=""
animation/clip_163/start_frame=0
animation/clip_163/end_frame=0
animation/clip_163/loops=false
animation/clip_164/name=""
animation/clip_164/start_frame=0
animation/clip_164/end_frame=0
animation/clip_164/loops=false
animation/clip_165/name=""
animation/clip_165/start_frame=0
animation/clip_165/end_frame=0
animation/clip_165/loops=false
animation/clip_166/name=""
animation/clip_166/start_frame=0
animation/clip_166/end_frame=0
animation/clip_166/loops=false
animation/clip_167/name=""
animation/clip_167/start_frame=0
animation/clip_167/end_frame=0
animation/clip_167/loops=false
animation/clip_168/name=""
animation/clip_168/start_frame=0
animation/clip_168/end_frame=0
animation/clip_168/loops=false
animation/clip_169/name=""
animation/clip_169/start_frame=0
animation/clip_169/end_frame=0
animation/clip_169/loops=false
animation/clip_170/name=""
animation/clip_170/start_frame=0
animation/clip_170/end_frame=0
animation/clip_170/loops=false
animation/clip_171/name=""
animation/clip_171/start_frame=0
animation/clip_171/end_frame=0
animation/clip_171/loops=false
animation/clip_172/name=""
animation/clip_172/start_frame=0
animation/clip_172/end_frame=0
animation/clip_172/loops=false
animation/clip_173/name=""
animation/clip_173/start_frame=0
animation/clip_173/end_frame=0
animation/clip_173/loops=false
animation/clip_174/name=""
animation/clip_174/start_frame=0
animation/clip_174/end_frame=0
animation/clip_174/loops=false
animation/clip_175/name=""
animation/clip_175/start_frame=0
animation/clip_175/end_frame=0
animation/clip_175/loops=false
animation/clip_176/name=""
animation/clip_176/start_frame=0
animation/clip_176/end_frame=0
animation/clip_176/loops=false
animation/clip_177/name=""
animation/clip_177/start_frame=0
animation/clip_177/end_frame=0
animation/clip_177/loops=false
animation/clip_178/name=""
animation/clip_178/start_frame=0
animation/clip_178/end_frame=0
animation/clip_178/loops=false
animation/clip_179/name=""
animation/clip_179/start_frame=0
animation/clip_179/end_frame=0
animation/clip_179/loops=false
animation/clip_180/name=""
animation/clip_180/start_frame=0
animation/clip_180/end_frame=0
animation/clip_180/loops=false
animation/clip_181/name=""
animation/clip_181/start_frame=0
animation/clip_181/end_frame=0
animation/clip_181/loops=false
animation/clip_182/name=""
animation/clip_182/start_frame=0
animation/clip_182/end_frame=0
animation/clip_182/loops=false
animation/clip_183/name=""
animation/clip_183/start_frame=0
animation/clip_183/end_frame=0
animation/clip_183/loops=false
animation/clip_184/name=""
animation/clip_184/start_frame=0
animation/clip_184/end_frame=0
animation/clip_184/loops=false
animation/clip_185/name=""
animation/clip_185/start_frame=0
animation/clip_185/end_frame=0
animation/clip_185/loops=false
animation/clip_186/name=""
animation/clip_186/start_frame=0
animation/clip_186/end_frame=0
animation/clip_186/loops=false
animation/clip_187/name=""
animation/clip_187/start_frame=0
animation/clip_187/end_frame=0
animation/clip_187/loops=false
animation/clip_188/name=""
animation/clip_188/start_frame=0
animation/clip_188/end_frame=0
animation/clip_188/loops=false
animation/clip_189/name=""
animation/clip_189/start_frame=0
animation/clip_189/end_frame=0
animation/clip_189/loops=false
animation/clip_190/name=""
animation/clip_190/start_frame=0
animation/clip_190/end_frame=0
animation/clip_190/loops=false
animation/clip_191/name=""
animation/clip_191/start_frame=0
animation/clip_191/end_frame=0
animation/clip_191/loops=false
animation/clip_192/name=""
animation/clip_192/start_frame=0
animation/clip_192/end_frame=0
animation/clip_192/loops=false
animation/clip_193/name=""
animation/clip_193/start_frame=0
animation/clip_193/end_frame=0
animation/clip_193/loops=false
animation/clip_194/name=""
animation/clip_194/start_frame=0
animation/clip_194/end_frame=0
animation/clip_194/loops=false
animation/clip_195/name=""
animation/clip_195/start_frame=0
animation/clip_195/end_frame=0
animation/clip_195/loops=false
animation/clip_196/name=""
animation/clip_196/start_frame=0
animation/clip_196/end_frame=0
animation/clip_196/loops=false
animation/clip_197/name=""
animation/clip_197/start_frame=0
animation/clip_197/end_frame=0
animation/clip_197/loops=false
animation/clip_198/name=""
animation/clip_198/start_frame=0
animation/clip_198/end_frame=0
animation/clip_198/loops=false
animation/clip_199/name=""
animation/clip_199/start_frame=0
animation/clip_199/end_frame=0
animation/clip_199/loops=false
animation/clip_200/name=""
animation/clip_200/start_frame=0
animation/clip_200/end_frame=0
animation/clip_200/loops=false
animation/clip_201/name=""
animation/clip_201/start_frame=0
animation/clip_201/end_frame=0
animation/clip_201/loops=false
animation/clip_202/name=""
animation/clip_202/start_frame=0
animation/clip_202/end_frame=0
animation/clip_202/loops=false
animation/clip_203/name=""
animation/clip_203/start_frame=0
animation/clip_203/end_frame=0
animation/clip_203/loops=false
animation/clip_204/name=""
animation/clip_204/start_frame=0
animation/clip_204/end_frame=0
animation/clip_204/loops=false
animation/clip_205/name=""
animation/clip_205/start_frame=0
animation/clip_205/end_frame=0
animation/clip_205/loops=false
animation/clip_206/name=""
animation/clip_206/start_frame=0
animation/clip_206/end_frame=0
animation/clip_206/loops=false
animation/clip_207/name=""
animation/clip_207/start_frame=0
animation/clip_207/end_frame=0
animation/clip_207/loops=false
animation/clip_208/name=""
animation/clip_208/start_frame=0
animation/clip_208/end_frame=0
animation/clip_208/loops=false
animation/clip_209/name=""
animation/clip_209/start_frame=0
animation/clip_209/end_frame=0
animation/clip_209/loops=false
animation/clip_210/name=""
animation/clip_210/start_frame=0
animation/clip_210/end_frame=0
animation/clip_210/loops=false
animation/clip_211/name=""
animation/clip_211/start_frame=0
animation/clip_211/end_frame=0
animation/clip_211/loops=false
animation/clip_212/name=""
animation/clip_212/start_frame=0
animation/clip_212/end_frame=0
animation/clip_212/loops=false
animation/clip_213/name=""
animation/clip_213/start_frame=0
animation/clip_213/end_frame=0
animation/clip_213/loops=false
animation/clip_214/name=""
animation/clip_214/start_frame=0
animation/clip_214/end_frame=0
animation/clip_214/loops=false
animation/clip_215/name=""
animation/clip_215/start_frame=0
animation/clip_215/end_frame=0
animation/clip_215/loops=false
animation/clip_216/name=""
animation/clip_216/start_frame=0
animation/clip_216/end_frame=0
animation/clip_216/loops=false
animation/clip_217/name=""
animation/clip_217/start_frame=0
animation/clip_217/end_frame=0
animation/clip_217/loops=false
animation/clip_218/name=""
animation/clip_218/start_frame=0
animation/clip_218/end_frame=0
animation/clip_218/loops=false
animation/clip_219/name=""
animation/clip_219/start_frame=0
animation/clip_219/end_frame=0
animation/clip_219/loops=false
animation/clip_220/name=""
animation/clip_220/start_frame=0
animation/clip_220/end_frame=0
animation/clip_220/loops=false
animation/clip_221/name=""
animation/clip_221/start_frame=0
animation/clip_221/end_frame=0
animation/clip_221/loops=false
animation/clip_222/name=""
animation/clip_222/start_frame=0
animation/clip_222/end_frame=0
animation/clip_222/loops=false
animation/clip_223/name=""
animation/clip_223/start_frame=0
animation/clip_223/end_frame=0
animation/clip_223/loops=false
animation/clip_224/name=""
animation/clip_224/start_frame=0
animation/clip_224/end_frame=0
animation/clip_224/loops=false
animation/clip_225/name=""
animation/clip_225/start_frame=0
animation/clip_225/end_frame=0
animation/clip_225/loops=false
animation/clip_226/name=""
animation/clip_226/start_frame=0
animation/clip_226/end_frame=0
animation/clip_226/loops=false
animation/clip_227/name=""
animation/clip_227/start_frame=0
animation/clip_227/end_frame=0
animation/clip_227/loops=false
animation/clip_228/name=""
animation/clip_228/start_frame=0
animation/clip_228/end_frame=0
animation/clip_228/loops=false
animation/clip_229/name=""
animation/clip_229/start_frame=0
animation/clip_229/end_frame=0
animation/clip_229/loops=false
animation/clip_230/name=""
animation/clip_230/start_frame=0
animation/clip_230/end_frame=0
animation/clip_230/loops=false
animation/clip_231/name=""
animation/clip_231/start_frame=0
animation/clip_231/end_frame=0
animation/clip_231/loops=false
animation/clip_232/name=""
animation/clip_232/start_frame=0
animation/clip_232/end_frame=0
animation/clip_232/loops=false
animation/clip_233/name=""
animation/clip_233/start_frame=0
animation/clip_233/end_frame=0
animation/clip_233/loops=false
animation/clip_234/name=""
animation/clip_234/start_frame=0
animation/clip_234/end_frame=0
animation/clip_234/loops=false
animation/clip_235/name=""
animation/clip_235/start_frame=0
animation/clip_235/end_frame=0
animation/clip_235/loops=false
animation/clip_236/name=""
animation/clip_236/start_frame=0
animation/clip_236/end_frame=0
animation/clip_236/loops=false
animation/clip_237/name=""
animation/clip_237/start_frame=0
animation/clip_237/end_frame=0
animation/clip_237/loops=false
animation/clip_238/name=""
animation/clip_238/start_frame=0
animation/clip_238/end_frame=0
animation/clip_238/loops=false
animation/clip_239/name=""
animation/clip_239/start_frame=0
animation/clip_239/end_frame=0
animation/clip_239/loops=false
animation/clip_240/name=""
animation/clip_240/start_frame=0
animation/clip_240/end_frame=0
animation/clip_240/loops=false
animation/clip_241/name=""
animation/clip_241/start_frame=0
animation/clip_241/end_frame=0
animation/clip_241/loops=false
animation/clip_242/name=""
animation/clip_242/start_frame=0
animation/clip_242/end_frame=0
animation/clip_242/loops=false
animation/clip_243/name=""
animation/clip_243/start_frame=0
animation/clip_243/end_frame=0
animation/clip_243/loops=false
animation/clip_244/name=""
animation/clip_244/start_frame=0
animation/clip_244/end_frame=0
animation/clip_244/loops=false
animation/clip_245/name=""
animation/clip_245/start_frame=0
animation/clip_245/end_frame=0
animation/clip_245/loops=false
animation/clip_246/name=""
animation/clip_246/start_frame=0
animation/clip_246/end_frame=0
animation/clip_246/loops=false
animation/clip_247/name=""
animation/clip_247/start_frame=0
animation/clip_247/end_frame=0
animation/clip_247/loops=false
animation/clip_248/name=""
animation/clip_248/start_frame=0
animation/clip_248/end_frame=0
animation/clip_248/loops=false
animation/clip_249/name=""
animation/clip_249/start_frame=0
animation/clip_249/end_frame=0
animation/clip_249/loops=false
animation/clip_250/name=""
animation/clip_250/start_frame=0
animation/clip_250/end_frame=0
animation/clip_250/loops=false
animation/clip_251/name=""
animation/clip_251/start_frame=0
animation/clip_251/end_frame=0
animation/clip_251/loops=false
animation/clip_252/name=""
animation/clip_252/start_frame=0
animation/clip_252/end_frame=0
animation/clip_252/loops=false
animation/clip_253/name=""
animation/clip_253/start_frame=0
animation/clip_253/end_frame=0
animation/clip_253/loops=false
animation/clip_254/name=""
animation/clip_254/start_frame=0
animation/clip_254/end_frame=0
animation/clip_254/loops=false
animation/clip_255/name=""
animation/clip_255/start_frame=0
animation/clip_255/end_frame=0
animation/clip_255/loops=false
animation/clip_256/name=""
animation/clip_256/start_frame=0
animation/clip_256/end_frame=0
animation/clip_256/loops=false
 extends Node

var Game = preload("res://base.tscn")
var Wrld = preload("res://world.tscn")
var Incubator = preload("res://incubator.tscn")

var cam = null

func _ready():
  self.cam = get_node("Camera")

func _process(delta):
  pass
    
func _input(event):
  if event.type == InputEvent.MOUSE_BUTTON:
    if event.button_index == BUTTON_WHEEL_DOWN:
      self.cam.translate(Vector3(0,0,0.1))
      self.cam.reselect()
    elif event.button_index == BUTTON_WHEEL_UP:
      self.cam.translate(Vector3(0,0,-0.1))
      self.cam.reselect()
  if event.type == InputEvent.MOUSE_MOTION and event.button_mask == BUTTON_MASK_MIDDLE:
    get_node("Camera").rot_around(event.relative_x/(30))
  if event.type == InputEvent.KEY:
    if event.scancode == KEY_A:
      get_node("Camera").translate(Vector3(-0.1,0,0))
    if event.scancode == KEY_D:
      get_node("Camera").translate(Vector3(0.1,0,0))
    if event.scancode == KEY_S:
      get_node("Camera").translate(Vector3(0,-0.1,0))
    if event.scancode == KEY_W:
      get_node("Camera").translate(Vector3(0,0.1,0))
    if event.scancode == KEY_H:
      var s = get_node("Camera").get_selected()
      if s != null:
        get_node("Incubator").push_world(s)              extends InterpolatedCamera

var selected = null

func _ready():
  set_target(get_parent().get_node("overview"))
  self.selected = get_parent().get_node("center")
  
func select(what, new_target):
  set_target(new_target)
  if self.selected != what:
    set_interpolation_enabled(true)
    #set_translation(what.translation + Vector3(1,3,0))
  self.selected = what

func reselect():
  if self.selected != null:
    set_interpolation_enabled(false)
    look_at(self.selected.translation, Vector3(0,1,0))

func rot_around(amount):
  if self.selected != null:
    var relative = self.translation - self.selected.translation
    var rotated = relative.rotated(Vector3(0,1,0), amount)
    set_translation(self.selected.translation + rotated)
    reselect()

func get_selected():
  return self.selected     extends Spatial

var prev_pos = null

func _ready():
  get_node("Area/Quad").get_material_override().set_texture(SpatialMaterial.DIFFUSE_LAMBERT, get_node("Viewport").get_texture())
  set_process_input(true)

func _on_Area_input_event( camera, event, click_pos, click_normal, shape_idx ):
  var pos = get_node("Area").get_global_transform().affine_inverse()*click_pos
  # Convert to 2D
  if pos.y <= 0.9 or pos.y >= 1.1:
    return
  pos.x = (pos.x + 1)*200
  pos.z = (-pos.z + 1)*200
  var pos2 = Vector2(pos.z, pos.x)
  event.pos = pos2
  event.global_pos = pos2
  if self.prev_pos == null:
    self.prev_pos = pos2
  if event.type == InputEvent.MOUSE_MOTION:
    event.relative_pos = pos2 - self.prev_pos
  self.prev_pos = pos2
  get_node("Viewport").input(event)

func _on_body_input_event( camera, event, click_pos, click_normal, shape_idx ):
  if event.type == InputEvent.MOUSE_BUTTON and event.button_index == BUTTON_LEFT:
    print("body")
    var cam = get_tree().get_root().get_camera()
    cam.select(self, get_node("point"))

func _on_panel_input_event( camera, event, click_pos, click_normal, shape_idx ):
  if event.type == InputEvent.MOUSE_BUTTON and event.button_index == BUTTON_LEFT:
    print("panel")
    var cam = get_tree().get_root().get_camera()
    cam.select(self, get_node("point"))    extends StaticBody

var cube = null
var selected = false
var mat = SpatialMaterial.new()

signal on_click

func _ready():
  self.cube = get_child(0)
  self.cube.material_override = self.mat
  connect("on_click", get_parent(), "_on_click")
  
func _input_event(camera, event, click_pos, click_normal, shape_idx):
  if event.type == InputEvent.MOUSE_BUTTON and event.button_index == BUTTON_LEFT and event.is_pressed():
    if self.selected:
      self.mat.set_albedo(Color(0.5,0.3,0.3))
    else:
      self.mat.set_albedo(Color(0.3,0.5,0.3))
    self.selected = !self.selected
    emit_signal("on_click")
    extends Spatial

func _ready():
  pass
         extends Spatial

var worlds = []

func _enter_tree():
  for x in range(4):
    var line = []
    self.worlds.append(line)
    for y in range(2):
      line.append(null)

func set_world(x, y, world):
  self.worlds[x][y] = world
  var pos = get_node("spawns/" + str(x) + "-" + str(y))
  world.set_translation(pos.global_transform.origin)

func push_world(world):
  for x in range(4):
    for y in range(2):
      if self.worlds[x][y] == null:
        set_world(x, y, world)
        return

func get_world(x, y):
  return self.worlds[x][y]

func _on_body_input_event( camera, event, click_pos, click_normal, shape_idx ):
  if event.type == InputEvent.MOUSE_BUTTON and event.button_index == BUTTON_LEFT:
    print("body")
    var cam = get_tree().get_root().get_camera()
    cam.select(self, get_node("point"))

func _on_panel_input_event( camera, event, click_pos, click_normal, shape_idx ):
  if event.type == InputEvent.MOUSE_BUTTON and event.button_index == BUTTON_LEFT:
    print("panel")
    var cam = get_tree().get_root().get_camera()
    cam.select(self, get_node("point"))
         extends Spatial

const SIZE = 15

var Cube = preload("res://cube.tscn")
var House = preload("res://house.tscn")
var Pine = preload("res://tree_pine.tscn")
var Oak = preload("res://tree_oak.tscn")
var cubes = Array()

func _enter_tree():
  var pn = Pine.instance()
  pn.translate(Vector3(2,1,2))
  add_child(pn)
  var ok = Oak.instance()
  ok.translate(Vector3(-2,1,2))
  add_child(ok)
  var hs = House.instance()
  hs.translate(Vector3(0,1,2))
  hs.rotate_y(PI/2)
  add_child(hs)
  _make_ball(SIZE, Vector3(0,0,0))

func _make_ball(size, center):
  var blocks = Array()
  for x in range(-size, size):
    var line_x = Array()
    blocks.append(line_x)
    for y in range(0, -size, -1):
      var line_y = Array()
      line_x.append(line_y)
      for z in range(-size, size):
        var relative = Vector3(x, y, z)
        if floor(relative.length()) <= size/2:
          var cube = Cube.instance()
          cube.translate(relative + center)
          cube.set_scale(Vector3(0.5, 0.5, 0.5))
          add_child(cube)
          line_y.append(cube)
        else:
          line_y.append(null)
          
func _on_click():
  var cam = get_tree().get_root().get_camera()
  cam.select(self, get_node("point"))          [gd_scene load_steps=2 format=2]

[ext_resource path="res://mesh/tree_ball.dae" type="PackedScene" id=1]

[node name="Scene Root" instance=ExtResource( 1 )]


 [gd_scene load_steps=2 format=2]

[ext_resource path="res://mesh/tree_pine.dae" type="PackedScene" id=1]

[node name="Scene Root" instance=ExtResource( 1 )]


 [gd_scene load_steps=2 format=2]

[ext_resource path="res://scripts/world.gd" type="Script" id=1]

[node name="World" type="Spatial"]

script = ExtResource( 1 )

[node name="OmniLight" type="OmniLight" parent="."]

transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 20, 0 )
layers = 1
light_color = Color( 0.819993, 0.824219, 0.283325, 1 )
light_energy = 3.0
light_negative = false
light_specular = 0.5
light_cull_mask = -1
shadow_enabled = true
shadow_color = Color( 0, 0, 0, 1 )
shadow_bias = 5.0
shadow_contact = 0.0
shadow_max_distance = 45.0
editor_only = false
omni_range = 45.0
omni_attenuation = 1.0
omni_shadow_mode = 1
omni_shadow_detail = 1

[node name="point" type="Camera" parent="."]

transform = Transform( -3.09086e-08, -0.707107, 0.707107, -1.28028e-08, 0.707107, 0.707107, -1, 1.28028e-08, -3.09086e-08, 2.2, 3, 0 )
projection = 0
fov = 60.0
near = 0.1
far = 100.0
keep_aspect = 1
current = false
cull_mask = 1048575
environment = null
h_offset = 0.0
v_offset = 0.0


    ECFG      config_version          application/name         ld38   application/main_scene         res://base.tscn    application/icon         res://icon.pngn +   memory/multithread/thread_rid_pool_prealloc     <       &   rendering/viewport/default_clear_color                    �?   rendering/quality/msaa                     GDPC