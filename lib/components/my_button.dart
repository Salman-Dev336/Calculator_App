import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  final String title;
  // final String subtitle;
  const Mybutton({super.key,  this.title = '', });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.orange,
        shape: BoxShape.circle,
      ),
      height: 50,
      child: Center(
        child: Text('1'),
      ),
    );
  }
}
