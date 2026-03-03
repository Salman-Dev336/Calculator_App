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
              SizedBox(
                height: 10,
              ),
              Container(
                child: Center(child: Text("Login",
                style: headingStyle,),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                   color: Colors.orange,
                ),
                height: 50,
               
              ),
              SizedBox(
                height: 10,
              ),
               Container(
                child: Center(child: Text("Sign Up",
                style: headingStyle,),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                   color: Colors.orange,
                ),
                height: 50,
               
              ),
              SizedBox(
                height: 10,
              ),
               Container(
                child: Center(child: Text("Verify Account",
                style: headingStyle,),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                   color: Colors.orange,
                ),
                height: 50,
               
              ),
              SizedBox(
                height: 10,
              ),
               Container(
                child: Center(child: Text("Forgot Password",
                style: headingStyle,),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                   color: Colors.orange,
                ),
                height: 50,
               
              ),
            ],
          ),
        ),
      ),
    );
  }
}
