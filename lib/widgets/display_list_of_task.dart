import 'package:flutter/material.dart';
import 'package:flutter_riverpod_project/data/data.dart';
import 'package:flutter_riverpod_project/utils/utils.dart';

import 'widgets.dart';

class DisplayListOfTasks extends StatelessWidget {
  final List<Task> tasks;
  final bool isCompletedTasks;
  const DisplayListOfTasks({
    super.key,
    required this.tasks,
    this.isCompletedTasks = false,
  });

  @override
  Widget build(BuildContext context) {
    final deviceSize = context.deviceSize;
    final emptyTasksAlert = isCompletedTasks
        ? 'There is no completed task yet'
        : 'There is no task to todo!';
    return CommonContainer(
      height:
          isCompletedTasks ? deviceSize.height * 0.27 : deviceSize.height * 0.3,
      child: tasks.isEmpty
          ? Center(
              child: Text(
                emptyTasksAlert,
                style: context.textTheme.headlineSmall,
              ),
            )
          : ListView.separated(
              itemCount: tasks.length,
              shrinkWrap: true,
              separatorBuilder: (context, index) => Divider(
                thickness: 1.5,
              ),
              itemBuilder: (context, index) {
                final task = tasks[index];
                return TaskTile(
                  task: task,
                  onCompleted: (checkboxValue) {},
                );
              },
            ),
    );
  }
}
