   M S B A M L   `   `   `  ���� 	  fnres    fnres.MainWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     0ui!http://schemas.modernwpf.com/2019     -     � Title$  fnres��$	��350��$	��500�� � WindowStyle$
 None=� � 
ResizeMode$ NoResize=� � AllowsTransparency .  � WindowStartupLocation$ CenterScreen=�
������  � 	Resources  �� Color��%A   (��       *" SystemColors.ControlTextBrushKey+)�� $ Black��.���� -    �� CornerRadius$ 20�� J� Opacity$	 .99Q�   MainBGBrush#���   ._�� .+��� -   	 ��Name$	 CloseButton��
 K� ZIndex$
 10�� � ToolTip$
 Exit��$��	0,15,15,0q�$��Right=�$	��Top=�  	TopbarBtn#��[ $��Segoe Fluent Icons)�$��Center=�$��Center=�$��2������ $	����
�������$��1.4,1.3,0,0q�$��20(��� -   $	 ThemeButton��$
 10��$ Toggle theme��$��	0,15,65,0q�$��Right=�$	��Top=�#��[ $��Segoe Fluent Icons)�$��Center=�$��Center=�$��2������ -    ��Name$ 
ThemeLabel��$	����
�������$��1.4,1.3,0,0q�$��20(��� $
��Left=�$	��Top=�$��fnres��$��18(�$��Segoe UI Semibold)�$��	15,15,0,0q�$��2���� $��0,0,150,225q�$��Width��$��14(�$��Center=�$��Center=��� -    ��Name$ WidthBox�� �� 	MaxLength$ 4�� �� MaxLines$ 1��$
��1920��$��0,0,150,150q�$��Center=�$��Center=�$	��125��$��30���� $��150,0,0,225q�$��Height��$��14(�$��Center=�$��Center=��� -   $ 	HeightBox��$ 4��$ 1��$
��1080��$��150,0,0,150q�$��Center=�$��Center=�$	��125��$��30���� $��Window Mode��$��Center=�$��Center=�$��0,0,0,65q��� -    ��Name$ ModeBox��  theComboBox#��[   SecondaryBGBrush#���   �� SelectedIndex$ 0��$��0,15,0,0q�$��Center=�$��Center=�$��40��$	��269��$��0q�.@��� $��
Fullscreen���� $��Windowed Fullscreen���� $��Windowed���� $��0,110,150,0q�$��	FPS Limit��$��14(�$��Center=�$��Center=��� -	   $ FPSBox��$ 0 for no limit��$ 5��$ 1��$��0��$��0,175,150,0q�$��Center=�$��Center=�$	��125��$��30���� $��150,110,0,0q�$��Low Latency Mode��$��14(�$��Center=�$��Center=�d� -
    d�Name$ LowLatencyMode��  EnabledDisabledButton#��[ $��0q�$��Center=�$��Center=�$	��125��$��30��$��150,175,0,0q��� -   $	 ApplyButton��
�������  NormalButton#��[ $��35��$��0q�$��14(�$0 *Applies the settings and enables read-only��  AccentBrush#��[ $��Apply��$��Center=�$��Bottom=�$	��240��$��0,0,0,18q