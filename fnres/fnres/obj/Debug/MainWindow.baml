   M S B A M L   `   `   `  ����	  fnres    fnres.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   M IModernWpf.Controls, Version=0.9.6.0, Culture=neutral, PublicKeyToken=nullD @ModernWpf, Version=0.9.6.0, Culture=neutral, PublicKeyToken=null,ui!http://schemas.modernwpf.com/2019   5   	   -   5          � Title$  fnres��5   	   $	��350��5	   	   $	��500��6    � WindowStyle$
 None=�5
   	    � 
ResizeMode$ NoResize=�5   	    � AllowsTransparency .  � WindowStartupLocation$ CenterScreen=�5   	   
������   ModernWpf.ThemeManager   RequestedTheme$
 Dark=�5   	   .��5      �� -   5         �� CornerRadius$ 20��5       J� Opacity$	 .99Q�6      MainBGBrush#��[  6-   ._�5   
   � .+�5      �� -   5         ��Name$ CloseButton��5   �   	 K� ZIndex$	 10��6   
 � ToolTip$

 Exit��6'   $��	0,15,15,0q�6P   $��Right=�6c   $	��Top=�6     	TopbarBtn#��[ 6�   $��Segoe Fluent Icons)�6�   $��Center=�6�   $��Center=�6  $��2��65  ��5      �� 5      $	����6   
�������$��1.4,1.3,0,0q�6B   $��20(�6W   5      �� 5      $
��Left=�6   $	��Top=�6/   $��fnres��6G   
�������$��18(�6j   $��Segoe UI Semibold)�6x   $��	15,15,0,0q�6�   $��2��6�   �� 5      $��0,0,150,225q�6   $��Width��6)   
�������$��14(�6L   $��Center=�6Z   $��Center=�6w   �� 5      -   5         ��Name$ WidthBox��5   R    �� 	MaxLength$ 4��6    �� MaxLines$ 1��6$   $
��1920��61   $��0,0,150,150q�6=   $��Center=�6d   $��Center=�6�   $	��125��6�   $��30��6�   
�������6�   �� 5      $��150,0,0,225q�6   $��Height��6)   
�������$��14(�6M   $��Center=�6[   $��Center=�6x   �� 5       -   5        $ 	HeightBox��5    R   $ 4��6   $ 1��6$   $
��1080��61   $��150,0,0,150q�6=   $��Center=�6e   $��Center=�6�   $	��125��6�   $��30��6�   
�������6�   �� 5"      $��Window Mode��6   $��Center=�6*   $��Center=�6G   $��0,0,0,65q�6b   �� 5#      -   5         ��Name$ ModeBox��5#       �� SelectedIndex$ 0��6(   $��0,15,0,0q�6:   $��Center=�6L   $��Center=�6i   $��40��6�   $	��269��6�   $��0q�6�   .@�5$      �� $��
Fullscreen��6   �� 5%      $��Windowed Fullscreen��6   �� 5&      $��Windowed��6   5'      �� 5)      $��0,110,150,0q�6   $��	FPS Limit��6)   
�������$��14(�6P   $��Center=�6^   $��Center=�6{   �� 5*      -   5        $ FPSBox��5*   h   $
 0 for no limit��6   $ 5��6/   $ 1��6=   $��0��6J   $��0,175,150,0q�6S   $��Center=�6x   $��Center=�6�   $	��125��6�   $��30��6�   
�������6�   �� 5,      -   5         ��Name$ LowLatencyMode��5,      $��Low Latency Mode��6/   $��Center=�6J   $��Center=�6g   $��150,175,0,0q�6�   �� 5.      -	   5        $ ApplyButton��5.   d   $0
 *Applies the settings and enables read-only��6     AccentBrush#��[ 6y   $��Apply��6�   $��Center=�6�   $��Bottom=�6�   $	��230��6�   $��0,0,0,20q�6�   5/      50      51      