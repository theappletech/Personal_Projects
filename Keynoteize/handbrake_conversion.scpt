FasdUAS 1.101.10   ��   ��    k             l     ��  ��    G Aon adding folder items to this_folder after receiving these_items     � 	 	 � o n   a d d i n g   f o l d e r   i t e m s   t o   t h i s _ f o l d e r   a f t e r   r e c e i v i n g   t h e s e _ i t e m s   
  
 l    � ����  t     �    O    �    k    �       l   ��  ��    ^ XGet all AVI and MKV files that have no label color yet, meaning it hasn't been processed     �   � G e t   a l l   A V I   a n d   M K V   f i l e s   t h a t   h a v e   n o   l a b e l   c o l o r   y e t ,   m e a n i n g   i t   h a s n ' t   b e e n   p r o c e s s e d      r    .    6   ,    n        2    ��
�� 
file  n         1    ��
�� 
ects   l    !���� ! c     " # " m    	 $ $ � % % d M a c i n t o s h   H D : U s e r s : b s n y d e r : D e s k t o p : u n t i t l e d   f o l d e r # m   	 
��
�� 
alis��  ��    l   + &���� & F    + ' ( ' l   " )���� ) G    " * + * =    , - , 1    ��
�� 
nmxt - m     . . � / /  m 4 v + =   ! 0 1 0 1    ��
�� 
nmxt 1 m      2 2 � 3 3  m k v��  ��   ( =  # * 4 5 4 1   $ &��
�� 
labi 5 m   ' )����  ��  ��    o      ���� 0 allfiles allFiles   6 7 6 l  / /��������  ��  ��   7  8 9 8 l  / /�� : ;��   : * $Repeat for all files in above folder    ; � < < H R e p e a t   f o r   a l l   f i l e s   i n   a b o v e   f o l d e r 9  =�� = Y   / � >�� ? @�� > k   > � A A  B C B r   > D D E D l  > B F���� F n   > B G H G 4   ? B�� I
�� 
cobj I o   @ A���� 0 i   H o   > ?���� 0 allfiles allFiles��  ��   E o      ���� 0 currentfile currentFile C  J K J l  E E��������  ��  ��   K  L�� L Q   E � M N O M k   H � P P  Q R Q l  H H�� S T��   S . (Set to gray label to indicate processing    T � U U P S e t   t o   g r a y   l a b e l   t o   i n d i c a t e   p r o c e s s i n g R  V W V r   H O X Y X m   H K����  Y n       Z [ Z 1   L N��
�� 
labi [ o   K L���� 0 currentfile currentFile W  \ ] \ l  P P��������  ��  ��   ]  ^ _ ^ l  P P�� ` a��   ` * $Assemble original and new file paths    a � b b H A s s e m b l e   o r i g i n a l   a n d   n e w   f i l e   p a t h s _  c d c r   P _ e f e n   P [ g h g 1   W [��
�� 
strq h n   P W i j i 1   S W��
�� 
psxp j l  P S k���� k c   P S l m l o   P Q���� 0 currentfile currentFile m m   Q R��
�� 
alis��  ��   f o      ���� 0 origfilepath origFilepath d  n o n r   ` } p q p b   ` y r s r l  ` u t���� t c   ` u u v u n   ` q w x w 7  c q�� y z
�� 
cha  y m   i k����  z m   l p������ x o   ` c���� 0 origfilepath origFilepath v m   q t��
�� 
TEXT��  ��   s m   u x { { � | |  m p 4 ' q o      ���� 0 newfilepath newFilepath o  } ~ } l  ~ ~��������  ��  ��   ~   �  l  ~ ~�� � ���   �  Start the conversion    � � � � ( S t a r t   t h e   c o n v e r s i o n �  � � � r   ~ � � � � b   ~ � � � � b   ~ � � � � b   ~ � � � � b   ~ � � � � m   ~ � � � � � � H n i c e   / u s r / l o c a l / b i n / H a n d B r a k e C L I   - i   � o   � ����� 0 origfilepath origFilepath � m   � � � � � � �    - o   � o   � ����� 0 newfilepath newFilepath � m   � � � � � � ��   - e   x 2 6 4   - b   2 0 0 0   - w   9 6 0   - a   1   - E   f a a c   - B   1 6 0   - R   4 8   - 6   d p l 2   - f   m p 4   - - c r o p   0 : 0 : 0 : 0   - x   l e v e l = 4 0 : r e f = 2 : m i x e d - r e f s : b f r a m e s = 3 : w e i g h t b : s u b m e = 9 : d i r e c t = a u t o : b - p y r a m i d : m e = u m h : a n a l y s e = a l l : n o - f a s t - p s k i p : f i l t e r = - 2 , - 1   ; � o      ���� 0 shellcommand shellCommand �  � � � I  � ��� ���
�� .sysoexecTEXT���     TEXT � o   � ����� 0 shellcommand shellCommand��   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � 8 2Set the label to green in case file deletion fails    � � � � d S e t   t h e   l a b e l   t o   g r e e n   i n   c a s e   f i l e   d e l e t i o n   f a i l s �  � � � r   � � � � � m   � �����  � n       � � � 1   � ���
�� 
labi � o   � ����� 0 currentfile currentFile �  � � � l  � ���������  ��  ��   �  ��� � l  � ���������  ��  ��  ��   N R      �� ���
�� .ascrerr ****      � **** � o      ���� 
0 errmsg  ��   O k   � � � �  � � � l  � ��� � ���   � . (Set the label to red to indicate failure    � � � � P S e t   t h e   l a b e l   t o   r e d   t o   i n d i c a t e   f a i l u r e �  ��� � r   � � � � � m   � �����  � n       � � � 1   � ���
�� 
labi � o   � ����� 0 currentfile currentFile��  ��  �� 0 i   ? m   2 3����  @ n   3 9 � � � m   6 8��
�� 
nmbr � n  3 6 � � � 2  4 6��
�� 
cobj � o   3 4���� 0 allfiles allFiles��  ��    m     � ��                                                                                  MACS  alis    t  Macintosh HD               ��H+     I
Finder.app                                                      �Y�\s2        ����  	                CoreServices    �'      �\�r       I   C   B  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��    l     ����� � ]      � � � m     ����� � m    ���� <��  ��  ��  ��     ��� � l     �� � ���   �   end adding folder items to    � � � � 4 e n d   a d d i n g   f o l d e r   i t e m s   t o��       �� � ���   � ��
�� .aevtoappnull  �   � **** � �� ����� � ���
�� .aevtoappnull  �   � **** � k     � � �  
����  ��  ��   � ������ 0 i  �� 
0 errmsg   � !���� � $������ ��� . 2������������������������ {� � � ��~�}�|�{�z����� <
�� 
alis
�� 
ects
�� 
file �  
�� 
nmxt
�� 
labi�� 0 allfiles allFiles
�� 
cobj
�� 
nmbr�� 0 currentfile currentFile�� 
�� 
psxp
�� 
strq�� 0 origfilepath origFilepath
�� 
cha ����
�� 
TEXT� 0 newfilepath newFilepath�~ 0 shellcommand shellCommand
�} .sysoexecTEXT���     TEXT�| �{ 
0 errmsg  �z  �� ��� n� ���&�,�-�[[[�,\Z�8\[�,\Z�8B\[�,\Zj8A1E�O �k��-�,Ekh  ���/E�O da ��,FO��&a ,a ,E` O_ [a \[Zk\Za 2a &a %E` Oa _ %a %_ %a %E` O_ j Oa ��,FOPW X   l��,F[OY��Uo ascr  ��ޭ