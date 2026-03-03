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
                        fontSize: 40,
                      ),
                      ),
                      Text(answer.toString(), 
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
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
                           userInput = '';
                           answer = '';
                           setState(() {  
                             
                           });
                          },
                        ),
                        Mybutton(
                          title: '+/-',
                          onpress: () {
                           userInput = '+/-';
                            setState(() {
                              
                            });
                          },
                        ),
                        Mybutton(
                          title: '%',
                          onpress: () {
                            userInput = '%';
                            setState(() {
                              
                            });
                          },
                        ),
                        Mybutton(
                          title: '/',
                          color: Colors.orange,
                          onpress: () {
                           userInput = '/';
                            setState(() {
                              
                            });   
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Mybutton(
                          title: '7',
                          onpress: () {
                           userInput = '7';
                           setState(() {
                             
                           });
                          },
                        ),
                        Mybutton(
                          title: '8',
                          onpress: () {
                            userInput += '8';
                            setState(() {
                              
                            });
                          },
                        ),
                        Mybutton(
                          title: '9',
                          onpress: () {
                            userInput += '9';
                            setState(() {
                              
                            });
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
                           userInput += '4';
                            setState(() {
                              
                            });
                          },
                        ),
                        Mybutton(
                          title: '5',
                          onpress: () {
                            userInput += '5';
                            setState(() {
                              
                            });
                          },
                        ),
                        Mybutton(
                          title: '6',
                          onpress: () {
                            userInput += '6';
                            setState(() {
                              
                            });
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
                            userInput += '1';
                            setState(() {
                              
                            });
                          },
                        ),
                        Mybutton(
                          title: '2',
                          onpress: () {
                            userInput += '2';
                            setState(() {
                              
                            });
                          },
                        ),
                        Mybutton(
                          title: '3',
                          onpress: () {
                            userInput += '3';
                            setState(() {
                              
                            });
                          },
                        ),
                        Mybutton(
                          title: '+',
                          color: Colors.orange,
                          onpress: () {
                            userInput = '+';  
                            setState(() {
                              
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Mybutton(
                          title: '0',
                          onpress: () {
                            userInput += '0';
                            setState(() {
                              
                            });
                          },
                        ),
                        Mybutton(
                          title: '.',
                          onpress: () {
                            userInput += '.';
                            setState(() {
                              
                            });
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
                            userInput += '=';
                            setState(() { 
                              
                            });
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
