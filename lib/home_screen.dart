import 'package:calculator_app/constant.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Text(
              "Salman Khan",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: greyColor,
              ),
            ),
            Text(
              "Salman Khan",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: purpleColor,
              ),
            ),
            
            Text(
              "Salman Khan",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color:purpleColor,
              ),
            ),
            Text(
              "Salman Khan",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color:purpleColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
