GDPC                                                                               <   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex�*      U      -��`�0��x�5�[    res://Scenes/Levels/Level1.tscn �      y      Ȇ?��Z�{�^�g   res://Scenes/NormalBox.tscn `      �      J�-G�}��u˛M5$   res://Scenes/Player/Player.gd.remap �:      /       I��Gg�Y������    res://Scenes/Player/Player.gdc               &6ak�<�R��s.�s    res://Scenes/Player/Player.tscn       <      ���sEG`�c;/"�I�,   res://Scenes/Projectile/Projectile.gd.remap �:      7       ;�+����3k�s4��Ҿ(   res://Scenes/Projectile/Projectile.gdc  P"      �      x���E-��t�f�!�Q(   res://Scenes/Projectile/Projectile.tscn �'      5      7ݰz���˕G{��c<B   res://default_env.tres  0*      �       um�`�N��<*ỳ�8   res://icon.png  0;      �      G1?��z�c��vN��   res://icon.png.import   @8      �      �����%��(#AB�   res://project.binary H      >      m�����Ա^�K�f        [gd_scene load_steps=4 format=2]

[ext_resource path="res://Scenes/Player/Player.tscn" type="PackedScene" id=1]
[ext_resource path="res://Scenes/NormalBox.tscn" type="PackedScene" id=2]
[ext_resource path="res://Scenes/Projectile/Projectile.tscn" type="PackedScene" id=3]

[node name="Level1" type="Node2D"]

[node name="NormalBox" parent="." instance=ExtResource( 2 )]
tile_data = PoolIntArray( 0, 0, 0, 1, 0, 0, 2, 0, 0, 3, 0, 0, 4, 0, 0, 5, 0, 0, 6, 0, 0, 7, 0, 0, 8, 0, 0, 9, 0, 0, 10, 0, 0, 11, 0, 0, 12, 0, 0, 13, 0, 0, 14, 0, 0, 15, 0, 0, 65536, 0, 0, 65551, 0, 0, 131072, 0, 0, 131087, 0, 0, 196608, 0, 0, 196619, 0, 0, 196620, 0, 0, 196621, 0, 0, 196622, 0, 0, 196623, 0, 0, 262144, 0, 0, 262155, 0, 0, 262156, 0, 0, 262157, 0, 0, 262158, 0, 0, 262159, 0, 0, 327680, 0, 0, 327688, 0, 0, 327689, 0, 0, 327690, 0, 0, 327691, 0, 0, 327692, 0, 0, 327693, 0, 0, 327694, 0, 0, 327695, 0, 0, 393216, 0, 0, 393224, 0, 0, 393225, 0, 0, 393226, 0, 0, 393227, 0, 0, 393228, 0, 0, 393229, 0, 0, 393230, 0, 0, 393231, 0, 0, 458752, 0, 0, 458757, 0, 0, 458758, 0, 0, 458760, 0, 0, 458761, 0, 0, 458762, 0, 0, 458763, 0, 0, 458764, 0, 0, 458765, 0, 0, 458766, 0, 0, 458767, 0, 0, 524288, 0, 0, 524289, 0, 0, 524290, 0, 0, 524291, 0, 0, 524292, 0, 0, 524293, 0, 0, 524294, 0, 0, 524295, 0, 0, 524296, 0, 0, 524297, 0, 0, 524298, 0, 0, 524299, 0, 0, 524300, 0, 0, 524301, 0, 0, 524302, 0, 0, 524303, 0, 0, 589824, 0, 0, 589825, 0, 0, 589826, 0, 0, 589827, 0, 0, 589828, 0, 0, 589829, 0, 0, 589830, 0, 0, 589831, 0, 0, 589832, 0, 0, 589833, 0, 0, 589834, 0, 0, 589835, 0, 0, 589836, 0, 0, 589837, 0, 0, 589838, 0, 0, 589839, 0, 0 )

[node name="Player" parent="." instance=ExtResource( 1 )]
position = Vector2( 144.634, 449.039 )

