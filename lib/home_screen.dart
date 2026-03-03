// ignore_for_file: unused_import, sized_box_for_whitespace, sort_child_properties_last

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
              Mybutton(title: 'Login'),
              Mybutton(title: 'Sign Up'),
              Mybutton(title: 'Forgot Password'),
              Mybutton(title: 'Help',),
              Mybutton(title: 'Feedback',),

            ],
          ),
        ),
      ),
    );
  }
}
class Mybutton extends StatelessWidget {
  final String title;
  const Mybutton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
                  child: Center(child: Text(title,
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  )),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                     color: Colors.deepOrange,
                  ),
                  height: 50,
                 
                ),
    );
  }
}
