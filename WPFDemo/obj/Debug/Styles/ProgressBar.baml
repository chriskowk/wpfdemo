   M S B A M L   `   `   `  ����B  >WPFDemo, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:WPFDemoWPFDemo  5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089  �� 
TargetType �� Property �� Value �� 
TargetType � RowDefinitions'   !System.Windows.VisualStateManager    VisualStateGroups%  System.Windows.VisualStateGroup   States   System.Windows.VisualState   
Storyboard g� RepeatBehavior	 �� 
TargetName
 �� TargetProperty8  2System.Windows.Media.Animation.EasingPointKeyFrame $� KeyTime $� Value �� CornerRadius J� Opacity ��Name �Name � ColumnDefinitions ��Name J� RenderTransformOrigin �� ScaleY �� ScaleX �� AngleY �� AngleX �� Angle (� StretchDirection J� SnapsToDevicePixels �� RelativeSource �� Path �� StringFormat �� Triggers P� Property  P� Value! �� 
TargetName�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     5      localclr-namespace:WPFDemo  5      %	  '�       �� 5      "  �6   .�5   
   ��  �@�FocusVisualStyle 6-   Z� �� 5   
    �@J�SnapsToDevicePixels . 60   �� 5   
    � ��$ 15��6#   �� 5   
    � �� �#6fae5f6'   �� 5	   
    � ��$ 10(�6%   �� 5
   
    � ��$	 5,0q�6$   �� 5   
    � �� 5      �� 5      " �6"   .R�5      � ���	#00000000 5      �� 5      $
��Auto �6,    5        5      CommonStates��. 5   "     Determinate��6.     5   "   Indeterminate��. 5   &   �� $ Forever��61   .��5   *   *� $	 	Animation��6G   $'
 !(UIElement.RenderTransformOrigin)�6i   .'�5   .     $ 0:0:0��6B   $ 0.5,0.5&�6R     5   .   $ 0:0:1.5��6B   $ 1.95,0.5&�6T     5   .   $ 0:0:3��6B   $ 0.5,0.5&�6R   5   +   5   '   5   #   5      .+�5!      � #��z��6   .+�5"      �� ���#000000$	 7.5��6:   $
 0.05Q�6M   �� 5#      ���#000000$��1q�6;   $	 7.5��6O   $	 0.1Q�6b   � 5$      #��z��6#   .+�5%   "   �� $ 
PART_Track��6)   � 5&   "   $ PART_Indicator��6'   }�. $
��Left=�6S    5'   &   �� 5(   *   $ width1��6;   �� 5)   *   $ width2��6;   $��0 �6K   .+�5+   &   � $ 	Animation��6+   $ 0.5,0.5&�6?   z�5,   *   V� 5-   .   .~�5.   2   �� $ -1Q�6A   $ 1Q�6M   �� 5/   2   $ 0Q�6@   $ 0Q�6K   �� 50   2   $	 180Q�6B   T� 51   2   52   /   .+�54   *   �� #��z��61   $	 7.5��6[   ._�55   .   (� $
��Left=�66   $ DownOnly=�6Q   #��z��6m    . .��56   2   �� ���#ffffff . #��z��6l   $��Center=�6�   $ 0.5,0.5&�6  ��6�   ��  �� *TemplatedParent+$ Value�$
 {0}%��z�57   6   V� 58   :   .~�59   >   �� $ 1Q�6M   $ -1Q�6X   �� 5:   >   $ 0Q�6L   $ 0Q�6W   �� 5;   >   $ 0Q�6N   T� 5<   >   5=   ;   5?   3   5@   /   5A   +   �� 5B   *   ���#000000$��1q�6G   $	 7.5��6[   $	 0.1Q�6n   5C   '   5D   #   5E      5F      5G       5H      P� 5J       � {�  .  . �5K      ��  � �� �#c5c5c56;   5L      P� 5M       �@�IsIndeterminate  . . �5N      �� $! width1��6%    � ��$ 0.25* �6J   �� 5O      $! width2��6%    � ��$ 0.725* �6J   5P      5R      5T      5U      5V      