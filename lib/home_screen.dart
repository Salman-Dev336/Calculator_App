// ignore_for_file: sized_box_for_whitespace, sort_child_properties_last

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
      // backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              Mybutton(),
              Mybutton(),
              Mybutton(),
              Mybutton(),
              Mybutton(),

            ],
          ),
        ),
      ),
    );
  }
}
class Mybutton extends StatelessWidget {
  const Mybutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
                  child: Center(child: Text("Login",
                  style: headingStyle,),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                     color: Colors.deepOrange,
                  ),
                  height: 50,
                 
                ),
    );
  }
}
