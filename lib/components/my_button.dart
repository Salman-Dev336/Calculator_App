import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onpress;
  // final String subtitle;
  const Mybutton({super.key,  required this.title , this.color = Colors.grey, required this.onpress});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onpress,
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
      ),
    );
  }
}