[node name="Projectile" parent="." instance=ExtResource( 3 )]
position = Vector2( -51.449, -21.9897 )

[node name="Camera2D" type="Camera2D" parent="."]
current = true
zoom = Vector2( 2, 2 )
       [gd_scene load_steps=4 format=2]

[ext_resource path="res://icon.png" type="Texture" id=1]

[sub_resource type="ConvexPolygonShape2D" id=1]
points = PoolVector2Array( 0, 0, 64, 0, 64, 64, 0, 64 )

[sub_resource type="TileSet" id=2]
0/name = "Platform"
0/texture = ExtResource( 1 )
0/tex_offset = Vector2( 0, 0 )
0/modulate = Color( 0, 0, 0, 1 )
0/region = Rect2( 0, 0, 64, 64 )
0/tile_mode = 0
0/occluder_offset = Vector2( 0, 0 )
0/navigation_offset = Vector2( 0, 0 )
0/shape_offset = Vector2( 0, 0 )
0/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
0/shape = SubResource( 1 )
0/shape_one_way = false
0/shape_one_way_margin = 1.0
0/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 1 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
0/z_index = 0

[node name="NormalBox" type="TileMap"]
tile_set = SubResource( 2 )
collision_mask = 3
format = 1
          GDSC   ,   %   p   �     ������������τ�   ����򶶶   �������   ��������������   ����������   ����䶶�   ����������������   ��������������   �������϶���   ���������������¶���   ��������ض��   ������������Ŷ��   ������������Ŷ��   �������Ӷ���   �����Ӷ�   �����Ӷ�   ���������������Ŷ���   �����׶�   ����������Ӷ   �����������������¶�   �����Ѷ�   �����ݶ�   �������¶���   ����������������Ӷ��   ����ڶ��   ���¶���   ����ڄ��   ������¶   ����¶��   ������������������޶   �����޶�   ζ��   ����������Ķ   ���������������������Ҷ�   ϶��   ����������������������Ҷ   �������������Ӷ�   ����������������Ҷ��   �������؄�   �������ض���   �������Ӷ���   ��������������Ӷ   ������������������ض   ��������������Ӷ     �C     �B   �      ��D                2      �              none   
   can_attack        Idle      ui_right      ui_left       Running    	   ui_accept         In Air              ui_up         U         L         R         ui_down       D         UL        UR        DL        DR        ui_focus_next      	   in_flight         ../Projectile      	   ui_select         can_teleport   	   ui_cancel      
   ui_page_up               Aiming                                             "      '   	   (   
   -      .      5      :      ?      E      K      P      Q      X      Y      `      d      h      l      p      t      x      |      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1     2     3     4     5     6     7     8   %  9   &  :   '  ;   -  <   6  =   C  >   G  ?   P  @   ]  A   a  B   j  C   v  D   z  E   �  F   �  G   �  H   �  I   �  J   �  K   �  L   �  M   �  N   �  O   �  P   �  Q     R     S     T     U     V     W   ,  X   0  Y   A  Z   B  [   C  \   I  ]   V  ^   Z  _   c  `   l  a   m  b   n  c   t  d   �  e   �  f   �  g   �  h   �  i   �  j   �  k   �  l   �  m   �  n   �  o   �  p   3YY:�  Y:�  �  Y:�  �  Y:�  �  Y:�  �  P�  R�  QY:�  �  YY:�  �  YY;�  �  PQY;�	  �  Y;�
  �	  Y8;�  �
  Y8;�  �  Y;�  �  YY5;�  W�  YY0�  P�  QV�  �  PQ�  &�  V�  �  PQ�  �  PQ�  �  PQ�  �  PQ�  �  PQ�  W�  T�  �  �  W�  T�  �  YY0�  PQV�  �  ;�  �  T�  P�  Q�  T�  P�  Q�  &�  �  V�  �  T�  �  	�  �  �  T�  �  �  �  �  �  �  (V�  �  T�  �  �  �  �  �  �  &�   PQV�  &�  T�!  P�  QV�  �  T�"  �  �  (V�  �  �  �  &�  T�#  P�  Q�  T�"  	�  �  V�  �  T�"  �  �  �  �  &�  T�"  �  V�  �  T�"  �  �  (V�  �  T�"  �  �  �  �  �$  P�  R�  Q�  YY0�  PQV�  &�  T�%  P�  QV�  W�&  T�'  �  P�  R�  Q�  �
  �  �  &�  T�%  P�  QV�  W�&  T�'  �  P�  R�  Q�  �
  �  �  &�  T�%  P�  QV�  W�&  T�'  �  P�  R�  Q�  �
  �  �  &�  T�%  P�  QV�  W�&  T�'  �  P�  R�  Q�  �
  �  �  &�  T�%  P�  Q�  T�%  P�  QV�  W�&  T�'  �  P�  R�  Q�  �
  �  �  &�  T�%  P�  Q�  T�%  P�  QV�  W�&  T�'  �  P�  R�  Q�  �
  �  �  &�  T�%  P�  Q�  T�%  P�  QV�  W�&  T�'  �  P�  R�  Q�  �
  �  �  &�  T�%  P�  Q�  T�%  P�  QV�  W�&  T�'  �  P�  R�  Q�  �
  �  �  YY0�  PQV�  &�  T�!  P�  Q�  �
  V�  �  �  �  �(  P�  QT�)  PW�&  T�*  PQR�
  Q�  YY0�  PQV�  &�  T�!  P�  Q�  �   V�  �  �
  �  �'  �(  P�  QT�'  �  �(  P�  QT�+  PQ�  YY0�  PQV�  &�  T�!  P�!  Q�  �   V�  �  �
  �  �(  P�  QT�+  PQ�  YY0�  PQV�  &�  T�%  P�"  Q�  �  V�  �  �#  �  �  �$  �  (V�  �  �  �  Y`            [gd_scene load_steps=4 format=2]

[ext_resource path="res://icon.png" type="Texture" id=1]
[ext_resource path="res://Scenes/Player/Player.gd" type="Script" id=2]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 28, 32 )

[node name="Player" type="KinematicBody2D"]
script = ExtResource( 2 )

[node name="Sprite" type="Sprite" parent="."]
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )

[node name="Position2D" type="Position2D" parent="."]

[node name="Sprite" type="Sprite" parent="Position2D"]
modulate = Color( 0, 0, 0, 1 )
scale = Vector2( 0.25, 0.25 )
texture = ExtResource( 1 )

[node name="Label" type="Label" parent="."]
margin_left = -31.1582
margin_top = -45.304
margin_right = 32.8418
margin_bottom = -31.304
text = "IDLE"
align = 1
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Label2" type="Label" parent="."]
margin_left = -32.3866
margin_top = -64.916
margin_right = 31.6134
margin_bottom = -50.916
text = "can_attack"
align = 1
__meta__ = {
"_edit_use_anchors_": false
}
    GDSC         )   �      ������������τ�   ���������������򶶶�   ��������������   �������϶���   ��������ض��   ��������������Ӷ   �������Ŷ���   �������Ŷ���   �������ض���   ��������������Ӷ   ���������������Ŷ���   ����׶��   ��������ض��   ���������������Ӷ���   �������Ķ���   ���Ӷ���   �������Ӷ���   ������������Ŷ��   �     �            d         U                D         L         R         UL        UR        DL        DR     	   NormalBox      	   ../Player         can_teleport                                                 #   	   '   
   +      ,      2      =      A      G      H      O      S      V      `      c      l      o      y      |      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   3YY:�  Y;�  �  Y;�  �  PQY;�  �  YY0�  P�  R�  QV�  �  �  �  �  �  YY0�	  PQV�  �  �  P�  R�  Q�  �  �  �  �  �  PQYY0�
  P�  QV�  /�  V�  �  V�  �  �  P�  R�  Q�  �  V�  �  �  P�  R�  Q�  �  V�  �  �  P�  R�  Q�  �  V�  �  �  P�  R�  Q�  �	  V�  �  �  P�  R�  Q�  �
  V�  �  �  P�  R�  Q�  �  V�  �  �  P�  R�  Q�  �  V�  �  �  P�  R�  Q�  ;�  �  P�  �  Q�  &�  V�  /�  T�  T�  V�  �  V�  �  �  PQ�  �  P�  QT�  �  Y`              [gd_scene load_steps=4 format=2]

