   M S B A M L   `   `   `  ����@  <Task3, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:Task3Task3  5   	       Task3.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   %localclr-namespace:Task3     5   	     � Title$  Turtles and Shapes��5   	   $	��786��6$   $	��818��61    � 
ResizeMode$ NoResize=�6=   .��5	      � .+�5
   
   �� -   5         ��Name$ 	btnCircle��5
      $��Circle��6$   $
��Left=�65   $��	33,47,0,0q�6P   $	��Top=�6c   $��83��6{   $��34��6�   $
��Bold"�6�   �� 5   
   -   5         ��Name$ sliBrushWidth��5      $
��Left=�6(   $��
660,23,0,0q�6C   $	��Top=�6W   $	��133��6o    � Maximum$ 20Q�6�    � Minimum$ 1Q�6�    �� IsSnapToTickEnabled .  �� Interval$ 1��6�    J� 	AllowDrop . 	 �� TickPlacement$	 BottomRight=�6�   �� 5   
   -   5        
 ��Name$
 	lblSlider��5      $��Brush Width:��6#   $
��Left=�6:   $��
520,20,0,0q�6U   $	��Top=�6i   $	��135��6�   $��14(�6�   $
��Bold"�6�   �� 5   
   -   5        $
 lblWidth��5      $��Width value:��6"   $
��Left=�69   $��	662,0,0,0q�6T   $	��Top=�6g   $��84��6   $
��Bold"�6�   �� 5   
   -   5        $ btnClear��5      $��Clear��6#   $
��Left=�63   $��
260,48,0,0q�6N   $	��Top=�6b   $��93��6z   $��32��6�   $
��Bold"�6�    J� RenderTransformOrigin$ 0.355,0.562&�6�   �� 5   
   -   5        $ btnHouse��5      $��House��6#   $
��Left=�63   $��
141,48,0,0q�6N   $	��Top=�6b   $��94��6z   $��32��6�   $
��Bold"�6�   6�   �� 5   
   -   5        $
 lblSize��5      $��Size:��6!   $
��Left=�61   $��	30,10,0,0q�6L   $	��Top=�6_   $
��Bold"�6w   �� 5   
   -   5         ��Name$ cmbSize��5      $
��Left=�6$   $��	85,14,0,0q�6?   $	��Top=�6R   $	��120��6j   .@�5      �� -	   5         ��Name$ S��5      $��Small��6&   $
��Bold"�66   6H   �� 5      -
   5        $ M��5      $��Medium��6'   $
��Bold"�68   6J   �� 5      -   5        $ L��5      $��Large��6'   $
��Bold"�67   6I   5      �� 5   
   -   5         ��Name$ canvas��5      $
��Left=�6!   $	��640��6<   $��	30,95,0,0q�6I   $	��Top=�6\   $	��760��6t   ���	#FF94F57E6�   �� 5   
   -   5         ��Name$ Txtbox��5      $
��Left=�6~   $��19��6�   $��	746,4,0,0q�6�    �� TextWrapping$
 Wrap=�6�   $	��Top=�6�   $��44��6�   $ 0.149,-0.601&�6�    �� TextAlignment$ Center=�6  ��6"   ��  �� ElementName$ sliBrushWidth�� �� Path$ Value� �� UpdateSourceTrigger$ PropertyChanged=�6  5      5      