import 'package:calculator_app/home_screen.dart';
import 'package:flutter/material.dart';

void main(){
  // runApp(MyApp());
  print('hello world');
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}