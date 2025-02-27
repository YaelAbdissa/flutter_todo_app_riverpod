import 'package:flutter/material.dart';

class CircleContainer extends StatelessWidget {
  final Color color;
  final Color borderColor;
  final Widget child;

  const CircleContainer({
    super.key,
    required this.color,
    required this.child,
    required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.00),
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        border: Border.all(
          color: borderColor,
          width: 2,
        ),
      ),
      child: child,
    );
  }
}
