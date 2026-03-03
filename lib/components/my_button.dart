import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  final String title;
  final Color color;
  // final String subtitle;
  const Mybutton({super.key,  required this.title , this.color = Colors.grey,});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
        height: 80,
        child: Center(
          child: Text(title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
          ),
        ),
      ),
    );
  }
}
