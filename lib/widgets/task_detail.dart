import 'package:flutter/material.dart';
import 'package:flutter_riverpod_project/utils/utils.dart';
import 'package:gap/gap.dart';

import '../data/data.dart';
import 'widgets.dart';

class TaskDetail extends StatelessWidget {
  final Task task;
  const TaskDetail({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    final int iconOpacity = task.isCompleted ? 78 : 150;
    final int backgroundOpacity = task.isCompleted ? 40 : 78;
    return Container(
      padding: EdgeInsets.all(20.00),
      width: context.deviceSize.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleContainer(
            color: task.category.color.withAlpha(backgroundOpacity),
            borderColor: task.category.color.withAlpha(iconOpacity),
            child: Icon(
              task.category.icon,
              color: task.category.color.withAlpha(iconOpacity),
            ),
          ),
          Gap(16),
          Text(
            task.title,
            style: context.textTheme.titleMedium?.copyWith(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          // Gap(6),
          Text(
            task.time,
            style: context.textTheme.titleMedium?.copyWith(),
          ),
          Gap(16),
          Visibility(
            visible: !task.isCompleted,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Task to be completed on ${task.date}",
                  style: context.textTheme.headlineSmall?.copyWith(
                    fontSize: 14,
                  ),
                ),
                Icon(
                  Icons.check_box,
                  color: task.category.color,
                )
              ],
            ),
          ),
          Gap(16),
          Divider(
            thickness: 1.5,
            color: task.category.color,
          ),
          Text(
            task.note.isEmpty ? "There is no additional note" : task.note,
            style: context.textTheme.titleMedium?.copyWith(),
          ),
          Visibility(
            visible: task.isCompleted,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Task completed on ${task.date}",
                  style: context.textTheme.headlineSmall?.copyWith(
                    fontSize: 14,
                  ),
                ),
                Icon(
                  Icons.check_box,
                  color: Colors.green,
                )
              ],
            ),
          ),
          Spacer(),
          Text(
            task.category.name,
            style: context.textTheme.titleMedium?.copyWith(
              fontSize: 14,
              color: task.category.color,
            ),
          ),
        ],
      ),
    );
  }
}
