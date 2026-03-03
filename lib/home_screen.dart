// ignore_for_file: unused_local_variable, avoid_print, unused_import, sized_box_for_whitespace, sort_child_properties_last

import 'package:calculator_app/components/my_button.dart';
import 'package:calculator_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

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
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(userInput.toString(), 
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                        ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
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
                          if (userInput.startsWith('-')) {
  userInput = userInput.substring(1);
} else {
  userInput = '-' + userInput;
}
setState(() {});
                            setState(() {
                              
                            });
                          },
                        ),
                        Mybutton(
                          title: '%',
                          onpress: () {
                            userInput += '%';
                            setState(() {
                              
                            });
                          },
                        ),
                        Mybutton(
                          title: '/',
                          color: Colors.orange,
                          onpress: () {
                           userInput += '/';
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
                           userInput += '7';
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
                           userInput += 'x';
                            setState(() {
                              
                            });
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
                            userInput += '-';
                            setState(() {
                              
                            });
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
                            userInput += '+';  
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
                            if (userInput.isNotEmpty) {
  userInput = userInput.substring(0, userInput.length - 1);
}
setState(() {});
                            setState(() {   
                              
                            });
                          },
                        ),
                        Mybutton(
                          title: '=',
                          color: Colors.orange,
                          onpress: () {
                         
                            equalPress();
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
 void equalPress() {
  try {
    String finalInput = userInput;

    // Replace x with *
    finalInput = finalInput.replaceAll('x', '*');

    GrammarParser p = GrammarParser();
    Expression exp = p.parse(finalInput);

    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);

    answer = eval.toString();
  } catch (e) {
    answer = "Error";
  }

  setState(() {});
}
}
