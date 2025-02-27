import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/widgets.dart';

class AddTaskScreen extends StatelessWidget {
  static AddTaskScreen builder(BuildContext context, GoRouterState state) =>
      const AddTaskScreen();
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: DisplayWhiteText(
          text: 'Add New Task',
        ),
      ),
      body: Center(
        child: Text('Add Task Screen'),
      ),
    );
  }
}
