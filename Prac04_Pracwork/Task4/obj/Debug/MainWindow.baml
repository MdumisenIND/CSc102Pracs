   M S B A M L   `   `   `  ����@  <Task4, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:Task4Task4  5   	       Task4.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   %localclr-namespace:Task4     5   	     � Title$  Turtles and Shapes��5   	   $	��507��6$   $
��1099��61   .��5	      �  � ColumnDefinitions 5
   
   �� 5      $	��15* �6   �� 5      $
��956* �6   .+�5   
   �� -   5         ��Name$ canvas��5      $��Stretch=�6!   $
��Auto��6?   $��12,70,27,10q�6M   $��Stretch=�6b   $
��Auto��6~   ���	#FF0CF1DD$��1��6�   �� 5   
   -   5         ��Name$ btnTriangles��5      $��Draw Triangles��6'   $
��Left=�6@   $��	12,35,0,0q�6[   $	��Top=�6n   $	��108��6�   $��30��6�   $
��Bold"�6�   $��1��6�    � ToolTip$` ZDraws the pattern of interlocking triangles a number of times depending on combo box value��6�   �� 5   
   -   5         ��Name$ cmbNum��5      $
��Left=�6#   $��
324,35,0,0q�6>   $	��Top=�6R   $	��120��6j   $
��Bold"�6v   $��14(�6�   $��1��6�   $5 /Selects the number of times to draw the pattern��6�   .@�5      �� -   5        $��1��5      6'   �� 5      $��2��6   �� 5      $��3��6   �� 5      $��4��6   �� 5      $��5��6   5      �� 5   
   -   5         ��Name$ lblNumPatterns��5      $��Number:��6(   $
��Left=�6:   $��
255,32,0,0q�6U   $	��Top=�6i   $
��Bold"�6�   $��14(�6�   $��1��6�   �� 5   
   -   5        $ btnClear��5      $��Clear��6#   $
��Left=�63   $��
140,35,0,0q�6N   $	��Top=�6b   $��85��6z   $��30��6�   $
��Bold"�6�   $��1��6�   $- 'Clears the canvas and returns tess home��6�   5      5      