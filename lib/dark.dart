import 'package:flutter/material.dart'; 
final ValueNotifier<bool> isDark = ValueNotifier(false);

ThemeData lightmode = ThemeData(
  brightness : Brightness.light
) ; 
ThemeData darkmode = ThemeData(
   brightness : Brightness.dark
) ; 