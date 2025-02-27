import 'package:flutter/material.dart';
import 'package:flutter_riverpod_project/utils/utils.dart';

class CommonContainer extends StatelessWidget {
  final Widget child;
  final double height;
  const CommonContainer({
    super.key,
    required this.child,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.deviceSize.width,
      height: height,
      decoration: BoxDecoration(
        color: context.colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }
}
