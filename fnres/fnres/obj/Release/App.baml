   M S B A M L   `   `   `  ���� 	  fnres    	fnres.App   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     0ui!http://schemas.modernwpf.com/2019       �� 	Resources     MainBGBrush  SecondaryBGBrush  AccentBrush  ButtonAnimationStart �� TargetProperty	 �� To g� FillBehavior g� Duration g� AutoReverse g� RepeatBehavior  ButtonAnimationEnd �� 
TargetType �� Property	 �� Value
 �� 	Resources  	TopbarBtn �� 
TargetType �� CornerRadius �� Triggers P� Property P� Value N� EnterActions N� ExitActions  NormalButton  EnabledDisabledButton �� Triggers  ComboBoxToggleButton � ColumnDefinitions ��Name F�Name 	 ComboBoxTextBox 
 theComboBox � Cursor �� 	ClickMode d� 	IsChecked �� Path �� Mode �� RelativeSource J� IsHitTestVisible �� SelectionBoxItem �� SelectionBoxItemTemplate ��Name  �� 
IsReadOnly! �� 
IsReadOnly" �� IsDropDownOpen# � AllowsTransparency$ J� SnapsToDevicePixels% � ActualWidth& �� MaxDropDownHeight' K� IsItemsHost-  'System.Windows.Input.KeyboardNavigation(   DirectionalNavigation) �� 
TargetName  theComboBoxItem* �� Padding+ �� TextAlignment�� %�  &	        &	      &	 "     &	 3     &	 �     '��     &	 �    7  &	 �    &	 �    7  &	     &		 �    &	
 -    7  7 	 &	 �
    ��#f1f3f9����#d2daff����#7777ff���� .���� $2 ,(Control.Background).(SolidColorBrush.Color)�$ #4b4ba2X�$ HoldEnd=�$ 0:0:0.05D� .  $ 1x���� .���� $2 ,(Control.Background).(SolidColorBrush.Color)�$ HoldEnd=�$ 	0:0:0.125D� .  $ 1x���� " ��.���  � ��#	 �  ��  � ��$	 0q���  � ��$	 Center=���  � ��$	 Center=�
 ���� '��       " ��.���  �@��CornerRadius$	 8���� " ��.���  � ��$	 38����  � ��$	 38����  � ��8	   ��  � ��	 �� " ��.R��� $ 26��#��z��._��� #��z��#��z�� P�  � �� . . ���  �@J�Opacity$	 .4Q�P�  �@J�IsMouseOver .  �� #���   �� #���  �� " ��.���  � ��	 �� " ��.R��� $ 8��#��z��._��� #��z��#��z�� P�  � �� . . ���  �@J�Opacity$	 .4Q�P�  �@J�IsMouseOver .  �� #���   �� #���  �� " d�.���  � ��#	 �  ��  � ��	 �� " d�.R��� #��z��#��z��$ 8��._��� $��Center=�$��Center=� P�  �@J�IsMouseOver .  �� #���   �� #���   P�  �@d�	IsChecked$
 TrueY�. ���  � ��$	 Enabled����  � ��8	   ��  � ��
	 �����P�  �@d�	IsChecked$ FalseY�. ���  � ��$	 Disabled���� " d�.���  � ��	 �� " d�.R��  �� �� $��32 �.+��� $ Border��$��2��$ 8��#��z��
������ $��1q�F� $ Arrow��$��1��#��z��#��z��$��Center=�$��Center=�"����        � 	=  	= � z     	�� " ��.R��� $ PART_ContentHost��|�. �� " ��.���  � ��
	 ���� ��  � ��#	 �   ��  �@J�SnapsToDevicePixels	 . ��  �@�OverridesDefaultStyle	 . ��  � ��$
	 Auto=���  � ��$
	 Auto=���  � ��	 . ��  � ��$	 13(���  � ��$		 150����  � ��$	 35����  � ��	 �� " ��.R�� .+�d� $��ToggleButton��$
 Hand��
������ #��z��8��  $��2��|�.  $ Press=� �� $ IsDropDownOpen�$ TwoWay=� �� *TemplatedParent+�� $��ContentSite�� .  #��z #��z #��z��$��	10,3,30,3q�$��Center=�$
��Left=��� $ PART_EditableTextBox��8�� $
��Left=�$��Center=�$��3,3,23,3q�|�. $y�Hidden=�#! z  ��Z� � $��Popup��$��Bottom=�#��z" # . |�.  $��Slide=�.��� $��DropDown��$ . #��z% #��z& .+��� $ DropDownBorder��$ 8��#���  $��1q���Z� �� $��4,6,4,6q�$ . .���� ' . $( 	Contained=� P�  �@��HasItems .  . ��� $) DropDownBorder�� � ��$	 95��P�  �@��
IsGrouping . . ���  � ��	 .  P�  �@��
IsEditable . . ���  � ��	 .  �� $) PART_EditableTextBox�� � y�$	 Visible=��� $) ContentSite�� � y�$	 Hidden=� �� " ��.���  �@J�SnapsToDevicePixels	 . ��  � ��$	 Stretch=���  � ��$	 Stretch=���  � ��$	 13(���  �@�OverridesDefaultStyle	 . ��  � ��	 �� " ��.R��� $��Border��$* 5q�$��2q�$��2,0,0,0q�$ 0��
������ 
������ ._��� $
+ Left=��� 