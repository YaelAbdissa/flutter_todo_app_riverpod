import 'package:flutter/material.dart';
import 'package:flutter_riverpod_project/widgets/widgets.dart';
import '/utils/utils.dart';

import '/data/data.dart';

class TaskTile extends StatelessWidget {
  final Task task;
  final Function(bool?) onCompleted;
  const TaskTile({
    super.key,
    required this.task,
    required this.onCompleted,
  });

  @override
  Widget build(BuildContext context) {
    final textDecoration =
        task.isCompleted ? TextDecoration.lineThrough : TextDecoration.none;
    final fontWeight = task.isCompleted ? FontWeight.normal : FontWeight.bold;
    final int iconOpacity = task.isCompleted ? 78 : 150;
    final int backgroundOpacity = task.isCompleted ? 40 : 78;
    return ListTile(
      onLongPress: () {
        // TODO:  delete the task
      },
      onTap: () async {
        await showModalBottomSheet(
            context: context,
            builder: (context) {
              return TaskDetail(
                task: task,
              );
            });
      },
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            task.title,
            style: context.textTheme.headlineSmall?.copyWith(
              fontSize: 20,
              fontWeight: fontWeight,
              decoration: textDecoration,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Text(
            task.time,
            style: context.textTheme.headlineSmall?.copyWith(
              fontSize: 14,
            ),
          ),
        ],
      ),
      leading: CircleContainer(
        color: task.category.color.withAlpha(backgroundOpacity),
        borderColor: task.category.color.withAlpha(iconOpacity),
        child: Icon(
          task.category.icon,
          color: task.category.color.withAlpha(iconOpacity),
        ),
      ),
      trailing: Checkbox(
        value: task.isCompleted,
        checkColor: context.colorScheme.surface,
        onChanged: onCompleted,
      ),
    );
  }
}
