import 'dart:ui';

import 'package:bidayajdida/HomPage.dart';
import 'package:bidayajdida/First.dart';
import 'package:bidayajdida/dark.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(const MyWidget());
}
class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  

 
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
  valueListenable: isDark,
  builder: (context, dark, _) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: dark ? ThemeMode.dark : ThemeMode.light,
      home: Fisrd() ,  
    );
  },
) ; 
  } 
} 