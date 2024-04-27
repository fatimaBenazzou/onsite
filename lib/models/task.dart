import 'package:flutter/material.dart';
import 'package:onsite/Core/theme/AppTheme.dart';

enum Status { pending, done }

enum Priority { low, medium, high }

enum ValidationType { file, picture, none }

Map<Color, Priority> priorityColors = {
  AppColors.successState: Priority.low,
  Colors.orange: Priority.medium,
  AppColors.errorState: Priority.high,
};
Map<Color, Status> statusColor = {
  AppColors.successState: Status.done,
  Colors.orange: Status.pending,
};

class Task {
  const Task({
    required this.id,
    required this.name,
    required this.projectId,
    required this.status,
    required this.validationType,
    required this.endTime,
    required this.startTime,
    required this.deadline,
    required this.priority,
  });

  final String id;
  final String name;
  final String projectId;
  final Status status;
  final ValidationType validationType;
  final DateTime endTime;
  final DateTime startTime;
  final DateTime deadline;
  final Priority priority;

  Color getColorForPriority(Priority priority) {
    return priorityColors.entries
        .firstWhere((entry) => entry.value == priority)
        .key;
  }

  Color getColorForStatus(Status status) {
    return statusColor.entries.firstWhere((entry) => entry.value == status).key;
  }

  String get priorityAsString {
    switch (priorityColors[this.getColorForPriority(priority)]) {
      case Priority.low:
        return 'Low';
      case Priority.medium:
        return 'Medium';
      case Priority.high:
        return 'High';
      default:
        return '';
    }
  }

  String get statusAsString {
    switch (statusColor[this.getColorForStatus(status)]) {
      case Status.done:
        return 'Done';
      case Status.pending:
        return 'Pending';

      default:
        return '';
    }
  }
}
