   M S B A M L   `   `   `  ����H  DE-ClassRecord, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:E_ClassRecord.ViewE_ClassRecord.View  5   	   A%clr-namespace:E_ClassRecord.ViewModelE_ClassRecord.ViewModel  5   	   K*clr-namespace:E_ClassRecord.CustomControlsE_ClassRecord.CustomControls  6A   "    E_ClassRecord.View.LoginPage   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   2local clr-namespace:E_ClassRecord.View     5   	   ;	ViewModel%clr-namespace:E_ClassRecord.ViewModel     5   	   Ecustomcontrols*clr-namespace:E_ClassRecord.CustomControls     6A   -   5          � Title$  	LoginPage��5	   	   $	��550��6   $	��800��6(    � WindowStartupLocation$ CenterScreen=�5
   	    � 
ResizeMode$ NoResize=�5   	    � WindowStyle$
 None=�5   	   
������  � AllowsTransparency .  � DataContext 5      ,   &E_ClassRecord.ViewModel.LoginViewModel  5   
    � 	Resources 5         BooleanToVisibility��%   &	        �� 5   
   6'   5      y�5      �� 5   
    �� Path$ IsViewVisible�6    �� Mode$ TwoWay=�6'   	 �� 	Converter#	 [  65   .��5      �� 
 �� CornerRadius$
 12��6   ��5   
   �� 5       �� ImageSource$ /Images/bg.png��6    j� Stretch$ UniformToFill=�66   ._�5!   
   �� $
 10��6   $��2q�5"       J� Opacity$
 0.90Q�5#      ��5%      �� 5&       �� 
StartPoint$	 0,0&�6&    �� EndPoint$	 1,1&�67   .��5'      �  � Color$ #579BE4��6#    � Offset$ 0Q�63   6@   � 5(      $ #FCAB5E��6#   $
 0.75Q�63   6C   � 5)      $ #8A70D6��6#   $ 1Q�63   6@   5*      ��5-      �� 5.      $	 0,1&�6&   $	 1,0&�67   .��5/      � $ #FBFBFC��6#   $ 0Q�63   6@   � 50      $ #e9e3ff��6#   $ 1Q�63   6@   51      ._�54      �  � RowDefinitions 55      �� 56      $��30 �6$   �� 57      .+�5:      �  � ColumnDefinitions 5;      �� 5<      �� 5=      $��25 �6+   �� 5>      $��25 �6+   �� 5?      $��5 �6+   .+�5C      �� $��Beta Version 1.0��6    
���   �$��10(�5E       $
��Lato)�5F       $��0��5G       $��Center=�5H       $��10 0 0 0q�5I       �� 5L      -   5         ��Name$ btnMinimize��5L      $��0q�5M      $��-��5N      
�������$��16(�5P      $��
Montserrat)�5Q       � Cursor$
 Hand��5R      $��1��5S      ��5V      �� 5W       �� 
TargetType" ��6$   .�5X   "   ��  �� Property � �� �� Value �#28AEED6?    �� Triggers 5Y   "   P� 5Z   &    P� Property �@J�IsMouseOver P� Value . . �5[   *   ��  � �� �#278BEF6G   5\   '   5^      ��5a      �� 5b       �� 
TargetType" ��6.   .R�5c   "   �� $��18��6)   $��18��5d   )   $
 9��5e   )   #��z��5f   )   ._�5h   &   �� $��Center=�67   $��Center=�5i   7   5k   #   5l      5n      �� 5r      -   5        $ btnClose��5r      $��0q�5s      $��X��5t      
�������$��12(�5v      $��
Montserrat)�5w      $
 Hand��5x      $��2��5y      ��5}      �� 5~      " ��6$   .�5   "   ��  � ��
 ����6?    5�   "   P� 5�   &    �@J�IsMouseOver . . �5�   *   ��  � ��
 �  ��6G   5�   '   5�      ��5�      �� 5�      " ��6.   .R�5�   "   �� $��18��6)   $��18��5�   )   $
 9��5�   )   #��z��5�   )   ._�5�   &   �� $��Center=�67   $��Center=�5�   7   5�   #   5�      5�      5�      �� 5�      $	��250��6   $��2��5�      $��0 35 0 0q�5�      .+�5�      �� $��/Images/wccs.png��6   $	��100��5�      $	��100��5�      �� 5�      $��West City Central��6    
���   �$��26(�5�       $��Medium"�5�       $��
Lato Black)�5�       $��Center=�5�       �� 5�      $��E - Class  Record  System��6    
�������$��20(�5�       $��Medium"�5�       $��
Lato Black)�5�       $��Center=�5�       $��0 5 0 0q�5�       �� 5�      $��Username��6    
���   �$��13(�5�       $��Medium"�5�       $��
Lato Black)�5�       $��0 35 0 0q�5�       �� 5�      -   5         ��Name$ txtUsername��5�      $��13(�5�      $��Medium"�5�      $��
Montserrat)�5�      
���   � �� 
CaretBrush
 �   �
�������$��0 0 0 2q�5�      $��28��5�      $��Center=�5�      $��0 5 0 0q�5�      $��20 0 0 0q�5�      ��5�      �� *
Username+ �� UpdateSourceTrigger$ PropertyChanged=�.��5�   W   ��5�      �� 5�      $ /Images/user-icon.png��6)   $
 None=�5�   )     j� 
AlignmentX$
  Left=�5�   )   .��5�   .   5�      �� 5�      $��Password��6    
���   �$��13(�5�       $��Medium"�5�       $��
Lato Black)�5�       $��0 15 0 0q�5�       6   0E_ClassRecord.CustomControls.BindablePasswordBox  5�      $��28��5�      $��0 5 0 0q�5�      !   Password! 5�      �� *
Password+$ TwoWay=�$ PropertyChanged=�5�      �� 5�      ���#D7596D$��13(�5�       $��Medium"�5�       $��
Lato Black)�5�       $��0 10 0 0q�5�       $
��Wrap=�5�       ��5�       �� *ErrorMessage+5�       �� 5�      -   5        $ 	btnSubmit��5�      $��0q�5�      $��LOG IN��5�      
�������$��12(�5�      $��
Montserrat)�5�      $
 Hand��5�      $��2��5�      $��0 30 0 0q�5�      ��5�      �� *LoginCommand+��5�      �� 5�      " ��6$   .�5�   "   ��  � �� �#8A70D66?    5�   "   P� 5�   &    �@J�IsMouseOver . . �5�   *   ��  � �� �#7051D66G   5   '   5     ��5     �� 5     " ��6.   .R�5  "   �� $	��150��6)   $��40��5  )   $
 10��5	  )   #��z��5
  )   ._�5  &   �� $��Center=�67   $��Center=�5  7   5  #   5     5     �� 5     " �� Orientation$" 
Horizontal=�6!   $��Center=�5      $��0 15 0 0q�5  !   .+�5     �� $��Forgot Password?��6$   
�������$��12(�5      $��Medium"�5      $��	Lato Thin)�5      �� 5     $��Reset��6$   
���   �$��12(�5      $��Medium"�5       $��	Lato Thin)�5!      $
 Hand��5"      $��8 0 0 0q�5#      5$     5'     5(     5)     5*     5,     