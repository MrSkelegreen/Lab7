   M S B A M L   `   `   `  ����@  <Forum, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:ForumForum  5   	       
Forum.Menu   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   %localclr-namespace:Forum     5   	     � Title$  
Форум��5   	   $	��450��6   $	��820��6$   .��5	      �  � ColumnDefinitions 5
   
   �� 5      $	��127 �6   �� 5      $��226.133 �6   �� 5      $��151.867 �6   �� 5      $��67 �6   �� 5      $��53 �6   �� 5      $��18 �6   �� 5       � RowDefinitions 5   
   �� 5      $��35 �6   6*   �� 5      $��33 �6   6*   �� 5      $��31.822 �6   �� 5      $��* �6   .+�5   
   &   System.Windows.Controls.DataGrid  -   5        $��TaskGrid��5       $��3��6      AutoGenerateColumns$ False��60      CanUserAddRows$ False��6L      
IsReadOnly$
 True��6c   $��3��6�    �� SelectedItem 6u   �� *Task+   Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ ID��6%   	   Width5  /System.Windows.Controls.DataGridLengthConverter$	 25 61   1  +System.Windows.Controls.DataGridBoundColumn
   Binding
 6<   �� *Id+  5      $ Название��6%   $		 300 67   
 6C   �� *Tittle+  5      $ 
Автор��6%   $	 * 64   
 6>   �� *IdAuthorNavigation.Login+  5       $ Дата��6%   $	 90 63   
 6>   �� *Date+5"      �� 5$   
   -   5         ��Name$
 List��5$      $-��'Список пользователей��6   $��6��6>   $��0��6N   6p   �� 5%   
   -   5        $��
ProfileBtn��5%      $��Мой профиль��6#   $��3��69   $��2��6b   �� 5&   
   $��Пользователь:��6   $��3��6)   $��2��69   $
��Left=�6F   $��2��6a   $��2��6u   $��79��6�   �� 5'   
   $��6��6+   $��2��6;   ��6   �� *Login+6;   �� 5(   
   -   5        $��LoginBox��5(      �� 5)   
   -   5        $��	SearchBtn��5)      $��1��6#   $/��)Найти задачу по логину��63   $
��Left=�6T   6o   5*      5+      