import 'package:equatable/equatable.dart';

import '../../utils/utils.dart';

class Task extends Equatable {
  final int? id;
  final String title;
  final String note;
  final String date;
  final String time;
  final TaskCategory category;
  final bool isCompleted;

  const Task({
    this.id,
    required this.title,
    required this.note,
    required this.date,
    required this.time,
    required this.category,
    required this.isCompleted,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        id!,
        title,
        note,
        date,
        time,
        isCompleted,
      ];
}
