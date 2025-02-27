import 'package:flutter/material.dart';
import '/screen/screens.dart';
import '/config/config.dart';

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.light,
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
