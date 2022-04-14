import 'package:dicoding/mainScreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wisata Bandung',
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'SF'
      ),
      home: MainScreen()
    );
  }
}
