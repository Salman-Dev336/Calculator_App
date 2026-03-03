// ignore_for_file: avoid_print, unused_import, sized_box_for_whitespace, sort_child_properties_last

import 'package:calculator_app/components/my_button.dart';
import 'package:calculator_app/constant.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var userInput = '';
  var answer = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, ),
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    children: [
                      
                      Text(userInput.toString(), 
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Mybutton(
                          title: 'AC',
                          onpress: () {
                            print('tapped');
                          },
                        ),
                        Mybutton(
                          title: '+/-',
                          onpress: () {
                            print('tapped');
                          },
                        ),
                        Mybutton(
                          title: '%',
                          onpress: () {
                            print('tapped');
                          },
                        ),
                        Mybutton(
                          title: '/',
                          color: Colors.orange,
                          onpress: () {
                            print('tapped');
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Mybutton(
                          title: '7',
                          onpress: () {
                            print('tapped');
                          },
                        ),
                        Mybutton(
                          title: '8',
                          onpress: () {
                            print('tapped');
                          },
                        ),
                        Mybutton(
                          title: '9',
                          onpress: () {
                            print('tapped');
                          },
                        ),
                        Mybutton(
                          title: 'x',
                          color: Colors.orange,
                          onpress: () {
                            print('tapped');
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Mybutton(
                          title: '4',
                          onpress: () {
                            print('tapped');
                          },
                        ),
                        Mybutton(
                          title: '5',
                          onpress: () {
                            print('tapped');
                          },
                        ),
                        Mybutton(
                          title: '6',
                          onpress: () {
                            print('tapped');
                          },
                        ),
                        Mybutton(
                          title: '-',
                          color: Colors.orange,
                          onpress: () {
                            print('tapped');
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Mybutton(
                          title: '1',
                          onpress: () {
                            print('tapped');
                          },
                        ),
                        Mybutton(
                          title: '2',
                          onpress: () {
                            print('tapped');
                          },
                        ),
                        Mybutton(
                          title: '3',
                          onpress: () {
                            print('tapped');
                          },
                        ),
                        Mybutton(
                          title: '+',
                          color: Colors.orange,
                          onpress: () {
                            print('tapped');
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Mybutton(
                          title: '0',
                          onpress: () {
                            print('tapped');
                          },
                        ),
                        Mybutton(
                          title: '.',
                          onpress: () {
                            print('tapped');
                          },
                        ),
                        Mybutton(
                          title: 'DEL',
                          onpress: () {
                            print('tapped');
                          },
                        ),
                        Mybutton(
                          title: '=',
                          color: Colors.orange,
                          onpress: () {
                            print('tapped');
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
