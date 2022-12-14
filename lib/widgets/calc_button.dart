import 'package:flutter/material.dart';

class CalcBtn extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const CalcBtn({Key? key, required this.text, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40.0),
          color: Colors.grey.withOpacity(0.6),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              height: 1.8,
            ),
          ),
        ),
      ),
    );
  }
}
