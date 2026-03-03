// ignore_for_file: unused_import, sized_box_for_whitespace, sort_child_properties_last

import 'package:calculator_app/components/my_button.dart';
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Row(
                children: [
                      Mybutton(title: 'AC'),
                          Mybutton(title: '+/-',),
                              Mybutton(title: '%',),
                                  Mybutton(title: '/', color: Colors.orange,),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
