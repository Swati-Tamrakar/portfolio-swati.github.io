   M S B A M L   `   `   `  ����P  LTshirtStockMgtApp.App, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:TshirtStockMgtApp.App.ViewTshirtStockMgtApp.App.View  5   	   1    +TshirtStockMgtApp.App.View.TshirtDetailView   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   :local(clr-namespace:TshirtStockMgtApp.App.View     5   	   c _System.Windows.Interactivity, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5   
     � Title$  TshirtDetailView��5
   	   $��431.2��6"   $��1042.15��61    � DataContext 5	   	   ��    mainViewModelLocator �� Source# [   �� Path$ TshirtDetailViewModel�.��5      �� .��5   
   � $��0q�6   $	��403��6   
������� � ColumnDefinitions 5      �� 5      $	��150 �6#   61   �� 5      $��2* �6#   60   �� 5      $��* �6#   6/    � RowDefinitions 5      �� 5      $��65 �6    6.   �� 5      $��30 �6    6.   �� 5      $��30 �6    6.   �� 5      $��80 �6    6.   �� 5      $��30 �6    6.   �� 5      $��30 �6    6.   �� 5      $��30 �6    6.   �� 5      $��30 �6    6.   �� 5      $��50 �6    6.   .+�5      �� -   5        $��lblTshirtName��5   !   $��0��6   $��2��6[   $��40(�6o   $
��Bold"�6}   ��66   �� *ShortDescription+6�   �� 5      -   5        $��	imgTshirt��5      $��2��6%   $��10��5       $	��150��6'   $	��150��67   ��5   5   �� *SelectedTshirt.Image+  localImageConverter �� 	Converter# [ 5    H   �� 5!      $��1��6   $��	Tshirt Id��6!     
styleLabel#��[ 65   �� 5"      $��2��6   $
��Name��6!   #��[ 60   $��Center=�6T   �� 5#      $��3��6   $��Long Description��6!   #��[ 6<   �� 5$      $��4��6   $
��Size��6!   #��[ 60   �� 5%      $��5��6   $��Color��6!   #��[ 61   �� 5&      $��6��6   $��
Unit Price��6!   #��[ 66   $��2��6Z   �� 5'      $��7��6   $��Stock on Hand��6!   #��[ 69   �� 5)      -   5        $��txtTshirtID��5)   q   
�������$��1��6*   $��1��67   ��6G   �� *SelectedTshirt.TshirtID+6�   �� 5*      -   5        $��txtName��5*   y   
�������$��2��6*   $��1��67    �� AcceptsReturn . $��75��6�     styleTextBox#��[ 6�   ��6G   �� *!SelectedTshirt.ShortDescription+6�   �� 5+      -   5        $��txtLongDesc��5+   �   
�������$��3��6*   $��1��67    �� TextWrapping$
 Wrap=�6w   #��[ 6�   ��6G   �� * SelectedTshirt.LongDescription+6�   �� 5,      -   5        $��txtSize��5,   �   
�������$��4��6*   $��1��67   $
 Wrap=�6l   #��[ 6�   ��6G   �� *SelectedTshirt.Size+6�   �� 5-      -   5        $��txtColor��5-   �   
�������$��5��6*   $��1��67   $
 Wrap=�6m   #��[ 6�   ��6G   �� *SelectedTshirt.Color+6�   �� 5.      -   5        $��txtUnitPrice��5.   G   
�������$��6��6*   $��1��67   #��[ 6�   ��6[   �� *SelectedTshirt.UnitPrice+  localPriceConverter# [ 6�   �� 5/      -	   5        $��
txtInStock��5/   G   
�������$��7��6*   $��1��67   ��6Y   �� *SelectedTshirt.InStock+�� 51      $��10��6   	 �� Orientation$	 
Horizontal=�6'   $��2��6@   .+�52      �� -
   5        
 ��Name$
 btnSave��52      $��15,15,15,15.2q�6*   $��Save Tshirt��6A   $��14(�6W   .  (System.Windows.Interactivity.Interaction   Triggers 53      /  )System.Windows.Interactivity.EventTrigger  54         	EventName$ Click��6)   .  (System.Windows.Interactivity.TriggerBase   Actions. 56      6  0System.Windows.Interactivity.InvokeCommandAction     Command 64   �� *SaveCommand+57      59      �� 5:      -   5        $
 	btnDelete��5:      $��15,15,15,15.2q�6,   $��Delete Tshirt��6C   $��14(�6[    5;        5<      $ Click��6)   . 5=         64   �� *DeleteTshirt+5>      5@      5A      5C      5E      5F      