[ext_resource path="res://icon.png" type="Texture" id=1]
[ext_resource path="res://Scenes/Projectile/Projectile.gd" type="Script" id=2]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 20, 20 )

[node name="Projectile" type="KinematicBody2D"]
script = ExtResource( 2 )

[node name="Sprite" type="Sprite" parent="."]
modulate = Color( 0.576471, 0.0666667, 0.152941, 1 )
scale = Vector2( 0.8, 0.8 )
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )
           [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST@   @           9  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx�ݜytTU��?��WK*�=���%�  F����0N��݂:���Q�v��{�[�����E�ӋH���:���B�� YHB*d_*�jyo�(*M�JR!h��S�T��w�߻���ro���� N�\���D�*]��c����z��D�R�[�
5Jg��9E�|JxF׵'�a���Q���BH�~���!����w�A�b
C1�dB�.-�#��ihn�����u��B��1YSB<%�������dA�����C�$+(�����]�BR���Qsu][`
�DV����у�1�G���j�G͕IY! L1�]��� +FS�IY!IP ��|�}��*A��H��R�tQq����D`TW���p\3���M���,�fQ����d��h�m7r�U��f������.��ik�>O�;��xm��'j�u�(o}�����Q�S�-��cBc��d��rI�Ϛ�$I|]�ơ�vJkZ�9>��f����@EuC�~�2�ym�ش��U�\�KAZ4��b�4������;�X婐����@Hg@���o��W�b�x�)����3]j_��V;K����7�u����;o�������;=|��Ŗ}5��0q�$�!?��9�|�5tv�C�sHPTX@t����w�nw��۝�8�=s�p��I}�DZ-̝�ǆ�'�;=����R�PR�ۥu���u��ǻC�sH`��>�p�P ���O3R�������۝�SZ7 �p��o�P!�
��� �l��ހmT�Ƴێ�gA��gm�j����iG���B� ܦ(��cX�}4ۻB��ao��"����� ����G�7���H���æ;,NW?��[��`�r~��w�kl�d4�������YT7�P��5lF�BEc��=<�����?�:]�������G�Μ�{������n�v��%���7�eoݪ��
�QX¬)�JKb����W�[�G ��P$��k�Y:;�����{���a��&�eפ�����O�5,;����yx�b>=fc�* �z��{�fr��7��p���Ôִ�P����t^�]͑�~zs.�3����4��<IG�w�e��e��ih�/ˆ�9�H��f�?����O��.O��;!��]���x�-$E�a1ɜ�u�+7Ȃ�w�md��5���C.��\��X��1?�Nغ/�� ��~��<:k?8��X���!���[���꩓��g��:��E����>��꩓�u��A���	iI4���^v:�^l/;MC��	iI��TM-$�X�;iLH���;iI1�Zm7����P~��G�&g�|BfqV#�M������%��TM��mB�/�)����f����~3m`��������m�Ȉ�Ƽq!cr�pc�8fd���Mۨkl�}P�Л�汻��3p�̤H�>+���1D��i�aۡz�
������Z�Lz|8��.ִQ��v@�1%&���͏�������m���KH�� �p8H�4�9����/*)�aa��g�r�w��F36���(���7�fw����P��&�c����{﹏E7-f�M�).���9��$F�f r �9'1��s2).��G��{���?,�
�G��p�µ�QU�UO�����>��/�g���,�M��5�ʖ�e˃�d����/�M`�=�y=�����f�ӫQU�k'��E�F�+ =΂���
l�&���%%�������F#KY����O7>��;w���l6***B�g)�#W�/�k2�������TJ�'����=!Q@mKYYYdg��$Ib��E�j6�U�,Z�鼌Uvv6YYYԶ��}( ���ߠ#x~�s,X0�����rY��yz�	|r�6l����cN��5ϑ��KBB���5ϡ#xq�7�`=4A�o�xds)�~wO�z�^��m���n�Ds�������e|�0�u��k�ٱ:��RN��w�/!�^�<�ͣ�K1d�F����:�������ˣ����%U�Ą������l{�y����)<�G�y�`}�t��y!��O@� A� Y��sv:K�J��ՎۣQ�܃��T6y�ǯ�Zi
��<�F��1>�	c#�Ǉ��i�L��D�� �u�awe1�e&')�_�Ǝ^V�i߀4�$G�:��r��>h�hݝ������t;)�� &�@zl�Ұր��V6�T�+����0q��L���[t���N&e��Z��ˆ/����(�i啝'i�R�����?:
P].L��S��E�݅�Á�.a6�WjY$F�9P�«����V^7���1Ȓ� �b6�(����0"�k�;�@MC���N�]7 �)Q|s����QfdI���5 ��.f��#1���G���z���>)�N�>�L0T�ۘ5}��Y[�W뿼mj���n���S?�v��ْ|.FE"=�ߑ��q����������p����3�¬8�T�GZ���4ݪ�0�L�Y��jRH��.X�&�v����#�t��7y_#�[�o��V�O����^�����paV�&J�V+V��QY����f+m��(�?/������{�X��:�!:5�G�x���I����HG�%�/�LZ\8/����yLf�Æ>�X�Єǣq���$E������E�Ǣ�����gێ��s�rxO��x孏Q]n���LH����98�i�0==���O$5��o^����>6�a� �*�)?^Ca��yv&���%�5>�n�bŜL:��y�w���/��o�褨A���y,[|=1�VZ�U>,?͑���w��u5d�#�K�b�D�&�:�����l~�S\���[CrTV�$����y��;#�������6�y��3ݸ5��.�V��K���{�,-ւ� k1aB���x���	LL� ����ңl۱������!U��0L�ϴ��O\t$Yi�D�Dm��]|�m���M�3���bT�
�N_����~uiIc��M�DZI���Wgkn����C��!xSv�Pt�F��kڨ��������OKh��L����Z&ip��
ޅ���U�C�[�6��p���;uW8<n'n��nͽQ�
�gԞ�+Z	���{���G�Ĭ� �t�]�p;躆 ��.�ۣ�������^��n�ut�L �W��+ ���hO��^�w�\i� ��:9>3�=��So�2v���U1z��.�^�ߋěN���,���� �f��V�    IEND�B`�           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
[remap]

path="res://Scenes/Player/Player.gdc"
 [remap]

path="res://Scenes/Projectile/Projectile.gdc"
         �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      application/config/name         tonk prototype     application/run/main_scene(         res://Scenes/Levels/Level1.tscn    application/config/icon         res://icon.png     input/ui_select               deadzone      ?      events              InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script         input/ui_focus_next(              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script            InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script         input/ui_left�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script            InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script            InputEventJoypadMotion        resource_local_to_scene           resource_name             device            axis       
   axis_value       ��   script         input/ui_right�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script            InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script            InputEventJoypadMotion        resource_local_to_scene           resource_name             device            axis       
   axis_value       �?   script         input/ui_up�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script            InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script            InputEventJoypadMotion        resource_local_to_scene           resource_name             device            axis      
   axis_value       ��   script         input/ui_down�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script            InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script            InputEventJoypadMotion        resource_local_to_scene           resource_name             device            axis      
   axis_value       �?   script         input/ui_page_up(              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script            InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script      )   physics/common/enable_pause_aware_picking         $   rendering/quality/driver/driver_name         GLES2   %   rendering/vram_compression/import_etc         &   rendering/vram_compression/import_etc2          )   rendering/environment/default_environment          res://default_env.tres    